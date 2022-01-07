
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_unmask {unsigned int port; } ;
typedef int event_word_t ;


 int BUG_ON (int) ;
 int EVTCHNOP_unmask ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_unmask*) ;
 int clear_masked (int *) ;
 int * event_word_from_port (unsigned int) ;
 scalar_t__ evtchn_fifo_is_pending (unsigned int) ;
 int irqs_disabled () ;

__attribute__((used)) static void evtchn_fifo_unmask(unsigned port)
{
 event_word_t *word = event_word_from_port(port);

 BUG_ON(!irqs_disabled());

 clear_masked(word);
 if (evtchn_fifo_is_pending(port)) {
  struct evtchn_unmask unmask = { .port = port };
  (void)HYPERVISOR_event_channel_op(EVTCHNOP_unmask, &unmask);
 }
}
