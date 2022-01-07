
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct beiscsi_endpoint {int ep_cid; struct beiscsi_hba* phba; } ;


 int BEISCSI_LOG_CONFIG ;
 int KERN_INFO ;
 int beiscsi_flush_cq (struct beiscsi_hba*) ;
 unsigned int beiscsi_invalidate_cxn (struct beiscsi_hba*,struct beiscsi_endpoint*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int ) ;
 int beiscsi_mccq_compl_wait (struct beiscsi_hba*,unsigned int,int *,int *) ;
 unsigned int beiscsi_upload_cxn (struct beiscsi_hba*,struct beiscsi_endpoint*) ;
 int msleep (int) ;

__attribute__((used)) static int beiscsi_conn_close(struct beiscsi_endpoint *beiscsi_ep)
{
 struct beiscsi_hba *phba = beiscsi_ep->phba;
 unsigned int tag, attempts;
 int ret;





 attempts = 0;
 while (attempts++ < 3) {
  tag = beiscsi_invalidate_cxn(phba, beiscsi_ep);
  if (tag) {
   ret = beiscsi_mccq_compl_wait(phba, tag, ((void*)0), ((void*)0));
   if (!ret)
    break;
   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
        "BS_%d : invalidate conn failed cid %d\n",
        beiscsi_ep->ep_cid);
  }
 }


 msleep(250);

 beiscsi_flush_cq(phba);

 if (attempts > 3)
  return -1;

 attempts = 0;
 while (attempts++ < 3) {
  tag = beiscsi_upload_cxn(phba, beiscsi_ep);
  if (tag) {
   ret = beiscsi_mccq_compl_wait(phba, tag, ((void*)0), ((void*)0));
   if (!ret)
    break;
   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
        "BS_%d : upload conn failed cid %d\n",
        beiscsi_ep->ep_cid);
  }
 }
 if (attempts > 3)
  return -1;

 return 0;
}
