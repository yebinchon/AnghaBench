
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int * mpcg; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,char*) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_ERROR ;
 char* MPC_DEVICE_NAME ;
 int MPC_ERROR ;
 struct net_device* __dev_get_by_name (int *,char*) ;
 int init_net ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static struct net_device *ctcmpc_get_dev(int port_num)
{
 char device[20];
 struct net_device *dev;
 struct ctcm_priv *priv;

 sprintf(device, "%s%i", MPC_DEVICE_NAME, port_num);

 dev = __dev_get_by_name(&init_net, device);

 if (dev == ((void*)0)) {
  CTCM_DBF_TEXT_(MPC_ERROR, CTC_DBF_ERROR,
   "%s: Device not found by name: %s",
     CTCM_FUNTAIL, device);
  return ((void*)0);
 }
 priv = dev->ml_priv;
 if (priv == ((void*)0)) {
  CTCM_DBF_TEXT_(MPC_ERROR, CTC_DBF_ERROR,
   "%s(%s): dev->ml_priv is NULL",
     CTCM_FUNTAIL, device);
  return ((void*)0);
 }
 if (priv->mpcg == ((void*)0)) {
  CTCM_DBF_TEXT_(MPC_ERROR, CTC_DBF_ERROR,
   "%s(%s): priv->mpcg is NULL",
     CTCM_FUNTAIL, device);
  return ((void*)0);
 }
 return dev;
}
