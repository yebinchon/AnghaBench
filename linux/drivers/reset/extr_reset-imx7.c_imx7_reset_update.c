
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_src_signal {int bit; int offset; } ;
struct imx7_src {int regmap; struct imx7_src_signal* signals; } ;


 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int imx7_reset_update(struct imx7_src *imx7src,
        unsigned long id, unsigned int value)
{
 const struct imx7_src_signal *signal = &imx7src->signals[id];

 return regmap_update_bits(imx7src->regmap,
      signal->offset, signal->bit, value);
}
