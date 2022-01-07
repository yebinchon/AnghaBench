
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int ep_rdwr_lock; int ep_active_list; } ;
struct bnx2i_endpoint {int link; } ;


 int list_add_tail (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void bnx2i_ep_active_list_add(struct bnx2i_hba *hba,
         struct bnx2i_endpoint *ep)
{
 write_lock_bh(&hba->ep_rdwr_lock);
 list_add_tail(&ep->link, &hba->ep_active_list);
 write_unlock_bh(&hba->ep_rdwr_lock);
}
