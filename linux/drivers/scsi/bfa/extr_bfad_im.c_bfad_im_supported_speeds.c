
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfa_s {int ioc; } ;
struct TYPE_2__ {scalar_t__ max_speed; scalar_t__ is_mezz; } ;
struct bfa_ioc_attr_s {TYPE_1__ adapter_attr; } ;


 scalar_t__ BFA_PORT_SPEED_10GBPS ;
 scalar_t__ BFA_PORT_SPEED_16GBPS ;
 scalar_t__ BFA_PORT_SPEED_4GBPS ;
 scalar_t__ BFA_PORT_SPEED_8GBPS ;
 int FC_PORTSPEED_10GBIT ;
 int FC_PORTSPEED_16GBIT ;
 int FC_PORTSPEED_1GBIT ;
 int FC_PORTSPEED_2GBIT ;
 int FC_PORTSPEED_4GBIT ;
 int FC_PORTSPEED_8GBIT ;
 int GFP_KERNEL ;
 int bfa_ioc_get_attr (int *,struct bfa_ioc_attr_s*) ;
 int kfree (struct bfa_ioc_attr_s*) ;
 struct bfa_ioc_attr_s* kzalloc (int,int ) ;

u32
bfad_im_supported_speeds(struct bfa_s *bfa)
{
 struct bfa_ioc_attr_s *ioc_attr;
 u32 supported_speed = 0;

 ioc_attr = kzalloc(sizeof(struct bfa_ioc_attr_s), GFP_KERNEL);
 if (!ioc_attr)
  return 0;

 bfa_ioc_get_attr(&bfa->ioc, ioc_attr);
 if (ioc_attr->adapter_attr.max_speed == BFA_PORT_SPEED_16GBPS)
  supported_speed |= FC_PORTSPEED_16GBIT | FC_PORTSPEED_8GBIT |
    FC_PORTSPEED_4GBIT | FC_PORTSPEED_2GBIT;
 else if (ioc_attr->adapter_attr.max_speed == BFA_PORT_SPEED_8GBPS) {
  if (ioc_attr->adapter_attr.is_mezz) {
   supported_speed |= FC_PORTSPEED_8GBIT |
    FC_PORTSPEED_4GBIT |
    FC_PORTSPEED_2GBIT | FC_PORTSPEED_1GBIT;
  } else {
   supported_speed |= FC_PORTSPEED_8GBIT |
    FC_PORTSPEED_4GBIT |
    FC_PORTSPEED_2GBIT;
  }
 } else if (ioc_attr->adapter_attr.max_speed == BFA_PORT_SPEED_4GBPS) {
  supported_speed |= FC_PORTSPEED_4GBIT | FC_PORTSPEED_2GBIT |
    FC_PORTSPEED_1GBIT;
 } else if (ioc_attr->adapter_attr.max_speed == BFA_PORT_SPEED_10GBPS) {
  supported_speed |= FC_PORTSPEED_10GBIT;
 }
 kfree(ioc_attr);
 return supported_speed;
}
