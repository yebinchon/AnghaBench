
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct typec_switch {int dummy; } ;
struct pi3usb30532 {int lock; int conf; } ;
typedef enum typec_orientation { ____Placeholder_typec_orientation } typec_orientation ;


 int PI3USB30532_CONF_OPEN ;
 int PI3USB30532_CONF_SWAP ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pi3usb30532_set_conf (struct pi3usb30532*,int ) ;
 struct pi3usb30532* typec_switch_get_drvdata (struct typec_switch*) ;

__attribute__((used)) static int pi3usb30532_sw_set(struct typec_switch *sw,
         enum typec_orientation orientation)
{
 struct pi3usb30532 *pi = typec_switch_get_drvdata(sw);
 u8 new_conf;
 int ret;

 mutex_lock(&pi->lock);
 new_conf = pi->conf;

 switch (orientation) {
 case 130:
  new_conf = PI3USB30532_CONF_OPEN;
  break;
 case 129:
  new_conf &= ~PI3USB30532_CONF_SWAP;
  break;
 case 128:
  new_conf |= PI3USB30532_CONF_SWAP;
  break;
 }

 ret = pi3usb30532_set_conf(pi, new_conf);
 mutex_unlock(&pi->lock);

 return ret;
}
