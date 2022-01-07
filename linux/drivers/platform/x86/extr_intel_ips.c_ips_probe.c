
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct ips_driver {int second_cpu; int mcp_power_limit; int core_power_limit; int poll_turbo_status; int gpu_turbo_enabled; int orig_turbo_limit; int cpu_turbo_enabled; int mcp_temp_limit; int irq; int adjust; int monitor; void* mgta_val; void* pta_val; void* cta_val; int regmap; int limits; int * dev; int turbo_status_lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HTS2_PRST_RUNNING ;
 int HTS2_PRST_SHIFT ;
 int HTS_NVV ;
 int HTS_PCPL_SHIFT ;
 int HTS_PTL_SHIFT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PCI_IRQ_LEGACY ;
 int PLATFORM_INFO ;
 int PLATFORM_TDP ;
 int PSP_PBRT ;
 int TEN_UPDATE_EN ;
 int THM_CTA ;
 int THM_HTS ;
 int THM_HTSHI ;
 int THM_MGTA ;
 int THM_PSC ;
 int THM_PTA ;
 int THM_TEN ;
 int THM_TRC ;
 int THM_TSE ;
 int THM_TSPIEN ;
 int TRC_CORE1_EN ;
 int TRC_CORE2_EN ;
 int TRC_CORE_PWR ;
 int TRC_MCH_EN ;
 scalar_t__ TSE_EN ;
 int TSPIEN_AUX2_LOHI ;
 int TSPIEN_AUX_LOHI ;
 int TSPIEN_CRIT_LOHI ;
 int TSPIEN_HOT_LOHI ;
 int TURBO_POWER_CURRENT_LIMIT ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 struct ips_driver* devm_kzalloc (int *,int,int ) ;
 scalar_t__ dmi_check_system (int ) ;
 int free_irq (int ,struct ips_driver*) ;
 int ips_adjust ;
 int ips_blacklist ;
 int ips_debugfs_init (struct ips_driver*) ;
 int ips_detect_cpu (struct ips_driver*) ;
 int ips_disable_cpu_turbo (struct ips_driver*) ;
 int ips_get_i915_syms (struct ips_driver*) ;
 int ips_irq_handler ;
 int ips_monitor ;
 int kthread_create (int ,struct ips_driver*,char*) ;
 int kthread_run (int ,struct ips_driver*,char*) ;
 int kthread_stop (int ) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct ips_driver*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 int rdmsrl (int ,int) ;
 int request_irq (int ,int ,int ,char*,struct ips_driver*) ;
 int spin_lock_init (int *) ;
 scalar_t__ thm_readb (int ) ;
 int thm_readl (int ) ;
 void* thm_readw (int ) ;
 int thm_writeb (int ,int) ;
 int thm_writel (int ,int) ;
 int thm_writew (int ,int) ;
 int update_turbo_limits (struct ips_driver*) ;

__attribute__((used)) static int ips_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 u64 platform_info;
 struct ips_driver *ips;
 u32 hts;
 int ret = 0;
 u16 htshi, trc, trc_required_mask;
 u8 tse;

 if (dmi_check_system(ips_blacklist))
  return -ENODEV;

 ips = devm_kzalloc(&dev->dev, sizeof(*ips), GFP_KERNEL);
 if (!ips)
  return -ENOMEM;

 spin_lock_init(&ips->turbo_status_lock);
 ips->dev = &dev->dev;

 ips->limits = ips_detect_cpu(ips);
 if (!ips->limits) {
  dev_info(&dev->dev, "IPS not supported on this CPU\n");
  return -ENXIO;
 }

 ret = pcim_enable_device(dev);
 if (ret) {
  dev_err(&dev->dev, "can't enable PCI device, aborting\n");
  return ret;
 }

 ret = pcim_iomap_regions(dev, 1 << 0, pci_name(dev));
 if (ret) {
  dev_err(&dev->dev, "failed to map thermal regs, aborting\n");
  return ret;
 }
 ips->regmap = pcim_iomap_table(dev)[0];

 pci_set_drvdata(dev, ips);

 tse = thm_readb(THM_TSE);
 if (tse != TSE_EN) {
  dev_err(&dev->dev, "thermal device not enabled (0x%02x), aborting\n", tse);
  return -ENXIO;
 }

 trc = thm_readw(THM_TRC);
 trc_required_mask = TRC_CORE1_EN | TRC_CORE_PWR | TRC_MCH_EN;
 if ((trc & trc_required_mask) != trc_required_mask) {
  dev_err(&dev->dev, "thermal reporting for required devices not enabled, aborting\n");
  return -ENXIO;
 }

 if (trc & TRC_CORE2_EN)
  ips->second_cpu = 1;

 update_turbo_limits(ips);
 dev_dbg(&dev->dev, "max cpu power clamp: %dW\n",
  ips->mcp_power_limit / 10);
 dev_dbg(&dev->dev, "max core power clamp: %dW\n",
  ips->core_power_limit / 10);

 if (thm_readl(THM_PSC) & PSP_PBRT)
  ips->poll_turbo_status = 1;

 if (!ips_get_i915_syms(ips)) {
  dev_info(&dev->dev, "failed to get i915 symbols, graphics turbo disabled until i915 loads\n");
  ips->gpu_turbo_enabled = 0;
 } else {
  dev_dbg(&dev->dev, "graphics turbo enabled\n");
  ips->gpu_turbo_enabled = 1;
 }





 rdmsrl(PLATFORM_INFO, platform_info);
 if (!(platform_info & PLATFORM_TDP)) {
  dev_err(&dev->dev, "platform indicates TDP override unavailable, aborting\n");
  return -ENODEV;
 }





 ret = pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_LEGACY);
 if (ret < 0)
  return ret;

 ips->irq = pci_irq_vector(dev, 0);

 ret = request_irq(ips->irq, ips_irq_handler, IRQF_SHARED, "ips", ips);
 if (ret) {
  dev_err(&dev->dev, "request irq failed, aborting\n");
  return ret;
 }


 thm_writeb(THM_TSPIEN, TSPIEN_AUX2_LOHI | TSPIEN_CRIT_LOHI |
     TSPIEN_HOT_LOHI | TSPIEN_AUX_LOHI);
 thm_writeb(THM_TEN, TEN_UPDATE_EN);


 ips->cta_val = thm_readw(THM_CTA);
 ips->pta_val = thm_readw(THM_PTA);
 ips->mgta_val = thm_readw(THM_MGTA);


 rdmsrl(TURBO_POWER_CURRENT_LIMIT, ips->orig_turbo_limit);

 ips_disable_cpu_turbo(ips);
 ips->cpu_turbo_enabled = 0;


 ips->adjust = kthread_create(ips_adjust, ips, "ips-adjust");
 if (IS_ERR(ips->adjust)) {
  dev_err(&dev->dev,
   "failed to create thermal adjust thread, aborting\n");
  ret = -ENOMEM;
  goto error_free_irq;

 }





 ips->monitor = kthread_run(ips_monitor, ips, "ips-monitor");
 if (IS_ERR(ips->monitor)) {
  dev_err(&dev->dev,
   "failed to create thermal monitor thread, aborting\n");
  ret = -ENOMEM;
  goto error_thread_cleanup;
 }

 hts = (ips->core_power_limit << HTS_PCPL_SHIFT) |
  (ips->mcp_temp_limit << HTS_PTL_SHIFT) | HTS_NVV;
 htshi = HTS2_PRST_RUNNING << HTS2_PRST_SHIFT;

 thm_writew(THM_HTSHI, htshi);
 thm_writel(THM_HTS, hts);

 ips_debugfs_init(ips);

 dev_info(&dev->dev, "IPS driver initialized, MCP temp limit %d\n",
   ips->mcp_temp_limit);
 return ret;

error_thread_cleanup:
 kthread_stop(ips->adjust);
error_free_irq:
 free_irq(ips->irq, ips);
 pci_free_irq_vectors(dev);
 return ret;
}
