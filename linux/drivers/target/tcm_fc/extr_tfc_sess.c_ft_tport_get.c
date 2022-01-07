
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_tport {int * hash; struct ft_tpg* tpg; struct fc_lport* lport; } ;
struct ft_tpg {struct ft_tport* tport; } ;
struct fc_lport {int * prov; } ;


 size_t FC_TYPE_FCP ;
 int FT_SESS_HASH_SIZE ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 struct ft_tpg* ft_lport_find_tpg (struct fc_lport*) ;
 int ft_lport_lock ;
 struct ft_tport* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct ft_tport*) ;
 struct ft_tport* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static struct ft_tport *ft_tport_get(struct fc_lport *lport)
{
 struct ft_tpg *tpg;
 struct ft_tport *tport;
 int i;

 tport = rcu_dereference_protected(lport->prov[FC_TYPE_FCP],
       lockdep_is_held(&ft_lport_lock));
 if (tport && tport->tpg)
  return tport;

 tpg = ft_lport_find_tpg(lport);
 if (!tpg)
  return ((void*)0);

 if (tport) {
  tport->tpg = tpg;
  tpg->tport = tport;
  return tport;
 }

 tport = kzalloc(sizeof(*tport), GFP_KERNEL);
 if (!tport)
  return ((void*)0);

 tport->lport = lport;
 tport->tpg = tpg;
 tpg->tport = tport;
 for (i = 0; i < FT_SESS_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&tport->hash[i]);

 rcu_assign_pointer(lport->prov[FC_TYPE_FCP], tport);
 return tport;
}
