
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist_node {scalar_t__ aux; } ;
struct btrfs_qgroup {int dummy; } ;



__attribute__((used)) static inline struct btrfs_qgroup* unode_aux_to_qgroup(struct ulist_node *n)
{
 return (struct btrfs_qgroup *)(uintptr_t)n->aux;
}
