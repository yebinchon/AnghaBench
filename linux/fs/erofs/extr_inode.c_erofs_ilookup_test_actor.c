
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef scalar_t__ erofs_nid_t ;
struct TYPE_2__ {scalar_t__ const nid; } ;


 TYPE_1__* EROFS_I (struct inode*) ;

__attribute__((used)) static int erofs_ilookup_test_actor(struct inode *inode, void *opaque)
{
 const erofs_nid_t nid = *(erofs_nid_t *)opaque;

 return EROFS_I(inode)->nid == nid;
}
