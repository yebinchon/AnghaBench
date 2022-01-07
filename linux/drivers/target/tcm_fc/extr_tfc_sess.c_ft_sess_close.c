
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_session {struct ft_sess* fabric_sess_ptr; } ;
struct ft_sess {int port_id; TYPE_1__* tport; } ;
struct TYPE_2__ {int lport; } ;


 int TFC_SESS_DBG (int ,char*,int) ;
 int ft_close_sess (struct ft_sess*) ;
 int ft_lport_lock ;
 int ft_sess_unhash (struct ft_sess*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void ft_sess_close(struct se_session *se_sess)
{
 struct ft_sess *sess = se_sess->fabric_sess_ptr;
 u32 port_id;

 mutex_lock(&ft_lport_lock);
 port_id = sess->port_id;
 if (port_id == -1) {
  mutex_unlock(&ft_lport_lock);
  return;
 }
 TFC_SESS_DBG(sess->tport->lport, "port_id %x close session\n", port_id);
 ft_sess_unhash(sess);
 mutex_unlock(&ft_lport_lock);
 ft_close_sess(sess);

 synchronize_rcu();
}
