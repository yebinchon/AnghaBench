
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ucsi_connector {TYPE_2__* ucsi; struct typec_altmode** partner_altmode; int partner; struct typec_altmode** port_altmode; int port; } ;
struct typec_altmode_desc {void* mode; int svid; } ;
struct typec_altmode {int dummy; } ;
struct TYPE_3__ {int features; } ;
struct TYPE_4__ {int dev; TYPE_1__ cap; } ;


 int EINVAL ;
 int IS_ERR (struct typec_altmode*) ;
 int PTR_ERR (struct typec_altmode*) ;
 int UCSI_CAP_ALT_MODE_OVERRIDE ;




 int dev_err (int ,char*,int ,void*) ;
 int trace_ucsi_register_altmode (int,struct typec_altmode*) ;
 struct typec_altmode* typec_partner_register_altmode (int ,struct typec_altmode_desc*) ;
 struct typec_altmode* typec_port_register_altmode (int ,struct typec_altmode_desc*) ;
 void* ucsi_altmode_next_mode (struct typec_altmode**,int ) ;
 int ucsi_next_altmode (struct typec_altmode**) ;
 struct typec_altmode* ucsi_register_displayport (struct ucsi_connector*,int,int,struct typec_altmode_desc*) ;

__attribute__((used)) static int ucsi_register_altmode(struct ucsi_connector *con,
     struct typec_altmode_desc *desc,
     u8 recipient)
{
 struct typec_altmode *alt;
 bool override;
 int ret;
 int i;

 override = !!(con->ucsi->cap.features & UCSI_CAP_ALT_MODE_OVERRIDE);

 switch (recipient) {
 case 131:
  i = ucsi_next_altmode(con->port_altmode);
  if (i < 0) {
   ret = i;
   goto err;
  }

  desc->mode = ucsi_altmode_next_mode(con->port_altmode,
          desc->svid);

  switch (desc->svid) {
  case 129:
  case 128:
   alt = ucsi_register_displayport(con, override, i, desc);
   break;
  default:
   alt = typec_port_register_altmode(con->port, desc);
   break;
  }

  if (IS_ERR(alt)) {
   ret = PTR_ERR(alt);
   goto err;
  }

  con->port_altmode[i] = alt;
  break;
 case 130:
  i = ucsi_next_altmode(con->partner_altmode);
  if (i < 0) {
   ret = i;
   goto err;
  }

  desc->mode = ucsi_altmode_next_mode(con->partner_altmode,
          desc->svid);

  alt = typec_partner_register_altmode(con->partner, desc);
  if (IS_ERR(alt)) {
   ret = PTR_ERR(alt);
   goto err;
  }

  con->partner_altmode[i] = alt;
  break;
 default:
  return -EINVAL;
 }

 trace_ucsi_register_altmode(recipient, alt);

 return 0;

err:
 dev_err(con->ucsi->dev, "failed to registers svid 0x%04x mode %d\n",
  desc->svid, desc->mode);

 return ret;
}
