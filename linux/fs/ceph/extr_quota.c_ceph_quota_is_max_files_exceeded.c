
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int QUOTA_CHECK_MAX_FILES_OP ;
 int S_ISDIR (int ) ;
 int WARN_ON (int) ;
 int ceph_has_realms_with_quotas (struct inode*) ;
 int check_quota_exceeded (struct inode*,int ,int ) ;

bool ceph_quota_is_max_files_exceeded(struct inode *inode)
{
 if (!ceph_has_realms_with_quotas(inode))
  return 0;

 WARN_ON(!S_ISDIR(inode->i_mode));

 return check_quota_exceeded(inode, QUOTA_CHECK_MAX_FILES_OP, 0);
}
