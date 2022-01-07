
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQF_PROBE_SHARED ;
 int free_irq (int,int ) ;
 int pd6729_test ;
 int request_irq (int,int ,int ,char*,int ) ;

__attribute__((used)) static int pd6729_check_irq(int irq)
{
 int ret;

 ret = request_irq(irq, pd6729_test, IRQF_PROBE_SHARED, "x",
     pd6729_test);
 if (ret)
  return -1;

 free_irq(irq, pd6729_test);
 return 0;
}
