
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf_device {scalar_t__ switch_name; scalar_t__ fabric_name; scalar_t__ fc_map; int mac; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;

__attribute__((used)) static int fcoe_fcf_device_match(struct fcoe_fcf_device *new,
     struct fcoe_fcf_device *old)
{
 if (new->switch_name == old->switch_name &&
     new->fabric_name == old->fabric_name &&
     new->fc_map == old->fc_map &&
     ether_addr_equal(new->mac, old->mac))
  return 1;
 return 0;
}
