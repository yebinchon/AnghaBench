
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mtime; } ;
struct ceph_osd_request {int r_mtime; } ;
struct ceph_inode_info {int i_layout; } ;
struct ceph_fs_client {TYPE_1__* client; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int osdc; } ;


 int CEPH_OSD_FLAG_WRITE ;
 int CEPH_OSD_OP_DELETE ;
 int CEPH_OSD_OP_TRUNCATE ;
 int CEPH_OSD_OP_ZERO ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct ceph_osd_request*) ;
 int PTR_ERR (struct ceph_osd_request*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 struct ceph_osd_request* ceph_osdc_new_request (int *,int *,int ,scalar_t__,scalar_t__*,int ,int,int,int ,int *,int ,int ,int) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (int *,struct ceph_osd_request*,int) ;
 int ceph_osdc_wait_request (int *,struct ceph_osd_request*) ;
 int ceph_vino (struct inode*) ;

__attribute__((used)) static int ceph_zero_partial_object(struct inode *inode,
        loff_t offset, loff_t *length)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 struct ceph_osd_request *req;
 int ret = 0;
 loff_t zero = 0;
 int op;

 if (!length) {
  op = offset ? CEPH_OSD_OP_DELETE : CEPH_OSD_OP_TRUNCATE;
  length = &zero;
 } else {
  op = CEPH_OSD_OP_ZERO;
 }

 req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout,
     ceph_vino(inode),
     offset, length,
     0, 1, op,
     CEPH_OSD_FLAG_WRITE,
     ((void*)0), 0, 0, 0);
 if (IS_ERR(req)) {
  ret = PTR_ERR(req);
  goto out;
 }

 req->r_mtime = inode->i_mtime;
 ret = ceph_osdc_start_request(&fsc->client->osdc, req, 0);
 if (!ret) {
  ret = ceph_osdc_wait_request(&fsc->client->osdc, req);
  if (ret == -ENOENT)
   ret = 0;
 }
 ceph_osdc_put_request(req);

out:
 return ret;
}
