
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_handle_irq (int) ;
 int get_evtchn_to_irq (unsigned int) ;

__attribute__((used)) static void handle_irq_for_port(unsigned port)
{
 int irq;

 irq = get_evtchn_to_irq(port);
 if (irq != -1)
  generic_handle_irq(irq);
}
