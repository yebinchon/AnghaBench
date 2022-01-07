
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_fifo_control_block {int ready; } ;


 int EVTCHN_FIFO_MAX_QUEUES ;
 int consume_one_event (unsigned int,struct evtchn_fifo_control_block*,unsigned int,unsigned long*,int) ;
 int cpu_control_block ;
 unsigned int find_first_bit (unsigned long*,int ) ;
 struct evtchn_fifo_control_block* per_cpu (int ,unsigned int) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static void __evtchn_fifo_handle_events(unsigned cpu, bool drop)
{
 struct evtchn_fifo_control_block *control_block;
 unsigned long ready;
 unsigned q;

 control_block = per_cpu(cpu_control_block, cpu);

 ready = xchg(&control_block->ready, 0);

 while (ready) {
  q = find_first_bit(&ready, EVTCHN_FIFO_MAX_QUEUES);
  consume_one_event(cpu, control_block, q, &ready, drop);
  ready |= xchg(&control_block->ready, 0);
 }
}
