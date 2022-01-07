
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int fsm; } ;


 int CTCMY_DBF_DEV_NAME (int ,struct net_device*,char*) ;
 int DEV_EVENT_STOP ;
 int IS_MPC (struct ctcm_priv*) ;
 int SETUP ;
 int fsm_event (int ,int ,struct net_device*) ;

int ctcm_close(struct net_device *dev)
{
 struct ctcm_priv *priv = dev->ml_priv;

 CTCMY_DBF_DEV_NAME(SETUP, dev, "");
 if (!IS_MPC(priv))
  fsm_event(priv->fsm, DEV_EVENT_STOP, dev);
 return 0;
}
