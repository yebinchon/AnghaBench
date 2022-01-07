
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;
struct se_portal_group {int dummy; } ;
struct hlist_head {int dummy; } ;
struct ft_tport {int sess_count; int lport; struct hlist_head* hash; } ;
struct ft_sess {int hash; int port_id; struct ft_tport* tport; } ;


 int TFC_SESS_DBG (int ,char*,int ,struct ft_sess*) ;
 size_t ft_sess_hash (int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;

__attribute__((used)) static int ft_sess_alloc_cb(struct se_portal_group *se_tpg,
       struct se_session *se_sess, void *p)
{
 struct ft_sess *sess = p;
 struct ft_tport *tport = sess->tport;
 struct hlist_head *head = &tport->hash[ft_sess_hash(sess->port_id)];

 TFC_SESS_DBG(tport->lport, "port_id %x sess %p\n", sess->port_id, sess);
 hlist_add_head_rcu(&sess->hash, head);
 tport->sess_count++;

 return 0;
}
