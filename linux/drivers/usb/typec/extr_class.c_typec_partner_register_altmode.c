
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_partner {int dev; } ;
struct typec_altmode_desc {int dummy; } ;
struct typec_altmode {int dummy; } ;


 struct typec_altmode* typec_register_altmode (int *,struct typec_altmode_desc const*) ;

struct typec_altmode *
typec_partner_register_altmode(struct typec_partner *partner,
          const struct typec_altmode_desc *desc)
{
 return typec_register_altmode(&partner->dev, desc);
}
