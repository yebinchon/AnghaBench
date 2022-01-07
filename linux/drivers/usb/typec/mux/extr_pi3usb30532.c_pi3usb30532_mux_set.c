
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct typec_mux {int dummy; } ;
struct pi3usb30532 {int conf; int lock; } ;


 int PI3USB30532_CONF_4LANE_DP ;
 int PI3USB30532_CONF_OPEN ;
 int PI3USB30532_CONF_SWAP ;
 int PI3USB30532_CONF_USB3 ;
 int PI3USB30532_CONF_USB3_AND_2LANE_DP ;





 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pi3usb30532_set_conf (struct pi3usb30532*,int) ;
 struct pi3usb30532* typec_mux_get_drvdata (struct typec_mux*) ;

__attribute__((used)) static int pi3usb30532_mux_set(struct typec_mux *mux, int state)
{
 struct pi3usb30532 *pi = typec_mux_get_drvdata(mux);
 u8 new_conf;
 int ret;

 mutex_lock(&pi->lock);
 new_conf = pi->conf;

 switch (state) {
 case 129:
  new_conf = (new_conf & PI3USB30532_CONF_SWAP) |
      PI3USB30532_CONF_OPEN;
  break;
 case 128:
  new_conf = (new_conf & PI3USB30532_CONF_SWAP) |
      PI3USB30532_CONF_USB3;
  break;
 case 132:
 case 130:
  new_conf = (new_conf & PI3USB30532_CONF_SWAP) |
      PI3USB30532_CONF_4LANE_DP;
  break;
 case 131:
  new_conf = (new_conf & PI3USB30532_CONF_SWAP) |
      PI3USB30532_CONF_USB3_AND_2LANE_DP;
  break;
 default:
  break;
 }

 ret = pi3usb30532_set_conf(pi, new_conf);
 mutex_unlock(&pi->lock);

 return ret;
}
