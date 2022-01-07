
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicpti {int swsreg; int qpti_id; scalar_t__ differential; int sreg; } ;


 int SREG_DSENSE ;
 int SREG_FUSE ;
 int SREG_TPOWER ;
 int printk (char*,int ) ;
 int sbus_readb (int ) ;

__attribute__((used)) static int qlogicpti_verify_tmon(struct qlogicpti *qpti)
{
 int curstat = sbus_readb(qpti->sreg);

 curstat &= 0xf0;
 if (!(curstat & SREG_FUSE) && (qpti->swsreg & SREG_FUSE))
  printk("qlogicpti%d: Fuse returned to normal state.\n", qpti->qpti_id);
 if (!(curstat & SREG_TPOWER) && (qpti->swsreg & SREG_TPOWER))
  printk("qlogicpti%d: termpwr back to normal state.\n", qpti->qpti_id);
 if (curstat != qpti->swsreg) {
  int error = 0;
  if (curstat & SREG_FUSE) {
   error++;
   printk("qlogicpti%d: Fuse is open!\n", qpti->qpti_id);
  }
  if (curstat & SREG_TPOWER) {
   error++;
   printk("qlogicpti%d: termpwr failure\n", qpti->qpti_id);
  }
  if (qpti->differential &&
      (curstat & SREG_DSENSE) != SREG_DSENSE) {
   error++;
   printk("qlogicpti%d: You have a single ended device on a "
          "differential bus!  Please fix!\n", qpti->qpti_id);
  }
  qpti->swsreg = curstat;
  return error;
 }
 return 0;
}
