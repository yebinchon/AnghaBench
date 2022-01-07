
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum btrfs_feature_set { ____Placeholder_btrfs_feature_set } btrfs_feature_set ;


 char const* const* btrfs_feature_set_names ;

const char * const btrfs_feature_set_name(enum btrfs_feature_set set)
{
 return btrfs_feature_set_names[set];
}
