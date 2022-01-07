
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;
struct ad7192_state {int mode; int sd; } ;
typedef enum ad_sigma_delta_mode { ____Placeholder_ad_sigma_delta_mode } ad_sigma_delta_mode ;


 int AD7192_MODE_SEL (int) ;
 int AD7192_MODE_SEL_MASK ;
 int AD7192_REG_MODE ;
 int ad_sd_write_reg (int *,int ,int,int ) ;
 struct ad7192_state* ad_sigma_delta_to_ad7192 (struct ad_sigma_delta*) ;

__attribute__((used)) static int ad7192_set_mode(struct ad_sigma_delta *sd,
      enum ad_sigma_delta_mode mode)
{
 struct ad7192_state *st = ad_sigma_delta_to_ad7192(sd);

 st->mode &= ~AD7192_MODE_SEL_MASK;
 st->mode |= AD7192_MODE_SEL(mode);

 return ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
}
