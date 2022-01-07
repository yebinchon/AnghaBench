
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int se_node_acl; } ;
struct se_portal_group {int dummy; } ;
typedef enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;


 int EACCES ;
 struct se_session* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct se_session*) ;
 int core_tpg_check_initiator_node_acl (struct se_portal_group*,unsigned char*) ;
 struct se_session* transport_alloc_session (int) ;
 int transport_free_session (struct se_session*) ;
 struct se_session* transport_init_session_tags (unsigned int,unsigned int,int) ;
 int transport_register_session (struct se_portal_group*,int ,struct se_session*,void*) ;

struct se_session *
target_setup_session(struct se_portal_group *tpg,
       unsigned int tag_num, unsigned int tag_size,
       enum target_prot_op prot_op,
       const char *initiatorname, void *private,
       int (*callback)(struct se_portal_group *,
         struct se_session *, void *))
{
 struct se_session *sess;





 if (tag_num != 0)
  sess = transport_init_session_tags(tag_num, tag_size, prot_op);
 else
  sess = transport_alloc_session(prot_op);

 if (IS_ERR(sess))
  return sess;

 sess->se_node_acl = core_tpg_check_initiator_node_acl(tpg,
     (unsigned char *)initiatorname);
 if (!sess->se_node_acl) {
  transport_free_session(sess);
  return ERR_PTR(-EACCES);
 }




 if (callback != ((void*)0)) {
  int rc = callback(tpg, sess, private);
  if (rc) {
   transport_free_session(sess);
   return ERR_PTR(rc);
  }
 }

 transport_register_session(tpg, sess->se_node_acl, sess, private);
 return sess;
}
