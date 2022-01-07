
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct da9150_fg {int dummy; } ;
typedef int irqreturn_t ;


 int DA9150_FG_IRQ_SOC_MASK ;
 int DA9150_QIF_E_FG_STATUS ;
 int DA9150_QIF_E_FG_STATUS_SIZE ;
 int IRQ_HANDLED ;
 int da9150_fg_read_attr (struct da9150_fg*,int ,int ) ;
 int da9150_fg_soc_event_config (struct da9150_fg*) ;
 int da9150_fg_write_attr (struct da9150_fg*,int ,int ,int) ;

__attribute__((used)) static irqreturn_t da9150_fg_irq(int irq, void *data)
{
 struct da9150_fg *fg = data;
 u32 e_fg_status;


 e_fg_status = da9150_fg_read_attr(fg, DA9150_QIF_E_FG_STATUS,
       DA9150_QIF_E_FG_STATUS_SIZE);


 if (e_fg_status & DA9150_FG_IRQ_SOC_MASK)
  da9150_fg_soc_event_config(fg);


 da9150_fg_write_attr(fg, DA9150_QIF_E_FG_STATUS,
        DA9150_QIF_E_FG_STATUS_SIZE, e_fg_status);

 return IRQ_HANDLED;
}
