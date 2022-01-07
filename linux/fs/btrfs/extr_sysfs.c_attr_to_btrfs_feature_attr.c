
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_feature_attr {int dummy; } ;
struct attribute {int dummy; } ;


 int attr_to_btrfs_attr (struct attribute*) ;
 struct btrfs_feature_attr* to_btrfs_feature_attr (int ) ;

__attribute__((used)) static struct btrfs_feature_attr *attr_to_btrfs_feature_attr(
  struct attribute *attr)
{
 return to_btrfs_feature_attr(attr_to_btrfs_attr(attr));
}
