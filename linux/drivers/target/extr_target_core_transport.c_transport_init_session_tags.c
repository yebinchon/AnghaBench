
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;
typedef enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;


 int EINVAL ;
 int ENOMEM ;
 struct se_session* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct se_session*) ;
 int pr_err (char*,unsigned int) ;
 struct se_session* transport_alloc_session (int) ;
 int transport_alloc_session_tags (struct se_session*,unsigned int,unsigned int) ;
 int transport_free_session (struct se_session*) ;

__attribute__((used)) static struct se_session *
transport_init_session_tags(unsigned int tag_num, unsigned int tag_size,
       enum target_prot_op sup_prot_ops)
{
 struct se_session *se_sess;
 int rc;

 if (tag_num != 0 && !tag_size) {
  pr_err("init_session_tags called with percpu-ida tag_num:"
         " %u, but zero tag_size\n", tag_num);
  return ERR_PTR(-EINVAL);
 }
 if (!tag_num && tag_size) {
  pr_err("init_session_tags called with percpu-ida tag_size:"
         " %u, but zero tag_num\n", tag_size);
  return ERR_PTR(-EINVAL);
 }

 se_sess = transport_alloc_session(sup_prot_ops);
 if (IS_ERR(se_sess))
  return se_sess;

 rc = transport_alloc_session_tags(se_sess, tag_num, tag_size);
 if (rc < 0) {
  transport_free_session(se_sess);
  return ERR_PTR(-ENOMEM);
 }

 return se_sess;
}
