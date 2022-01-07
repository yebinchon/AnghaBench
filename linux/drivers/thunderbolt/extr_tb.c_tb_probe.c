
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int dummy; } ;
struct tb_cm {int tunnel_list; } ;
struct tb {int * cm_ops; int security_level; } ;


 int INIT_LIST_HEAD (int *) ;
 int TB_SECURITY_USER ;
 int tb_cm_ops ;
 struct tb* tb_domain_alloc (struct tb_nhi*,int) ;
 struct tb_cm* tb_priv (struct tb*) ;
 int x86_apple_machine ;

struct tb *tb_probe(struct tb_nhi *nhi)
{
 struct tb_cm *tcm;
 struct tb *tb;

 if (!x86_apple_machine)
  return ((void*)0);

 tb = tb_domain_alloc(nhi, sizeof(*tcm));
 if (!tb)
  return ((void*)0);

 tb->security_level = TB_SECURITY_USER;
 tb->cm_ops = &tb_cm_ops;

 tcm = tb_priv(tb);
 INIT_LIST_HEAD(&tcm->tunnel_list);

 return tb;
}
