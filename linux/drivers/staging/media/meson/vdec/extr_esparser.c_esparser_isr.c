
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_core {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PARSER_INTSTAT_SC_FOUND ;
 int PARSER_INT_STATUS ;
 int PFIFO_RD_PTR ;
 int PFIFO_WR_PTR ;
 int amvdec_read_parser (struct amvdec_core*,int ) ;
 int amvdec_write_parser (struct amvdec_core*,int ,int) ;
 int search_done ;
 int wake_up_interruptible (int *) ;
 int wq ;

__attribute__((used)) static irqreturn_t esparser_isr(int irq, void *dev)
{
 int int_status;
 struct amvdec_core *core = dev;

 int_status = amvdec_read_parser(core, PARSER_INT_STATUS);
 amvdec_write_parser(core, PARSER_INT_STATUS, int_status);

 if (int_status & PARSER_INTSTAT_SC_FOUND) {
  amvdec_write_parser(core, PFIFO_RD_PTR, 0);
  amvdec_write_parser(core, PFIFO_WR_PTR, 0);
  search_done = 1;
  wake_up_interruptible(&wq);
 }

 return IRQ_HANDLED;
}
