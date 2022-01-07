
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ i_reported_size; } ;


 int QUOTA_CHECK_MAX_BYTES_APPROACHING_OP ;
 int ceph_has_realms_with_quotas (struct inode*) ;
 TYPE_1__* ceph_inode (struct inode*) ;
 int check_quota_exceeded (struct inode*,int ,scalar_t__) ;

bool ceph_quota_is_max_bytes_approaching(struct inode *inode, loff_t newsize)
{
 loff_t size = ceph_inode(inode)->i_reported_size;

 if (!ceph_has_realms_with_quotas(inode))
  return 0;


 if (newsize <= size)
  return 0;

 return check_quota_exceeded(inode, QUOTA_CHECK_MAX_BYTES_APPROACHING_OP,
        (newsize - size));
}
