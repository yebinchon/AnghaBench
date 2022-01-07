
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DPAA_GENALLOC_OFF ;
 int bm_bpalloc ;
 int bm_shutdown_pool (int) ;
 int gen_pool_free (int ,int,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int bm_release_bpid(u32 bpid)
{
 int ret;

 ret = bm_shutdown_pool(bpid);
 if (ret) {
  pr_debug("BPID %d leaked\n", bpid);
  return ret;
 }

 gen_pool_free(bm_bpalloc, bpid | DPAA_GENALLOC_OFF, 1);
 return 0;
}
