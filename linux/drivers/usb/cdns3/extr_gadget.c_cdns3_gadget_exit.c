
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_device {int size; struct cdns3_device* zlp_buf; int setup_dma; int setup_buf; int sysdev; int list; int dma; int buf; int aligned_buf_list; int gadget; } ;
struct cdns3_aligned_buf {int size; struct cdns3_aligned_buf* zlp_buf; int setup_dma; int setup_buf; int sysdev; int list; int dma; int buf; int aligned_buf_list; int gadget; } ;
struct cdns3 {struct cdns3_device* gadget_dev; int dev; int dev_irq; } ;


 int cdns3_drd_switch_gadget (struct cdns3*,int ) ;
 int cdns3_free_all_eps (struct cdns3_device*) ;
 struct cdns3_device* cdns3_next_align_buf (int *) ;
 int devm_free_irq (int ,int ,struct cdns3*) ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int kfree (struct cdns3_device*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int usb_del_gadget_udc (int *) ;

void cdns3_gadget_exit(struct cdns3 *cdns)
{
 struct cdns3_device *priv_dev;

 priv_dev = cdns->gadget_dev;

 devm_free_irq(cdns->dev, cdns->dev_irq, cdns);

 pm_runtime_mark_last_busy(cdns->dev);
 pm_runtime_put_autosuspend(cdns->dev);

 usb_del_gadget_udc(&priv_dev->gadget);

 cdns3_free_all_eps(priv_dev);

 while (!list_empty(&priv_dev->aligned_buf_list)) {
  struct cdns3_aligned_buf *buf;

  buf = cdns3_next_align_buf(&priv_dev->aligned_buf_list);
  dma_free_coherent(priv_dev->sysdev, buf->size,
      buf->buf,
      buf->dma);

  list_del(&buf->list);
  kfree(buf);
 }

 dma_free_coherent(priv_dev->sysdev, 8, priv_dev->setup_buf,
     priv_dev->setup_dma);

 kfree(priv_dev->zlp_buf);
 kfree(priv_dev);
 cdns->gadget_dev = ((void*)0);
 cdns3_drd_switch_gadget(cdns, 0);
}
