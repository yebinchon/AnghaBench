
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00lib_crypto {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int rt61pci_config_shared_key(struct rt2x00_dev *rt2x00dev,
         struct rt2x00lib_crypto *crypto,
         struct ieee80211_key_conf *key)
{





 return -EOPNOTSUPP;
}
