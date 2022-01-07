
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int bind_interdomain_evtchn_to_irq (unsigned int,unsigned int) ;
 int request_irq (int,int ,unsigned long,char const*,void*) ;
 int unbind_from_irq (int) ;

int bind_interdomain_evtchn_to_irqhandler(unsigned int remote_domain,
       unsigned int remote_port,
       irq_handler_t handler,
       unsigned long irqflags,
       const char *devname,
       void *dev_id)
{
 int irq, retval;

 irq = bind_interdomain_evtchn_to_irq(remote_domain, remote_port);
 if (irq < 0)
  return irq;

 retval = request_irq(irq, handler, irqflags, devname, dev_id);
 if (retval != 0) {
  unbind_from_irq(irq);
  return retval;
 }

 return irq;
}
