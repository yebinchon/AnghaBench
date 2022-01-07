
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_ejtag_fdc_tty {scalar_t__ reg; } ;


 unsigned int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int mips_ejtag_fdc_read(struct mips_ejtag_fdc_tty *priv,
            unsigned int offs)
{
 return __raw_readl(priv->reg + offs);
}
