
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int QMAN_CHANNEL_CAAM_REV3 ;
 int QMAN_CHANNEL_POOL1_REV3 ;
 int QMAN_REV11 ;
 int QMAN_REV12 ;
 int QMAN_REV20 ;
 int QMAN_REV30 ;
 int QMAN_REV31 ;
 int QMAN_REV32 ;
 int REG_ERR_IER ;
 int REG_ERR_ISR ;
 int WARN (int,char*) ;
 int __qman_probed ;
 int dev_dbg (struct device*,char*,scalar_t__,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,struct device_node*) ;
 int devm_gen_pool_create (struct device*,int ,int,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct device*) ;
 scalar_t__ fqd_a ;
 int fqd_sz ;
 scalar_t__ pfdr_a ;
 int pfdr_sz ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int qbman_init_private_mem (struct device*,int,scalar_t__*,int *) ;
 int qm_ccsr_out (int ,int) ;
 int qm_ccsr_start ;
 int qm_cgralloc ;
 int qm_channel_caam ;
 int qm_channel_pool1 ;
 int qm_fqalloc ;
 int qm_get_fqid_maxcnt () ;
 int qm_get_version (int *,int*,int*) ;
 int qm_qpalloc ;
 int qman_alloc_fq_table (int ) ;
 int qman_init_ccsr (struct device*) ;
 int qman_ip_rev ;
 int qman_isr ;
 int qman_resource_init (struct device*) ;
 int qman_wq_alloc () ;
 int resource_size (struct resource*) ;
 int zero_priv_mem (scalar_t__,int ) ;

__attribute__((used)) static int fsl_qman_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct resource *res;
 int ret, err_irq;
 u16 id;
 u8 major, minor;

 __qman_probed = -1;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "Can't get %pOF property 'IORESOURCE_MEM'\n",
   node);
  return -ENXIO;
 }
 qm_ccsr_start = devm_ioremap(dev, res->start, resource_size(res));
 if (!qm_ccsr_start)
  return -ENXIO;

 qm_get_version(&id, &major, &minor);
 if (major == 1 && minor == 0) {
  dev_err(dev, "Rev1.0 on P4080 rev1 is not supported!\n");
   return -ENODEV;
 } else if (major == 1 && minor == 1)
  qman_ip_rev = QMAN_REV11;
 else if (major == 1 && minor == 2)
  qman_ip_rev = QMAN_REV12;
 else if (major == 2 && minor == 0)
  qman_ip_rev = QMAN_REV20;
 else if (major == 3 && minor == 0)
  qman_ip_rev = QMAN_REV30;
 else if (major == 3 && minor == 1)
  qman_ip_rev = QMAN_REV31;
 else if (major == 3 && minor == 2)
  qman_ip_rev = QMAN_REV32;
 else {
  dev_err(dev, "Unknown QMan version\n");
  return -ENODEV;
 }

 if ((qman_ip_rev & 0xff00) >= QMAN_REV30) {
  qm_channel_pool1 = QMAN_CHANNEL_POOL1_REV3;
  qm_channel_caam = QMAN_CHANNEL_CAAM_REV3;
 }

 if (fqd_a) {







  WARN(1, "Unexpected architecture using non shared-dma-mem reservations");

 } else {





  ret = qbman_init_private_mem(dev, 0, &fqd_a, &fqd_sz);
  if (ret) {
   dev_err(dev, "qbman_init_private_mem() for FQD failed 0x%x\n",
    ret);
   return -ENODEV;
  }
 }
 dev_dbg(dev, "Allocated FQD 0x%llx 0x%zx\n", fqd_a, fqd_sz);

 if (!pfdr_a) {

  ret = qbman_init_private_mem(dev, 1, &pfdr_a, &pfdr_sz);
  if (ret) {
   dev_err(dev, "qbman_init_private_mem() for PFDR failed 0x%x\n",
    ret);
   return -ENODEV;
  }
 }
 dev_dbg(dev, "Allocated PFDR 0x%llx 0x%zx\n", pfdr_a, pfdr_sz);

 ret = qman_init_ccsr(dev);
 if (ret) {
  dev_err(dev, "CCSR setup failed\n");
  return ret;
 }

 err_irq = platform_get_irq(pdev, 0);
 if (err_irq <= 0) {
  dev_info(dev, "Can't get %pOF property 'interrupts'\n",
    node);
  return -ENODEV;
 }
 ret = devm_request_irq(dev, err_irq, qman_isr, IRQF_SHARED, "qman-err",
          dev);
 if (ret) {
  dev_err(dev, "devm_request_irq() failed %d for '%pOF'\n",
   ret, node);
  return ret;
 }





 qm_ccsr_out(REG_ERR_ISR, 0xffffffff);

 qm_ccsr_out(REG_ERR_IER, 0xffffffff);

 qm_fqalloc = devm_gen_pool_create(dev, 0, -1, "qman-fqalloc");
 if (IS_ERR(qm_fqalloc)) {
  ret = PTR_ERR(qm_fqalloc);
  dev_err(dev, "qman-fqalloc pool init failed (%d)\n", ret);
  return ret;
 }

 qm_qpalloc = devm_gen_pool_create(dev, 0, -1, "qman-qpalloc");
 if (IS_ERR(qm_qpalloc)) {
  ret = PTR_ERR(qm_qpalloc);
  dev_err(dev, "qman-qpalloc pool init failed (%d)\n", ret);
  return ret;
 }

 qm_cgralloc = devm_gen_pool_create(dev, 0, -1, "qman-cgralloc");
 if (IS_ERR(qm_cgralloc)) {
  ret = PTR_ERR(qm_cgralloc);
  dev_err(dev, "qman-cgralloc pool init failed (%d)\n", ret);
  return ret;
 }

 ret = qman_resource_init(dev);
 if (ret)
  return ret;

 ret = qman_alloc_fq_table(qm_get_fqid_maxcnt());
 if (ret)
  return ret;

 ret = qman_wq_alloc();
 if (ret)
  return ret;

 __qman_probed = 1;

 return 0;
}
