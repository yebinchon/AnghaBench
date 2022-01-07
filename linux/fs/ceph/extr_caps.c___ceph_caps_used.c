
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nrpages; } ;
struct TYPE_3__ {TYPE_2__ i_data; int i_mode; } ;
struct ceph_inode_info {scalar_t__ i_wrbuffer_ref; scalar_t__ i_wb_ref; scalar_t__ i_wr_ref; TYPE_1__ vfs_inode; scalar_t__ i_rdcache_ref; scalar_t__ i_rd_ref; scalar_t__ i_pin_ref; } ;


 int CEPH_CAP_FILE_BUFFER ;
 int CEPH_CAP_FILE_CACHE ;
 int CEPH_CAP_FILE_RD ;
 int CEPH_CAP_FILE_WR ;
 int CEPH_CAP_PIN ;
 int S_ISDIR (int ) ;

int __ceph_caps_used(struct ceph_inode_info *ci)
{
 int used = 0;
 if (ci->i_pin_ref)
  used |= CEPH_CAP_PIN;
 if (ci->i_rd_ref)
  used |= CEPH_CAP_FILE_RD;
 if (ci->i_rdcache_ref ||
     (!S_ISDIR(ci->vfs_inode.i_mode) &&
      ci->vfs_inode.i_data.nrpages))
  used |= CEPH_CAP_FILE_CACHE;
 if (ci->i_wr_ref)
  used |= CEPH_CAP_FILE_WR;
 if (ci->i_wb_ref || ci->i_wrbuffer_ref)
  used |= CEPH_CAP_FILE_BUFFER;
 return used;
}
