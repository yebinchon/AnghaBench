
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_ejtag_fdc_tty {scalar_t__ reg; } ;


 int __raw_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void mips_ejtag_fdc_write(struct mips_ejtag_fdc_tty *priv,
     unsigned int offs, unsigned int data)
{
 __raw_writel(data, priv->reg + offs);
}
