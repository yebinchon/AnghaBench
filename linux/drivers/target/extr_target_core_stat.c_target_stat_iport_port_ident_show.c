
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_session {int dummy; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {char* initiatorname; int nacl_sess_lock; struct se_portal_group* se_tpg; struct se_session* nacl_sess; } ;
struct se_lun_acl {struct se_node_acl* se_lun_nacl; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* sess_get_initiator_sid ) (struct se_session*,unsigned char*,int) ;} ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct se_lun_acl* iport_to_lacl (struct config_item*) ;
 int memset (unsigned char*,int ,int) ;
 int snprintf (char*,int ,char*,char*,unsigned char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct se_session*,unsigned char*,int) ;

__attribute__((used)) static ssize_t target_stat_iport_port_ident_show(struct config_item *item,
  char *page)
{
 struct se_lun_acl *lacl = iport_to_lacl(item);
 struct se_node_acl *nacl = lacl->se_lun_nacl;
 struct se_session *se_sess;
 struct se_portal_group *tpg;
 ssize_t ret;
 unsigned char buf[64];

 spin_lock_irq(&nacl->nacl_sess_lock);
 se_sess = nacl->nacl_sess;
 if (!se_sess) {
  spin_unlock_irq(&nacl->nacl_sess_lock);
  return -ENODEV;
 }

 tpg = nacl->se_tpg;

 memset(buf, 0, 64);
 if (tpg->se_tpg_tfo->sess_get_initiator_sid != ((void*)0))
  tpg->se_tpg_tfo->sess_get_initiator_sid(se_sess, buf, 64);

 ret = snprintf(page, PAGE_SIZE, "%s+i+%s\n", nacl->initiatorname, buf);
 spin_unlock_irq(&nacl->nacl_sess_lock);
 return ret;
}
