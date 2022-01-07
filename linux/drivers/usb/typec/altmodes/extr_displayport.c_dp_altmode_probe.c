
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct typec_altmode {char* desc; int * ops; TYPE_1__ dev; int vdo; } ;
struct dp_altmode {int work; int state; struct typec_altmode* alt; struct typec_altmode const* port; int lock; } ;


 int DP_CAP_DFP_D_PIN_ASSIGN (int ) ;
 int DP_CAP_UFP_D_PIN_ASSIGN (int ) ;
 int DP_STATE_ENTER ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct dp_altmode* devm_kzalloc (TYPE_1__*,int,int ) ;
 int dp_altmode_group ;
 int dp_altmode_ops ;
 int dp_altmode_work ;
 int mutex_init (int *) ;
 int schedule_work (int *) ;
 int sysfs_create_group (int *,int *) ;
 struct typec_altmode* typec_altmode_get_partner (struct typec_altmode*) ;
 int typec_altmode_set_drvdata (struct typec_altmode*,struct dp_altmode*) ;

int dp_altmode_probe(struct typec_altmode *alt)
{
 const struct typec_altmode *port = typec_altmode_get_partner(alt);
 struct dp_altmode *dp;
 int ret;




 if (!(DP_CAP_DFP_D_PIN_ASSIGN(port->vdo) &
       DP_CAP_UFP_D_PIN_ASSIGN(alt->vdo)) &&
     !(DP_CAP_UFP_D_PIN_ASSIGN(port->vdo) &
       DP_CAP_DFP_D_PIN_ASSIGN(alt->vdo)))
  return -ENODEV;

 ret = sysfs_create_group(&alt->dev.kobj, &dp_altmode_group);
 if (ret)
  return ret;

 dp = devm_kzalloc(&alt->dev, sizeof(*dp), GFP_KERNEL);
 if (!dp)
  return -ENOMEM;

 INIT_WORK(&dp->work, dp_altmode_work);
 mutex_init(&dp->lock);
 dp->port = port;
 dp->alt = alt;

 alt->desc = "DisplayPort";
 alt->ops = &dp_altmode_ops;

 typec_altmode_set_drvdata(alt, dp);

 dp->state = DP_STATE_ENTER;
 schedule_work(&dp->work);

 return 0;
}
