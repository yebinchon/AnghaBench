
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pl022_config_chip {scalar_t__ iface; scalar_t__ hierarchy; scalar_t__ com_mode; int rx_lev_trig; int tx_lev_trig; scalar_t__ ctrl_len; scalar_t__ wait_state; scalar_t__ duplex; } ;
struct pl022 {TYPE_2__* adev; TYPE_1__* vendor; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int fifodepth; scalar_t__ extended_cr; int unidir; } ;


 scalar_t__ DMA_TRANSFER ;
 int EINVAL ;
 scalar_t__ INTERRUPT_TRANSFER ;
 scalar_t__ POLLING_TRANSFER ;
 scalar_t__ SSP_BITS_32 ;
 scalar_t__ SSP_BITS_4 ;
 scalar_t__ SSP_INTERFACE_MOTOROLA_SPI ;
 scalar_t__ SSP_INTERFACE_NATIONAL_MICROWIRE ;
 scalar_t__ SSP_INTERFACE_UNIDIRECTIONAL ;
 scalar_t__ SSP_MASTER ;
 scalar_t__ SSP_MICROWIRE_CHANNEL_FULL_DUPLEX ;
 scalar_t__ SSP_MICROWIRE_CHANNEL_HALF_DUPLEX ;
 scalar_t__ SSP_MWIRE_WAIT_ONE ;
 scalar_t__ SSP_MWIRE_WAIT_ZERO ;





 scalar_t__ SSP_SLAVE ;





 int dev_err (int *,char*) ;

__attribute__((used)) static int verify_controller_parameters(struct pl022 *pl022,
    struct pl022_config_chip const *chip_info)
{
 if ((chip_info->iface < SSP_INTERFACE_MOTOROLA_SPI)
     || (chip_info->iface > SSP_INTERFACE_UNIDIRECTIONAL)) {
  dev_err(&pl022->adev->dev,
   "interface is configured incorrectly\n");
  return -EINVAL;
 }
 if ((chip_info->iface == SSP_INTERFACE_UNIDIRECTIONAL) &&
     (!pl022->vendor->unidir)) {
  dev_err(&pl022->adev->dev,
   "unidirectional mode not supported in this "
   "hardware version\n");
  return -EINVAL;
 }
 if ((chip_info->hierarchy != SSP_MASTER)
     && (chip_info->hierarchy != SSP_SLAVE)) {
  dev_err(&pl022->adev->dev,
   "hierarchy is configured incorrectly\n");
  return -EINVAL;
 }
 if ((chip_info->com_mode != INTERRUPT_TRANSFER)
     && (chip_info->com_mode != DMA_TRANSFER)
     && (chip_info->com_mode != POLLING_TRANSFER)) {
  dev_err(&pl022->adev->dev,
   "Communication mode is configured incorrectly\n");
  return -EINVAL;
 }
 switch (chip_info->rx_lev_trig) {
 case 136:
 case 134:
 case 133:

  break;
 case 137:
  if (pl022->vendor->fifodepth < 16) {
   dev_err(&pl022->adev->dev,
   "RX FIFO Trigger Level is configured incorrectly\n");
   return -EINVAL;
  }
  break;
 case 135:
  if (pl022->vendor->fifodepth < 32) {
   dev_err(&pl022->adev->dev,
   "RX FIFO Trigger Level is configured incorrectly\n");
   return -EINVAL;
  }
  break;
 default:
  dev_err(&pl022->adev->dev,
   "RX FIFO Trigger Level is configured incorrectly\n");
  return -EINVAL;
 }
 switch (chip_info->tx_lev_trig) {
 case 131:
 case 129:
 case 128:

  break;
 case 132:
  if (pl022->vendor->fifodepth < 16) {
   dev_err(&pl022->adev->dev,
   "TX FIFO Trigger Level is configured incorrectly\n");
   return -EINVAL;
  }
  break;
 case 130:
  if (pl022->vendor->fifodepth < 32) {
   dev_err(&pl022->adev->dev,
   "TX FIFO Trigger Level is configured incorrectly\n");
   return -EINVAL;
  }
  break;
 default:
  dev_err(&pl022->adev->dev,
   "TX FIFO Trigger Level is configured incorrectly\n");
  return -EINVAL;
 }
 if (chip_info->iface == SSP_INTERFACE_NATIONAL_MICROWIRE) {
  if ((chip_info->ctrl_len < SSP_BITS_4)
      || (chip_info->ctrl_len > SSP_BITS_32)) {
   dev_err(&pl022->adev->dev,
    "CTRL LEN is configured incorrectly\n");
   return -EINVAL;
  }
  if ((chip_info->wait_state != SSP_MWIRE_WAIT_ZERO)
      && (chip_info->wait_state != SSP_MWIRE_WAIT_ONE)) {
   dev_err(&pl022->adev->dev,
    "Wait State is configured incorrectly\n");
   return -EINVAL;
  }

  if (pl022->vendor->extended_cr) {
   if ((chip_info->duplex !=
        SSP_MICROWIRE_CHANNEL_FULL_DUPLEX)
       && (chip_info->duplex !=
    SSP_MICROWIRE_CHANNEL_HALF_DUPLEX)) {
    dev_err(&pl022->adev->dev,
     "Microwire duplex mode is configured incorrectly\n");
    return -EINVAL;
   }
  } else {
   if (chip_info->duplex != SSP_MICROWIRE_CHANNEL_FULL_DUPLEX)
    dev_err(&pl022->adev->dev,
     "Microwire half duplex mode requested,"
     " but this is only available in the"
     " ST version of PL022\n");
   return -EINVAL;
  }
 }
 return 0;
}
