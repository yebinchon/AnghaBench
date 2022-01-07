
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicpti {void* sreg; scalar_t__ is_pti; void* qregs; struct platform_device* op; } ;
struct platform_device {int * resource; } ;


 int ENODEV ;
 void* of_ioremap (int *,int,int,char*) ;
 int printk (char*) ;
 int resource_size (int *) ;

__attribute__((used)) static int qpti_map_regs(struct qlogicpti *qpti)
{
 struct platform_device *op = qpti->op;

 qpti->qregs = of_ioremap(&op->resource[0], 0,
     resource_size(&op->resource[0]),
     "PTI Qlogic/ISP");
 if (!qpti->qregs) {
  printk("PTI: Qlogic/ISP registers are unmappable\n");
  return -ENODEV;
 }
 if (qpti->is_pti) {
  qpti->sreg = of_ioremap(&op->resource[0], (16 * 4096),
     sizeof(unsigned char),
     "PTI Qlogic/ISP statreg");
  if (!qpti->sreg) {
   printk("PTI: Qlogic/ISP status register is unmappable\n");
   return -ENODEV;
  }
 }
 return 0;
}
