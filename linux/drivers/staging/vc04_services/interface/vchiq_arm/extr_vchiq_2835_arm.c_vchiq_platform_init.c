
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vchiq_state {int dummy; } ;
struct vchiq_slot_zero {int* platform_data; } ;
struct vchiq_drvdata {int cache_line_size; struct rpi_firmware* fw; } ;
struct rpi_firmware {int dummy; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef scalar_t__ dma_addr_t ;
typedef int channelbase ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_IRQPOLL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_FRAGMENTS ;
 int PAGE_ALIGN (int) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int RPI_FIRMWARE_VCHIQ_INIT ;
 int TOTAL_SLOTS ;
 size_t VCHIQ_PLATFORM_FRAGMENTS_COUNT_IDX ;
 size_t VCHIQ_PLATFORM_FRAGMENTS_OFFSET_IDX ;
 int VCHIQ_SLOT_SIZE ;
 scalar_t__ VCHIQ_SUCCESS ;
 int WARN_ON (int) ;
 int dev_err (struct device*,char*,...) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct vchiq_state*) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 void* dmam_alloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int g_cache_line_size ;
 struct device* g_dev ;
 char* g_fragments_base ;
 int g_fragments_size ;
 char* g_free_fragments ;
 int g_free_fragments_sema ;
 int g_regs ;
 struct vchiq_drvdata* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int rpi_firmware_property (struct rpi_firmware*,int ,scalar_t__*,int) ;
 int sema_init (int *,int) ;
 int vchiq_arm_log_level ;
 int vchiq_call_connected_callbacks () ;
 int vchiq_doorbell_irq ;
 struct vchiq_slot_zero* vchiq_init_slots (void*,int) ;
 scalar_t__ vchiq_init_state (struct vchiq_state*,struct vchiq_slot_zero*) ;
 int vchiq_log_info (int ,char*,struct vchiq_slot_zero*,scalar_t__*) ;

int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
{
 struct device *dev = &pdev->dev;
 struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
 struct rpi_firmware *fw = drvdata->fw;
 struct vchiq_slot_zero *vchiq_slot_zero;
 struct resource *res;
 void *slot_mem;
 dma_addr_t slot_phys;
 u32 channelbase;
 int slot_mem_size, frag_mem_size;
 int err, irq, i;





 err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));

 if (err < 0)
  return err;

 g_cache_line_size = drvdata->cache_line_size;
 g_fragments_size = 2 * g_cache_line_size;


 slot_mem_size = PAGE_ALIGN(TOTAL_SLOTS * VCHIQ_SLOT_SIZE);
 frag_mem_size = PAGE_ALIGN(g_fragments_size * MAX_FRAGMENTS);

 slot_mem = dmam_alloc_coherent(dev, slot_mem_size + frag_mem_size,
           &slot_phys, GFP_KERNEL);
 if (!slot_mem) {
  dev_err(dev, "could not allocate DMA memory\n");
  return -ENOMEM;
 }

 WARN_ON(((unsigned long)slot_mem & (PAGE_SIZE - 1)) != 0);

 vchiq_slot_zero = vchiq_init_slots(slot_mem, slot_mem_size);
 if (!vchiq_slot_zero)
  return -EINVAL;

 vchiq_slot_zero->platform_data[VCHIQ_PLATFORM_FRAGMENTS_OFFSET_IDX] =
  (int)slot_phys + slot_mem_size;
 vchiq_slot_zero->platform_data[VCHIQ_PLATFORM_FRAGMENTS_COUNT_IDX] =
  MAX_FRAGMENTS;

 g_fragments_base = (char *)slot_mem + slot_mem_size;

 g_free_fragments = g_fragments_base;
 for (i = 0; i < (MAX_FRAGMENTS - 1); i++) {
  *(char **)&g_fragments_base[i*g_fragments_size] =
   &g_fragments_base[(i + 1)*g_fragments_size];
 }
 *(char **)&g_fragments_base[i * g_fragments_size] = ((void*)0);
 sema_init(&g_free_fragments_sema, MAX_FRAGMENTS);

 if (vchiq_init_state(state, vchiq_slot_zero) != VCHIQ_SUCCESS)
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 g_regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(g_regs))
  return PTR_ERR(g_regs);

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return irq;

 err = devm_request_irq(dev, irq, vchiq_doorbell_irq, IRQF_IRQPOLL,
          "VCHIQ doorbell", state);
 if (err) {
  dev_err(dev, "failed to register irq=%d\n", irq);
  return err;
 }


 channelbase = slot_phys;
 err = rpi_firmware_property(fw, RPI_FIRMWARE_VCHIQ_INIT,
        &channelbase, sizeof(channelbase));
 if (err || channelbase) {
  dev_err(dev, "failed to set channelbase\n");
  return err ? : -ENXIO;
 }

 g_dev = dev;
 vchiq_log_info(vchiq_arm_log_level,
  "vchiq_init - done (slots %pK, phys %pad)",
  vchiq_slot_zero, &slot_phys);

 vchiq_call_connected_callbacks();

 return 0;
}
