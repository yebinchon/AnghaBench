
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct wlandevice {int dummy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wlandevice* ml_priv; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ NUM_WEPKEYS ;
 int didmib_dot11smt_wepdefaultkeystable_key (scalar_t__) ;
 int prism2_domibset_pstr32 (struct wlandevice*,int ,int,char*) ;

__attribute__((used)) static int prism2_del_key(struct wiphy *wiphy, struct net_device *dev,
     u8 key_index, bool pairwise, const u8 *mac_addr)
{
 struct wlandevice *wlandev = dev->ml_priv;
 u32 did;
 int err = 0;
 int result = 0;





 if (key_index >= NUM_WEPKEYS)
  return -EINVAL;


 did = didmib_dot11smt_wepdefaultkeystable_key(key_index + 1);
 result = prism2_domibset_pstr32(wlandev, did, 13, "0000000000000");

 if (result)
  err = -EFAULT;

 return err;
}
