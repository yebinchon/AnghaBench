
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_node_auth {int naf_flags; } ;
struct iscsi_conn {TYPE_1__* tpg; struct iscsi_chap* auth_protocol; } ;
struct iscsi_chap {int digest_type; int id; } ;
struct TYPE_2__ {int tpg_chap_id; } ;




 int GFP_KERNEL ;
 int NAF_PASSWORD_SET ;
 int NAF_USERID_SET ;
 int chap_check_algorithm (char const*) ;
 int chap_close (struct iscsi_conn*) ;
 scalar_t__ chap_gen_challenge (struct iscsi_conn*,int,char*,unsigned int*) ;
 struct iscsi_chap* kzalloc (int,int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*) ;
 unsigned int sprintf (char*,char*,...) ;

__attribute__((used)) static struct iscsi_chap *chap_server_open(
 struct iscsi_conn *conn,
 struct iscsi_node_auth *auth,
 const char *a_str,
 char *aic_str,
 unsigned int *aic_len)
{
 int ret;
 struct iscsi_chap *chap;

 if (!(auth->naf_flags & NAF_USERID_SET) ||
     !(auth->naf_flags & NAF_PASSWORD_SET)) {
  pr_err("CHAP user or password not set for"
    " Initiator ACL\n");
  return ((void*)0);
 }

 conn->auth_protocol = kzalloc(sizeof(struct iscsi_chap), GFP_KERNEL);
 if (!conn->auth_protocol)
  return ((void*)0);

 chap = conn->auth_protocol;
 ret = chap_check_algorithm(a_str);
 switch (ret) {
 case 129:
  pr_debug("[server] Got CHAP_A=5\n");



  *aic_len = sprintf(aic_str, "CHAP_A=5");
  *aic_len += 1;
  chap->digest_type = 129;
  pr_debug("[server] Sending CHAP_A=%d\n", chap->digest_type);
  break;
 case 128:
 default:
  pr_err("Unsupported CHAP_A value\n");
  chap_close(conn);
  return ((void*)0);
 }




 chap->id = conn->tpg->tpg_chap_id++;
 *aic_len += sprintf(aic_str + *aic_len, "CHAP_I=%d", chap->id);
 *aic_len += 1;
 pr_debug("[server] Sending CHAP_I=%d\n", chap->id);



 if (chap_gen_challenge(conn, 1, aic_str, aic_len) < 0) {
  chap_close(conn);
  return ((void*)0);
 }

 return chap;
}
