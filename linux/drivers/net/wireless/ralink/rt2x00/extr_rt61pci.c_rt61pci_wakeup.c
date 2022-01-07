
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00lib_conf {int * conf; } ;
struct rt2x00_dev {TYPE_1__* hw; } ;
struct TYPE_2__ {int conf; } ;


 int IEEE80211_CONF_CHANGE_PS ;
 int rt61pci_config (struct rt2x00_dev*,struct rt2x00lib_conf*,int ) ;

__attribute__((used)) static void rt61pci_wakeup(struct rt2x00_dev *rt2x00dev)
{
 struct rt2x00lib_conf libconf = { .conf = &rt2x00dev->hw->conf };

 rt61pci_config(rt2x00dev, &libconf, IEEE80211_CONF_CHANGE_PS);
}
