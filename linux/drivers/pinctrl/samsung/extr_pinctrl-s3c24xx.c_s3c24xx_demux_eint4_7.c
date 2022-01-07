
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int s3c24xx_demux_eint (struct irq_desc*,int ,int) ;

__attribute__((used)) static void s3c24xx_demux_eint4_7(struct irq_desc *desc)
{
 s3c24xx_demux_eint(desc, 0, 0xf0);
}
