
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ceph_msg {TYPE_1__ hdr; } ;
struct ceph_mds_session {struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_client {int mutex; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;
 scalar_t__ __verify_registered_session (struct ceph_mds_client*,struct ceph_mds_session*) ;
 int ceph_handle_caps (struct ceph_mds_session*,struct ceph_msg*) ;
 int ceph_handle_quota (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ;
 int ceph_handle_snap (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ;
 int ceph_mdsc_handle_fsmap (struct ceph_mds_client*,struct ceph_msg*) ;
 int ceph_mdsc_handle_mdsmap (struct ceph_mds_client*,struct ceph_msg*) ;
 int ceph_msg_put (struct ceph_msg*) ;
 int ceph_msg_type_name (int) ;
 int handle_forward (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ;
 int handle_lease (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ;
 int handle_reply (struct ceph_mds_session*,struct ceph_msg*) ;
 int handle_session (struct ceph_mds_session*,struct ceph_msg*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static void dispatch(struct ceph_connection *con, struct ceph_msg *msg)
{
 struct ceph_mds_session *s = con->private;
 struct ceph_mds_client *mdsc = s->s_mdsc;
 int type = le16_to_cpu(msg->hdr.type);

 mutex_lock(&mdsc->mutex);
 if (__verify_registered_session(mdsc, s) < 0) {
  mutex_unlock(&mdsc->mutex);
  goto out;
 }
 mutex_unlock(&mdsc->mutex);

 switch (type) {
 case 128:
  ceph_mdsc_handle_mdsmap(mdsc, msg);
  break;
 case 129:
  ceph_mdsc_handle_fsmap(mdsc, msg);
  break;
 case 131:
  handle_session(s, msg);
  break;
 case 133:
  handle_reply(s, msg);
  break;
 case 132:
  handle_forward(mdsc, s, msg);
  break;
 case 136:
  ceph_handle_caps(s, msg);
  break;
 case 130:
  ceph_handle_snap(mdsc, s, msg);
  break;
 case 135:
  handle_lease(mdsc, s, msg);
  break;
 case 134:
  ceph_handle_quota(mdsc, s, msg);
  break;

 default:
  pr_err("received unknown message type %d %s\n", type,
         ceph_msg_type_name(type));
 }
out:
 ceph_msg_put(msg);
}
