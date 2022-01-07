
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {struct cumanascsi2_info* irq_data; } ;
struct cumanascsi2_info {scalar_t__ base; } ;


 int ALATCH_ENA_INT ;
 scalar_t__ CUMANASCSI2_ALATCH ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void
cumanascsi_2_irqenable(struct expansion_card *ec, int irqnr)
{
 struct cumanascsi2_info *info = ec->irq_data;
 writeb(ALATCH_ENA_INT, info->base + CUMANASCSI2_ALATCH);
}
