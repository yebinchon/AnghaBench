
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_dev_replace {int replace_state; int is_valid; } ;
int btrfs_dev_replace_is_ongoing(struct btrfs_dev_replace *dev_replace)
{
 if (!dev_replace->is_valid)
  return 0;

 switch (dev_replace->replace_state) {
 case 130:
 case 131:
 case 132:
  return 0;
 case 129:
 case 128:
  break;
 }
 return 1;
}
