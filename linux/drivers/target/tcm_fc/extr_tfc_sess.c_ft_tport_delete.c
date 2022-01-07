
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_tport {struct ft_tpg* tpg; struct fc_lport* lport; } ;
struct ft_tpg {int * tport; } ;
struct fc_lport {struct ft_tport** prov; int service_params; } ;


 int BUG_ON (int) ;
 int FCP_SPPF_TARG_FCN ;
 size_t FC_TYPE_FCP ;
 int RCU_INIT_POINTER (struct ft_tport*,int *) ;
 int ft_sess_delete_all (struct ft_tport*) ;
 int kfree_rcu (struct ft_tport*,int ) ;
 int rcu ;

__attribute__((used)) static void ft_tport_delete(struct ft_tport *tport)
{
 struct fc_lport *lport;
 struct ft_tpg *tpg;

 ft_sess_delete_all(tport);
 lport = tport->lport;
 lport->service_params &= ~FCP_SPPF_TARG_FCN;
 BUG_ON(tport != lport->prov[FC_TYPE_FCP]);
 RCU_INIT_POINTER(lport->prov[FC_TYPE_FCP], ((void*)0));

 tpg = tport->tpg;
 if (tpg) {
  tpg->tport = ((void*)0);
  tport->tpg = ((void*)0);
 }
 kfree_rcu(tport, rcu);
}
