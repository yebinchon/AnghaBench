
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_isr_data {int mask; int arg; int (* isr ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static void dsi_call_isrs(struct dsi_isr_data *isr_array,
  unsigned isr_array_size, u32 irqstatus)
{
 struct dsi_isr_data *isr_data;
 int i;

 for (i = 0; i < isr_array_size; i++) {
  isr_data = &isr_array[i];
  if (isr_data->isr && isr_data->mask & irqstatus)
   isr_data->isr(isr_data->arg, irqstatus);
 }
}
