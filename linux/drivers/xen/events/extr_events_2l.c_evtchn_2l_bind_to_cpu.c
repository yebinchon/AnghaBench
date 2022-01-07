
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {unsigned int cpu; int evtchn; } ;


 int BM (int ) ;
 int clear_bit (int ,int ) ;
 int cpu_evtchn_mask ;
 int per_cpu (int ,unsigned int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void evtchn_2l_bind_to_cpu(struct irq_info *info, unsigned cpu)
{
 clear_bit(info->evtchn, BM(per_cpu(cpu_evtchn_mask, info->cpu)));
 set_bit(info->evtchn, BM(per_cpu(cpu_evtchn_mask, cpu)));
}
