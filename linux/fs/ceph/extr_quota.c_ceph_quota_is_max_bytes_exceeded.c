
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int QUOTA_CHECK_MAX_BYTES_OP ;
 int ceph_has_realms_with_quotas (struct inode*) ;
 int check_quota_exceeded (struct inode*,int ,scalar_t__) ;
 scalar_t__ i_size_read (struct inode*) ;

bool ceph_quota_is_max_bytes_exceeded(struct inode *inode, loff_t newsize)
{
 loff_t size = i_size_read(inode);

 if (!ceph_has_realms_with_quotas(inode))
  return 0;


 if (newsize <= size)
  return 0;

 return check_quota_exceeded(inode, QUOTA_CHECK_MAX_BYTES_OP, (newsize - size));
}
