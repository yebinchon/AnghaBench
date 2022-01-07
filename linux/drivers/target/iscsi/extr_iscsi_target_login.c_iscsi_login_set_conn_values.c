
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_session {int dummy; } ;
struct iscsi_conn {scalar_t__ auth_id; int stat_sn; int cid; struct iscsi_session* sess; } ;
typedef int __be16 ;
struct TYPE_2__ {int auth_id; } ;


 int auth_id_lock ;
 int be16_to_cpu (int ) ;
 int get_random_bytes_wait (int *,int) ;
 TYPE_1__* iscsit_global ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int iscsi_login_set_conn_values(
 struct iscsi_session *sess,
 struct iscsi_conn *conn,
 __be16 cid)
{
 int ret;
 conn->sess = sess;
 conn->cid = be16_to_cpu(cid);




 ret = get_random_bytes_wait(&conn->stat_sn, sizeof(u32));
 if (unlikely(ret))
  return ret;

 mutex_lock(&auth_id_lock);
 conn->auth_id = iscsit_global->auth_id++;
 mutex_unlock(&auth_id_lock);
 return 0;
}
