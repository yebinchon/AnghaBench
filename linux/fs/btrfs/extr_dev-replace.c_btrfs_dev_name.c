
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int name; int dev_state; } ;


 int BTRFS_DEV_STATE_MISSING ;
 char* rcu_str_deref (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static char* btrfs_dev_name(struct btrfs_device *device)
{
 if (!device || test_bit(BTRFS_DEV_STATE_MISSING, &device->dev_state))
  return "<missing disk>";
 else
  return rcu_str_deref(device->name);
}
