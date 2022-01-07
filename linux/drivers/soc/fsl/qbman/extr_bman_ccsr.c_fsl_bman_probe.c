
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


 int BMAN_REV10 ;
 int BMAN_REV20 ;
 int BMAN_REV21 ;
 int BM_EIRQ_BSCN ;
 int BM_POOL_MAX ;
 int DPAA_GENALLOC_OFF ;
 int ENODEV ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REG_ERR_IER ;
 int REG_ERR_ISDR ;
 int REG_ERR_ISR ;
 int __bman_probed ;
 int bm_bpalloc ;
 int bm_ccsr_out (int ,int) ;
 int bm_ccsr_start ;
 int bm_get_version (int*,int*,int*) ;
 int bm_set_memory (int ,int ) ;
 int bman_ip_rev ;
 int bman_isr ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_info (struct device*,char*,struct device_node*) ;
 int devm_gen_pool_create (struct device*,int ,int,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct device*) ;
 int fbpr_a ;
 int fbpr_sz ;
 int gen_pool_add (int ,int ,int,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int qbman_init_private_mem (struct device*,int ,int *,int *) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int fsl_bman_probe(struct platform_device *pdev)
{
 int ret, err_irq;
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct resource *res;
 u16 id, bm_pool_cnt;
 u8 major, minor;

 __bman_probed = -1;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "Can't get %pOF property 'IORESOURCE_MEM'\n",
   node);
  return -ENXIO;
 }
 bm_ccsr_start = devm_ioremap(dev, res->start, resource_size(res));
 if (!bm_ccsr_start)
  return -ENXIO;

 bm_get_version(&id, &major, &minor);
 if (major == 1 && minor == 0) {
  bman_ip_rev = BMAN_REV10;
  bm_pool_cnt = BM_POOL_MAX;
 } else if (major == 2 && minor == 0) {
  bman_ip_rev = BMAN_REV20;
  bm_pool_cnt = 8;
 } else if (major == 2 && minor == 1) {
  bman_ip_rev = BMAN_REV21;
  bm_pool_cnt = BM_POOL_MAX;
 } else {
  dev_err(dev, "Unknown Bman version:%04x,%02x,%02x\n",
   id, major, minor);
  return -ENODEV;
 }





 if (!fbpr_a) {
  ret = qbman_init_private_mem(dev, 0, &fbpr_a, &fbpr_sz);
  if (ret) {
   dev_err(dev, "qbman_init_private_mem() failed 0x%x\n",
    ret);
   return -ENODEV;
  }
 }

 dev_dbg(dev, "Allocated FBPR 0x%llx 0x%zx\n", fbpr_a, fbpr_sz);

 bm_set_memory(fbpr_a, fbpr_sz);

 err_irq = platform_get_irq(pdev, 0);
 if (err_irq <= 0) {
  dev_info(dev, "Can't get %pOF IRQ\n", node);
  return -ENODEV;
 }
 ret = devm_request_irq(dev, err_irq, bman_isr, IRQF_SHARED, "bman-err",
          dev);
 if (ret) {
  dev_err(dev, "devm_request_irq() failed %d for '%pOF'\n",
   ret, node);
  return ret;
 }

 bm_ccsr_out(REG_ERR_ISDR, BM_EIRQ_BSCN);




 bm_ccsr_out(REG_ERR_ISR, 0xffffffff);

 bm_ccsr_out(REG_ERR_IER, 0xffffffff);

 bm_bpalloc = devm_gen_pool_create(dev, 0, -1, "bman-bpalloc");
 if (IS_ERR(bm_bpalloc)) {
  ret = PTR_ERR(bm_bpalloc);
  dev_err(dev, "bman-bpalloc pool init failed (%d)\n", ret);
  return ret;
 }


 ret = gen_pool_add(bm_bpalloc, DPAA_GENALLOC_OFF, bm_pool_cnt, -1);
 if (ret) {
  dev_err(dev, "Failed to seed BPID range [%d..%d] (%d)\n",
   0, bm_pool_cnt - 1, ret);
  return ret;
 }

 __bman_probed = 1;

 return 0;
}
