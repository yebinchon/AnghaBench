
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iscsi_login_stats {int lock; int last_fail_time; int last_intr_fail_sockaddr; int last_intr_fail_ip_family; int last_intr_fail_name; int last_fail_type; int other_fails; int negotiate_fails; int authorize_fails; int authenticate_fails; int redirects; int accepts; } ;
struct iscsi_tiqn {struct iscsi_login_stats login_stats; } ;
struct iscsi_param {char* value; } ;
struct iscsi_conn {int login_sockaddr; int login_family; scalar_t__ param_list; } ;


 int INITIATORNAME ;
 int ISCSI_LOGIN_FAIL_AUTHENTICATE ;
 int ISCSI_LOGIN_FAIL_AUTHORIZE ;
 int ISCSI_LOGIN_FAIL_NEGOTIATE ;
 int ISCSI_LOGIN_FAIL_OTHER ;
 int ISCSI_LOGIN_FAIL_REDIRECT ;
 scalar_t__ ISCSI_LOGIN_STATUS_AUTH_FAILED ;
 scalar_t__ ISCSI_LOGIN_STATUS_INIT_ERR ;
 scalar_t__ ISCSI_LOGIN_STATUS_TGT_FORBIDDEN ;
 scalar_t__ ISCSI_STATUS_CLS_INITIATOR_ERR ;
 scalar_t__ ISCSI_STATUS_CLS_REDIRECT ;
 scalar_t__ ISCSI_STATUS_CLS_SUCCESS ;
 int get_jiffies_64 () ;
 struct iscsi_param* iscsi_find_param_from_key (int ,scalar_t__) ;
 struct iscsi_tiqn* iscsit_snmp_get_tiqn (struct iscsi_conn*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlcpy (int ,char*,int) ;

void iscsit_collect_login_stats(
 struct iscsi_conn *conn,
 u8 status_class,
 u8 status_detail)
{
 struct iscsi_param *intrname = ((void*)0);
 struct iscsi_tiqn *tiqn;
 struct iscsi_login_stats *ls;

 tiqn = iscsit_snmp_get_tiqn(conn);
 if (!tiqn)
  return;

 ls = &tiqn->login_stats;

 spin_lock(&ls->lock);
 if (status_class == ISCSI_STATUS_CLS_SUCCESS)
  ls->accepts++;
 else if (status_class == ISCSI_STATUS_CLS_REDIRECT) {
  ls->redirects++;
  ls->last_fail_type = ISCSI_LOGIN_FAIL_REDIRECT;
 } else if ((status_class == ISCSI_STATUS_CLS_INITIATOR_ERR) &&
   (status_detail == ISCSI_LOGIN_STATUS_AUTH_FAILED)) {
  ls->authenticate_fails++;
  ls->last_fail_type = ISCSI_LOGIN_FAIL_AUTHENTICATE;
 } else if ((status_class == ISCSI_STATUS_CLS_INITIATOR_ERR) &&
   (status_detail == ISCSI_LOGIN_STATUS_TGT_FORBIDDEN)) {
  ls->authorize_fails++;
  ls->last_fail_type = ISCSI_LOGIN_FAIL_AUTHORIZE;
 } else if ((status_class == ISCSI_STATUS_CLS_INITIATOR_ERR) &&
   (status_detail == ISCSI_LOGIN_STATUS_INIT_ERR)) {
  ls->negotiate_fails++;
  ls->last_fail_type = ISCSI_LOGIN_FAIL_NEGOTIATE;
 } else {
  ls->other_fails++;
  ls->last_fail_type = ISCSI_LOGIN_FAIL_OTHER;
 }


 if (status_class != ISCSI_STATUS_CLS_SUCCESS) {
  if (conn->param_list)
   intrname = iscsi_find_param_from_key(INITIATORNAME,
            conn->param_list);
  strlcpy(ls->last_intr_fail_name,
         (intrname ? intrname->value : "Unknown"),
         sizeof(ls->last_intr_fail_name));

  ls->last_intr_fail_ip_family = conn->login_family;

  ls->last_intr_fail_sockaddr = conn->login_sockaddr;
  ls->last_fail_time = get_jiffies_64();
 }

 spin_unlock(&ls->lock);
}
