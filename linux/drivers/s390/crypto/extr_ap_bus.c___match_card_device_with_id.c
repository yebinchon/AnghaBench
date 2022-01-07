
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int id; } ;


 scalar_t__ is_card_dev (struct device*) ;
 TYPE_1__* to_ap_card (struct device*) ;

__attribute__((used)) static int __match_card_device_with_id(struct device *dev, const void *data)
{
 return is_card_dev(dev) && to_ap_card(dev)->id == (int)(long)(void *) data;
}
