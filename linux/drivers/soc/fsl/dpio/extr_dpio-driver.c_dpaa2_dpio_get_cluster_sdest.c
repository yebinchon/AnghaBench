
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dev; } ;


 int dev_err (int *,char*) ;
 int ls1088a_soc ;
 int ls2080a_soc ;
 int ls2088a_soc ;
 int lx2160a_soc ;
 scalar_t__ soc_device_match (int ) ;

__attribute__((used)) static int dpaa2_dpio_get_cluster_sdest(struct fsl_mc_device *dpio_dev, int cpu)
{
 int cluster_base, cluster_size;

 if (soc_device_match(ls1088a_soc)) {
  cluster_base = 2;
  cluster_size = 4;
 } else if (soc_device_match(ls2080a_soc) ||
     soc_device_match(ls2088a_soc) ||
     soc_device_match(lx2160a_soc)) {
  cluster_base = 0;
  cluster_size = 2;
 } else {
  dev_err(&dpio_dev->dev, "unknown SoC version\n");
  return -1;
 }

 return cluster_base + cpu / cluster_size;
}
