
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int ** ep_array; } ;
struct beiscsi_endpoint {struct beiscsi_conn* conn; int ep_cid; struct beiscsi_hba* phba; } ;
struct beiscsi_conn {scalar_t__ login_in_progress; int task; } ;


 size_t BE_GET_CRI_FROM_CID (int ) ;
 int beiscsi_free_mgmt_task_handles (struct beiscsi_conn*,int ) ;
 int beiscsi_put_cid (struct beiscsi_hba*,int ) ;

__attribute__((used)) static void beiscsi_free_ep(struct beiscsi_endpoint *beiscsi_ep)
{
 struct beiscsi_hba *phba = beiscsi_ep->phba;
 struct beiscsi_conn *beiscsi_conn;

 beiscsi_put_cid(phba, beiscsi_ep->ep_cid);
 beiscsi_ep->phba = ((void*)0);

 phba->ep_array[BE_GET_CRI_FROM_CID(beiscsi_ep->ep_cid)] = ((void*)0);






 if (!beiscsi_ep->conn)
  return;

 beiscsi_conn = beiscsi_ep->conn;




 beiscsi_ep->conn = ((void*)0);
 if (beiscsi_conn->login_in_progress) {
  beiscsi_free_mgmt_task_handles(beiscsi_conn,
            beiscsi_conn->task);
  beiscsi_conn->login_in_progress = 0;
 }
}
