
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int ep_rdwr_lock; } ;
struct bnx2i_endpoint {int link; } ;


 int list_del_init (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int bnx2i_ep_destroy_list_del(struct bnx2i_hba *hba,
         struct bnx2i_endpoint *ep)
{
 write_lock_bh(&hba->ep_rdwr_lock);
 list_del_init(&ep->link);
 write_unlock_bh(&hba->ep_rdwr_lock);

 return 0;
}
