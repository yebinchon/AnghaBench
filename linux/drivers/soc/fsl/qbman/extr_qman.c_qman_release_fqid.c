
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DPAA_GENALLOC_OFF ;
 int gen_pool_free (int ,int,int) ;
 int pr_debug (char*,int) ;
 int qm_fqalloc ;
 int qman_shutdown_fq (int) ;

int qman_release_fqid(u32 fqid)
{
 int ret = qman_shutdown_fq(fqid);

 if (ret) {
  pr_debug("FQID %d leaked\n", fqid);
  return ret;
 }

 gen_pool_free(qm_fqalloc, fqid | DPAA_GENALLOC_OFF, 1);
 return 0;
}
