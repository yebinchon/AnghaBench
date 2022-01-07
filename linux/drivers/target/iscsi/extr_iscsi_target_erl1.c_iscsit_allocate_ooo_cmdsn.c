
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_ooo_cmdsn {int ooo_list; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct iscsi_ooo_cmdsn* kmem_cache_zalloc (int ,int ) ;
 int lio_ooo_cache ;
 int pr_err (char*) ;

__attribute__((used)) static struct iscsi_ooo_cmdsn *iscsit_allocate_ooo_cmdsn(void)
{
 struct iscsi_ooo_cmdsn *ooo_cmdsn = ((void*)0);

 ooo_cmdsn = kmem_cache_zalloc(lio_ooo_cache, GFP_ATOMIC);
 if (!ooo_cmdsn) {
  pr_err("Unable to allocate memory for"
   " struct iscsi_ooo_cmdsn.\n");
  return ((void*)0);
 }
 INIT_LIST_HEAD(&ooo_cmdsn->ooo_list);

 return ooo_cmdsn;
}
