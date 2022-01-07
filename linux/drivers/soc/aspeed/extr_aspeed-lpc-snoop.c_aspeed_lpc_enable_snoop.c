
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct device {int dummy; } ;
struct aspeed_lpc_snoop_model_data {scalar_t__ has_hicrb_ensnp; } ;
struct aspeed_lpc_snoop {int regmap; TYPE_1__* chan; } ;
struct TYPE_4__ {struct device* parent; int * fops; int name; int minor; } ;
struct TYPE_3__ {TYPE_2__ miscdev; int fifo; int wq; } ;


 int DEVICE_NAME ;
 int EINVAL ;
 int GFP_KERNEL ;
 int HICR5 ;
 int HICR5_ENINT_SNP0W ;
 int HICR5_ENINT_SNP1W ;
 int HICR5_EN_SNP0W ;
 int HICR5_EN_SNP1W ;
 int HICRB ;
 int HICRB_ENSNP0D ;
 int HICRB_ENSNP1D ;
 int MISC_DYNAMIC_MINOR ;
 int SNOOP_FIFO_SIZE ;
 int SNPWADR ;
 int SNPWADR_CH0_MASK ;
 int SNPWADR_CH0_SHIFT ;
 int SNPWADR_CH1_MASK ;
 int SNPWADR_CH1_SHIFT ;
 int devm_kasprintf (struct device*,int ,char*,int ,int) ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int *,int ,int ) ;
 int misc_register (TYPE_2__*) ;
 struct aspeed_lpc_snoop_model_data* of_device_get_match_data (struct device*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snoop_fops ;

__attribute__((used)) static int aspeed_lpc_enable_snoop(struct aspeed_lpc_snoop *lpc_snoop,
       struct device *dev,
       int channel, u16 lpc_port)
{
 int rc = 0;
 u32 hicr5_en, snpwadr_mask, snpwadr_shift, hicrb_en;
 const struct aspeed_lpc_snoop_model_data *model_data =
  of_device_get_match_data(dev);

 init_waitqueue_head(&lpc_snoop->chan[channel].wq);

 rc = kfifo_alloc(&lpc_snoop->chan[channel].fifo,
    SNOOP_FIFO_SIZE, GFP_KERNEL);
 if (rc)
  return rc;

 lpc_snoop->chan[channel].miscdev.minor = MISC_DYNAMIC_MINOR;
 lpc_snoop->chan[channel].miscdev.name =
  devm_kasprintf(dev, GFP_KERNEL, "%s%d", DEVICE_NAME, channel);
 lpc_snoop->chan[channel].miscdev.fops = &snoop_fops;
 lpc_snoop->chan[channel].miscdev.parent = dev;
 rc = misc_register(&lpc_snoop->chan[channel].miscdev);
 if (rc)
  return rc;


 switch (channel) {
 case 0:
  hicr5_en = HICR5_EN_SNP0W | HICR5_ENINT_SNP0W;
  snpwadr_mask = SNPWADR_CH0_MASK;
  snpwadr_shift = SNPWADR_CH0_SHIFT;
  hicrb_en = HICRB_ENSNP0D;
  break;
 case 1:
  hicr5_en = HICR5_EN_SNP1W | HICR5_ENINT_SNP1W;
  snpwadr_mask = SNPWADR_CH1_MASK;
  snpwadr_shift = SNPWADR_CH1_SHIFT;
  hicrb_en = HICRB_ENSNP1D;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(lpc_snoop->regmap, HICR5, hicr5_en, hicr5_en);
 regmap_update_bits(lpc_snoop->regmap, SNPWADR, snpwadr_mask,
      lpc_port << snpwadr_shift);
 if (model_data->has_hicrb_ensnp)
  regmap_update_bits(lpc_snoop->regmap, HICRB,
    hicrb_en, hicrb_en);

 return rc;
}
