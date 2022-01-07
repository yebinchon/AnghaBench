
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_inode_info {scalar_t__ i_max_size; scalar_t__ i_wanted_max_size; scalar_t__ i_requested_max_size; int i_ceph_lock; TYPE_1__* i_auth_cap; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int issued; } ;


 int CEPH_CAP_FILE_WR ;
 int CHECK_CAPS_AUTHONLY ;
 int ceph_check_caps (struct ceph_inode_info*,int ,int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int dout (char*,struct inode*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void check_max_size(struct inode *inode, loff_t endoff)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 int check = 0;


 spin_lock(&ci->i_ceph_lock);
 if (endoff >= ci->i_max_size && endoff > ci->i_wanted_max_size) {
  dout("write %p at large endoff %llu, req max_size\n",
       inode, endoff);
  ci->i_wanted_max_size = endoff;
 }

 if (ci->i_auth_cap &&
     (ci->i_auth_cap->issued & CEPH_CAP_FILE_WR) &&
     ci->i_wanted_max_size > ci->i_max_size &&
     ci->i_wanted_max_size > ci->i_requested_max_size)
  check = 1;
 spin_unlock(&ci->i_ceph_lock);
 if (check)
  ceph_check_caps(ci, CHECK_CAPS_AUTHONLY, ((void*)0));
}
