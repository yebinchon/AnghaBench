
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DPAA_GENALLOC_OFF ;
 int gen_pool_free (int ,int,int) ;
 int pr_debug (char*,int) ;
 int qm_qpalloc ;
 int qpool_cleanup (int) ;

int qman_release_pool(u32 qp)
{
 int ret;

 ret = qpool_cleanup(qp);
 if (ret) {
  pr_debug("CHID %d leaked\n", qp);
  return ret;
 }

 gen_pool_free(qm_qpalloc, qp | DPAA_GENALLOC_OFF, 1);
 return 0;
}
