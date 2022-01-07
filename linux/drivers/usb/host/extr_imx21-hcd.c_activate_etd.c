
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct imx21 {scalar_t__ regs; int dev; struct etd_priv* etd; } ;
struct etd_priv {int dma_handle; scalar_t__ len; scalar_t__ dmem_size; int active_count; int disactivated_frame; int last_int_frame; int last_req_frame; int bounce_buffer; int * submitted_dwords; int activated_frame; int cpu_buffer; int dmem_offset; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DEBUG_LOG_FRAME (struct imx21*,struct etd_priv*,int ) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ TD_DIR_IN ;
 int USBH_ETDDONEEN ;
 int USBH_ETDDONESTAT ;
 scalar_t__ USBH_ETDENSET ;
 scalar_t__ USBH_FRMNUB ;
 int USBH_XBUFSTAT ;
 int USBH_XFILLSTAT ;
 int USBH_YBUFSTAT ;
 int USBH_YFILLSTAT ;
 int USB_ETDDMACHANLCLR ;
 int USB_ETDDMAEN ;
 scalar_t__ USB_ETDSMSA (int) ;
 int activated ;
 int clear_toggle_bit (struct imx21*,int ,int) ;
 int copy_to_dmem (struct imx21*,int ,int ,scalar_t__) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int ,scalar_t__,int) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int etd_readl (struct imx21*,int,int) ;
 int free_dmem (struct imx21*,struct etd_priv*) ;
 int kfree (int ) ;
 int kmalloc (scalar_t__,int ) ;
 int kmemdup (int ,scalar_t__,int ) ;
 int nonisoc_urb_completed_for_etd (struct imx21*,struct etd_priv*,int ) ;
 int readl (scalar_t__) ;
 int set_register_bits (struct imx21*,int ,int) ;
 int set_toggle_bit (struct imx21*,int ,int) ;
 scalar_t__ unsuitable_for_dma (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void activate_etd(struct imx21 *imx21, int etd_num, u8 dir)
{
 u32 etd_mask = 1 << etd_num;
 struct etd_priv *etd = &imx21->etd[etd_num];

 if (etd->dma_handle && unsuitable_for_dma(etd->dma_handle)) {

  if (etd->len <= etd->dmem_size) {

   if (dir != TD_DIR_IN) {
    copy_to_dmem(imx21,
      etd->dmem_offset,
      etd->cpu_buffer, etd->len);
   }
   etd->dma_handle = 0;

  } else {

   enum dma_data_direction dmadir;

   if (dir == TD_DIR_IN) {
    dmadir = DMA_FROM_DEVICE;
    etd->bounce_buffer = kmalloc(etd->len,
        GFP_ATOMIC);
   } else {
    dmadir = DMA_TO_DEVICE;
    etd->bounce_buffer = kmemdup(etd->cpu_buffer,
        etd->len,
        GFP_ATOMIC);
   }
   if (!etd->bounce_buffer) {
    dev_err(imx21->dev, "failed bounce alloc\n");
    goto err_bounce_alloc;
   }

   etd->dma_handle =
    dma_map_single(imx21->dev,
      etd->bounce_buffer,
      etd->len,
      dmadir);
   if (dma_mapping_error(imx21->dev, etd->dma_handle)) {
    dev_err(imx21->dev, "failed bounce map\n");
    goto err_bounce_map;
   }
  }
 }

 clear_toggle_bit(imx21, USBH_ETDDONESTAT, etd_mask);
 set_register_bits(imx21, USBH_ETDDONEEN, etd_mask);
 clear_toggle_bit(imx21, USBH_XFILLSTAT, etd_mask);
 clear_toggle_bit(imx21, USBH_YFILLSTAT, etd_mask);

 if (etd->dma_handle) {
  set_register_bits(imx21, USB_ETDDMACHANLCLR, etd_mask);
  clear_toggle_bit(imx21, USBH_XBUFSTAT, etd_mask);
  clear_toggle_bit(imx21, USBH_YBUFSTAT, etd_mask);
  writel(etd->dma_handle, imx21->regs + USB_ETDSMSA(etd_num));
  set_register_bits(imx21, USB_ETDDMAEN, etd_mask);
 } else {
  if (dir != TD_DIR_IN) {

   set_toggle_bit(imx21, USBH_XFILLSTAT, etd_mask);
   set_toggle_bit(imx21, USBH_YFILLSTAT, etd_mask);
  }
 }

 DEBUG_LOG_FRAME(imx21, etd, activated);
 etd->active_count = 1;
 writel(etd_mask, imx21->regs + USBH_ETDENSET);
 return;

err_bounce_map:
 kfree(etd->bounce_buffer);

err_bounce_alloc:
 free_dmem(imx21, etd);
 nonisoc_urb_completed_for_etd(imx21, etd, -ENOMEM);
}
