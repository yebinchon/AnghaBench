
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct ceph_options {int name; } ;
struct TYPE_9__ {void* iov_base; int iov_len; } ;
struct TYPE_8__ {void* front_len; void* compat_version; void* version; } ;
struct ceph_msg {TYPE_4__ front; TYPE_3__ hdr; } ;
struct ceph_mount_options {int server_path; } ;
struct ceph_mds_session_head {int seq; void* op; } ;
struct ceph_mds_client {char* nodename; TYPE_2__* fsc; } ;
struct TYPE_10__ {char* release; } ;
struct TYPE_7__ {struct ceph_mount_options* mount_options; TYPE_1__* client; } ;
struct TYPE_6__ {struct ceph_options* options; } ;


 int CEPH_MSG_CLIENT_SESSION ;
 int CEPH_SESSION_REQUEST_OPEN ;
 int GFP_NOFS ;
 int ceph_encode_32 (void**,size_t const) ;
 struct ceph_msg* ceph_msg_new (int ,int,int ,int) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int encode_supported_features (void**,void*) ;
 TYPE_5__* init_utsname () ;
 int memcpy (void*,char const*,size_t const) ;
 int pr_err (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct ceph_msg *create_session_open_msg(struct ceph_mds_client *mdsc, u64 seq)
{
 struct ceph_msg *msg;
 struct ceph_mds_session_head *h;
 int i = -1;
 int extra_bytes = 0;
 int metadata_key_count = 0;
 struct ceph_options *opt = mdsc->fsc->client->options;
 struct ceph_mount_options *fsopt = mdsc->fsc->mount_options;
 void *p, *end;

 const char* metadata[][2] = {
  {"hostname", mdsc->nodename},
  {"kernel_version", init_utsname()->release},
  {"entity_id", opt->name ? : ""},
  {"root", fsopt->server_path ? : "/"},
  {((void*)0), ((void*)0)}
 };


 extra_bytes = 4;
 for (i = 0; metadata[i][0]; ++i) {
  extra_bytes += 8 + strlen(metadata[i][0]) +
   strlen(metadata[i][1]);
  metadata_key_count++;
 }

 extra_bytes += 4 + 8;


 msg = ceph_msg_new(CEPH_MSG_CLIENT_SESSION, sizeof(*h) + extra_bytes,
      GFP_NOFS, 0);
 if (!msg) {
  pr_err("create_session_msg ENOMEM creating msg\n");
  return ((void*)0);
 }
 p = msg->front.iov_base;
 end = p + msg->front.iov_len;

 h = p;
 h->op = cpu_to_le32(CEPH_SESSION_REQUEST_OPEN);
 h->seq = cpu_to_le64(seq);







 msg->hdr.version = cpu_to_le16(3);
 msg->hdr.compat_version = cpu_to_le16(1);


 p += sizeof(*h);


 ceph_encode_32(&p, metadata_key_count);


 for (i = 0; metadata[i][0]; ++i) {
  size_t const key_len = strlen(metadata[i][0]);
  size_t const val_len = strlen(metadata[i][1]);

  ceph_encode_32(&p, key_len);
  memcpy(p, metadata[i][0], key_len);
  p += key_len;
  ceph_encode_32(&p, val_len);
  memcpy(p, metadata[i][1], val_len);
  p += val_len;
 }

 encode_supported_features(&p, end);
 msg->front.iov_len = p - msg->front.iov_base;
 msg->hdr.front_len = cpu_to_le32(msg->front.iov_len);

 return msg;
}
