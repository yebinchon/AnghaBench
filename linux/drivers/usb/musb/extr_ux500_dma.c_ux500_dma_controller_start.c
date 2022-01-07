
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct ux500_musb_board_data {void** dma_rx_param_array; void** dma_tx_param_array; int * dma_filter; } ;
struct ux500_dma_controller {struct ux500_dma_channel* tx_channel; struct ux500_dma_channel* rx_channel; struct musb* private_data; } ;
struct dma_channel {int max_len; int status; struct ux500_dma_channel* private_data; } ;
struct ux500_dma_channel {size_t ch_num; int is_tx; scalar_t__ dma_chan; struct dma_channel channel; struct ux500_dma_controller* controller; } ;
struct musb_hdrc_platform_data {struct ux500_musb_board_data* board_data; } ;
struct musb {struct device* controller; } ;
struct device {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 int EBUSY ;
 int EINVAL ;
 int ERR (char*,int,size_t) ;
 int MUSB_DMA_STATUS_FREE ;
 int SZ_16M ;
 size_t UX500_MUSB_DMA_NUM_RX_TX_CHANNELS ;
 int dev_err (struct device*,char*) ;
 struct musb_hdrc_platform_data* dev_get_platdata (struct device*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 scalar_t__ dma_request_channel (int ,int *,void*) ;
 scalar_t__ dma_request_slave_channel (struct device*,char*) ;
 scalar_t__ iep_chan_names ;
 scalar_t__ oep_chan_names ;
 int ux500_dma_controller_stop (struct ux500_dma_controller*) ;

__attribute__((used)) static int ux500_dma_controller_start(struct ux500_dma_controller *controller)
{
 struct ux500_dma_channel *ux500_channel = ((void*)0);
 struct musb *musb = controller->private_data;
 struct device *dev = musb->controller;
 struct musb_hdrc_platform_data *plat = dev_get_platdata(dev);
 struct ux500_musb_board_data *data;
 struct dma_channel *dma_channel = ((void*)0);
 char **chan_names;
 u32 ch_num;
 u8 dir;
 u8 is_tx = 0;

 void **param_array;
 struct ux500_dma_channel *channel_array;
 dma_cap_mask_t mask;

 if (!plat) {
  dev_err(musb->controller, "No platform data\n");
  return -EINVAL;
 }

 data = plat->board_data;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);


 channel_array = controller->rx_channel;
 param_array = data ? data->dma_rx_param_array : ((void*)0);
 chan_names = (char **)iep_chan_names;

 for (dir = 0; dir < 2; dir++) {
  for (ch_num = 0;
       ch_num < UX500_MUSB_DMA_NUM_RX_TX_CHANNELS;
       ch_num++) {
   ux500_channel = &channel_array[ch_num];
   ux500_channel->controller = controller;
   ux500_channel->ch_num = ch_num;
   ux500_channel->is_tx = is_tx;

   dma_channel = &(ux500_channel->channel);
   dma_channel->private_data = ux500_channel;
   dma_channel->status = MUSB_DMA_STATUS_FREE;
   dma_channel->max_len = SZ_16M;

   ux500_channel->dma_chan =
    dma_request_slave_channel(dev, chan_names[ch_num]);

   if (!ux500_channel->dma_chan)
    ux500_channel->dma_chan =
     dma_request_channel(mask,
           data ?
           data->dma_filter :
           ((void*)0),
           param_array ?
           param_array[ch_num] :
           ((void*)0));

   if (!ux500_channel->dma_chan) {
    ERR("Dma pipe allocation error dir=%d ch=%d\n",
     dir, ch_num);


    ux500_dma_controller_stop(controller);

    return -EBUSY;
   }

  }


  channel_array = controller->tx_channel;
  param_array = data ? data->dma_tx_param_array : ((void*)0);
  chan_names = (char **)oep_chan_names;
  is_tx = 1;
 }

 return 0;
}
