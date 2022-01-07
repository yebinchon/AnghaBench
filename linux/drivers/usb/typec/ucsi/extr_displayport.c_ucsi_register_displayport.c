
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucsi_dp {int override; int offset; struct typec_altmode* alt; struct ucsi_connector* con; int work; } ;
struct ucsi_connector {int port; } ;
struct typec_altmode_desc {int vdo; } ;
struct typec_altmode {int * ops; int dev; } ;


 int BIT (int ) ;
 int DP_CAP_DP_SIGNALING ;
 int DP_CAP_RECEPTACLE ;
 int DP_PIN_ASSIGN_C ;
 int DP_PIN_ASSIGN_D ;
 int DP_PIN_ASSIGN_E ;
 int ENOMEM ;
 struct typec_altmode* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct typec_altmode*) ;
 struct ucsi_dp* devm_kzalloc (int *,int,int ) ;
 int typec_altmode_set_drvdata (struct typec_altmode*,struct ucsi_dp*) ;
 struct typec_altmode* typec_port_register_altmode (int ,struct typec_altmode_desc*) ;
 int typec_unregister_altmode (struct typec_altmode*) ;
 int ucsi_displayport_ops ;
 int ucsi_displayport_work ;

struct typec_altmode *ucsi_register_displayport(struct ucsi_connector *con,
      bool override, int offset,
      struct typec_altmode_desc *desc)
{
 u8 all_assignments = BIT(DP_PIN_ASSIGN_C) | BIT(DP_PIN_ASSIGN_D) |
        BIT(DP_PIN_ASSIGN_E);
 struct typec_altmode *alt;
 struct ucsi_dp *dp;


 desc->vdo |= DP_CAP_DP_SIGNALING | DP_CAP_RECEPTACLE;


 desc->vdo |= all_assignments << 8;
 desc->vdo |= all_assignments << 16;

 alt = typec_port_register_altmode(con->port, desc);
 if (IS_ERR(alt))
  return alt;

 dp = devm_kzalloc(&alt->dev, sizeof(*dp), GFP_KERNEL);
 if (!dp) {
  typec_unregister_altmode(alt);
  return ERR_PTR(-ENOMEM);
 }

 INIT_WORK(&dp->work, ucsi_displayport_work);
 dp->override = override;
 dp->offset = offset;
 dp->con = con;
 dp->alt = alt;

 alt->ops = &ucsi_displayport_ops;
 typec_altmode_set_drvdata(alt, dp);

 return alt;
}
