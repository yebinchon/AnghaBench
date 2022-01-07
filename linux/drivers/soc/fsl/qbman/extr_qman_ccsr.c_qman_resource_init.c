
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DPAA_GENALLOC_OFF ;
 int ENODEV ;
 int QM_FQID_RANGE_START ;
 int QM_SDQCR_CHANNELS_POOL_CONV (int) ;
 int dev_err (struct device*,char*,int) ;
 int gen_pool_add (int ,int,int,int) ;
 int qm_cgralloc ;
 int qm_channel_pool1 ;
 int qm_fqalloc ;
 int qm_get_fqid_maxcnt () ;
 int qm_pools_sdqcr ;
 int qm_qpalloc ;
 int qman_ip_rev ;

__attribute__((used)) static int qman_resource_init(struct device *dev)
{
 int pool_chan_num, cgrid_num;
 int ret, i;

 switch (qman_ip_rev >> 8) {
 case 1:
  pool_chan_num = 15;
  cgrid_num = 256;
  break;
 case 2:
  pool_chan_num = 3;
  cgrid_num = 64;
  break;
 case 3:
  pool_chan_num = 15;
  cgrid_num = 256;
  break;
 default:
  return -ENODEV;
 }

 ret = gen_pool_add(qm_qpalloc, qm_channel_pool1 | DPAA_GENALLOC_OFF,
      pool_chan_num, -1);
 if (ret) {
  dev_err(dev, "Failed to seed pool channels (%d)\n", ret);
  return ret;
 }

 ret = gen_pool_add(qm_cgralloc, DPAA_GENALLOC_OFF, cgrid_num, -1);
 if (ret) {
  dev_err(dev, "Failed to seed CGRID range (%d)\n", ret);
  return ret;
 }


 for (i = 0; i < cgrid_num; i++)
  qm_pools_sdqcr |= QM_SDQCR_CHANNELS_POOL_CONV(i);

 ret = gen_pool_add(qm_fqalloc, QM_FQID_RANGE_START | DPAA_GENALLOC_OFF,
      qm_get_fqid_maxcnt() - QM_FQID_RANGE_START, -1);
 if (ret) {
  dev_err(dev, "Failed to seed FQID range (%d)\n", ret);
  return ret;
 }

 return 0;
}
