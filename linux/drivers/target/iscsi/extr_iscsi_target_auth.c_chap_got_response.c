
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_node_auth {int dummy; } ;
struct iscsi_conn {struct iscsi_chap* auth_protocol; } ;
struct iscsi_chap {int digest_type; } ;



 int chap_server_compute_md5 (struct iscsi_conn*,struct iscsi_node_auth*,char*,char*,unsigned int*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int chap_got_response(
 struct iscsi_conn *conn,
 struct iscsi_node_auth *auth,
 char *nr_in_ptr,
 char *nr_out_ptr,
 unsigned int *nr_out_len)
{
 struct iscsi_chap *chap = conn->auth_protocol;

 switch (chap->digest_type) {
 case 128:
  if (chap_server_compute_md5(conn, auth, nr_in_ptr,
    nr_out_ptr, nr_out_len) < 0)
   return -1;
  return 0;
 default:
  pr_err("Unknown CHAP digest type %d!\n",
    chap->digest_type);
  return -1;
 }
}
