
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int alloc_workqueue (char*,int ,int) ;
 int qm_portal_wq ;

int qman_wq_alloc(void)
{
 qm_portal_wq = alloc_workqueue("qman_portal_wq", 0, 1);
 if (!qm_portal_wq)
  return -ENOMEM;
 return 0;
}
