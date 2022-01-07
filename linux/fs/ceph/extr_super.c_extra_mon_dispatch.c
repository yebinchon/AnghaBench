
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ceph_msg {TYPE_1__ hdr; } ;
struct ceph_fs_client {int mdsc; } ;
struct ceph_client {struct ceph_fs_client* private; } ;




 int ceph_mdsc_handle_fsmap (int ,struct ceph_msg*) ;
 int ceph_mdsc_handle_mdsmap (int ,struct ceph_msg*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int extra_mon_dispatch(struct ceph_client *client, struct ceph_msg *msg)
{
 struct ceph_fs_client *fsc = client->private;
 int type = le16_to_cpu(msg->hdr.type);

 switch (type) {
 case 128:
  ceph_mdsc_handle_mdsmap(fsc->mdsc, msg);
  return 0;
 case 129:
  ceph_mdsc_handle_fsmap(fsc->mdsc, msg);
  return 0;
 default:
  return -1;
 }
}
