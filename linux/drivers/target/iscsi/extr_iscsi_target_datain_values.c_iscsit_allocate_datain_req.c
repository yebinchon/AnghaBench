
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_datain_req {int cmd_datain_node; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct iscsi_datain_req* kmem_cache_zalloc (int ,int ) ;
 int lio_dr_cache ;
 int pr_err (char*) ;

struct iscsi_datain_req *iscsit_allocate_datain_req(void)
{
 struct iscsi_datain_req *dr;

 dr = kmem_cache_zalloc(lio_dr_cache, GFP_ATOMIC);
 if (!dr) {
  pr_err("Unable to allocate memory for"
    " struct iscsi_datain_req\n");
  return ((void*)0);
 }
 INIT_LIST_HEAD(&dr->cmd_datain_node);

 return dr;
}
