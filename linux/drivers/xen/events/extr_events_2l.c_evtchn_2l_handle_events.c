
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xen_ulong_t ;
struct vcpu_info {int evtchn_pending_sel; } ;
struct shared_info {int dummy; } ;


 int BITS_PER_EVTCHN_WORD ;
 unsigned int BITS_PER_LONG ;
 int EVTCHN_FIRST_BIT (scalar_t__) ;
 struct shared_info* HYPERVISOR_shared_info ;
 scalar_t__ MASK_LSBS (scalar_t__,int) ;
 int VIRQ_TIMER ;
 void* __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 unsigned long long active_evtchns (unsigned int,struct shared_info*,int) ;
 int current_bit_idx ;
 int current_word_idx ;
 unsigned int evtchn_from_irq (int) ;
 int generic_handle_irq (int) ;
 int get_evtchn_to_irq (int) ;
 int irq_from_virq (unsigned int,int ) ;
 scalar_t__ xchg_xen_ulong (int *,int ) ;
 int xen_vcpu ;

__attribute__((used)) static void evtchn_2l_handle_events(unsigned cpu)
{
 int irq;
 xen_ulong_t pending_words;
 xen_ulong_t pending_bits;
 int start_word_idx, start_bit_idx;
 int word_idx, bit_idx;
 int i;
 struct shared_info *s = HYPERVISOR_shared_info;
 struct vcpu_info *vcpu_info = __this_cpu_read(xen_vcpu);


 irq = irq_from_virq(cpu, VIRQ_TIMER);
 if (irq != -1) {
  unsigned int evtchn = evtchn_from_irq(irq);
  word_idx = evtchn / BITS_PER_LONG;
  bit_idx = evtchn % BITS_PER_LONG;
  if (active_evtchns(cpu, s, word_idx) & (1ULL << bit_idx))
   generic_handle_irq(irq);
 }






 pending_words = xchg_xen_ulong(&vcpu_info->evtchn_pending_sel, 0);

 start_word_idx = __this_cpu_read(current_word_idx);
 start_bit_idx = __this_cpu_read(current_bit_idx);

 word_idx = start_word_idx;

 for (i = 0; pending_words != 0; i++) {
  xen_ulong_t words;

  words = MASK_LSBS(pending_words, word_idx);




  if (words == 0) {
   word_idx = 0;
   bit_idx = 0;
   continue;
  }
  word_idx = EVTCHN_FIRST_BIT(words);

  pending_bits = active_evtchns(cpu, s, word_idx);
  bit_idx = 0;
  if (word_idx == start_word_idx) {
   if (i == 0)
    bit_idx = start_bit_idx;
  }

  do {
   xen_ulong_t bits;
   int port;

   bits = MASK_LSBS(pending_bits, bit_idx);


   if (bits == 0)
    break;

   bit_idx = EVTCHN_FIRST_BIT(bits);


   port = (word_idx * BITS_PER_EVTCHN_WORD) + bit_idx;
   irq = get_evtchn_to_irq(port);

   if (irq != -1)
    generic_handle_irq(irq);

   bit_idx = (bit_idx + 1) % BITS_PER_EVTCHN_WORD;


   __this_cpu_write(current_word_idx,
      bit_idx ? word_idx :
      (word_idx+1) % BITS_PER_EVTCHN_WORD);
   __this_cpu_write(current_bit_idx, bit_idx);
  } while (bit_idx != 0);


  if ((word_idx != start_word_idx) || (i != 0))
   pending_words &= ~(1UL << word_idx);

  word_idx = (word_idx + 1) % BITS_PER_EVTCHN_WORD;
 }
}
