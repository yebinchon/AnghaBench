
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DPAA_GENALLOC_OFF ;
 int cgr_cleanup (int) ;
 int gen_pool_free (int ,int,int) ;
 int pr_debug (char*,int) ;
 int qm_cgralloc ;

int qman_release_cgrid(u32 cgrid)
{
 int ret;

 ret = cgr_cleanup(cgrid);
 if (ret) {
  pr_debug("CGRID %d leaked\n", cgrid);
  return ret;
 }

 gen_pool_free(qm_cgralloc, cgrid | DPAA_GENALLOC_OFF, 1);
 return 0;
}
