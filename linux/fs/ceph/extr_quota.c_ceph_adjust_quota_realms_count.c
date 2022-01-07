
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_mds_client {int quotarealms_count; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;


 int atomic64_dec (int *) ;
 int atomic64_inc (int *) ;
 TYPE_1__* ceph_inode_to_client (struct inode*) ;

void ceph_adjust_quota_realms_count(struct inode *inode, bool inc)
{
 struct ceph_mds_client *mdsc = ceph_inode_to_client(inode)->mdsc;
 if (inc)
  atomic64_inc(&mdsc->quotarealms_count);
 else
  atomic64_dec(&mdsc->quotarealms_count);
}
