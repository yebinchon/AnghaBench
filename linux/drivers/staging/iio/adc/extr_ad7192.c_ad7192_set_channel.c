
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;
struct ad7192_state {int conf; int sd; } ;


 int AD7192_CONF_CHAN (unsigned int) ;
 int AD7192_CONF_CHAN_MASK ;
 int AD7192_REG_CONF ;
 int ad_sd_write_reg (int *,int ,int,int ) ;
 struct ad7192_state* ad_sigma_delta_to_ad7192 (struct ad_sigma_delta*) ;

__attribute__((used)) static int ad7192_set_channel(struct ad_sigma_delta *sd, unsigned int channel)
{
 struct ad7192_state *st = ad_sigma_delta_to_ad7192(sd);

 st->conf &= ~AD7192_CONF_CHAN_MASK;
 st->conf |= AD7192_CONF_CHAN(channel);

 return ad_sd_write_reg(&st->sd, AD7192_REG_CONF, 3, st->conf);
}
