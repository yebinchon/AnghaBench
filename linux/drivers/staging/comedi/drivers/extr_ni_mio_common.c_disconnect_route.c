
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int counter_dev; int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef scalar_t__ s8 ;


 int COMEDI_INPUT ;
 int CR_CHAN (unsigned int) ;
 int EINVAL ;
 unsigned int NI_CtrOut (int) ;
 int NI_PFI_OUTPUT_PFI_DEFAULT ;
 scalar_t__ NI_RTSI_OUTPUT_RGOUT0 ;
 unsigned int TRIGGER_LINE (int ) ;
 scalar_t__ channel_is_ctr (unsigned int) ;
 scalar_t__ channel_is_pfi (unsigned int) ;
 scalar_t__ channel_is_rtsi (unsigned int) ;
 int decr_rgout0_src_use (unsigned int,struct comedi_device*) ;
 int decr_rtsi_brd_src_use (unsigned int,int,struct comedi_device*) ;
 scalar_t__* default_rtsi_routing ;
 unsigned int get_output_select_source (unsigned int,struct comedi_device*) ;
 scalar_t__ ni_disable_gout_routing (unsigned int,struct comedi_device*) ;
 int ni_find_route_source (int ,unsigned int,int *) ;
 int ni_get_rtsi_routing (struct comedi_device*,unsigned int) ;
 scalar_t__ ni_route_to_register (int ,unsigned int,int *) ;
 scalar_t__ ni_rtsi_route_requires_mux (scalar_t__) ;
 int ni_set_pfi_direction (struct comedi_device*,unsigned int,int ) ;
 int ni_set_pfi_routing (struct comedi_device*,unsigned int,int ) ;
 int ni_set_rtsi_direction (struct comedi_device*,unsigned int,int ) ;
 int ni_set_rtsi_routing (struct comedi_device*,unsigned int,scalar_t__) ;
 int ni_tio_unset_routing (int ,unsigned int) ;

__attribute__((used)) static int disconnect_route(unsigned int src, unsigned int dest,
       struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 s8 reg = ni_route_to_register(CR_CHAN(src), dest,
          &devpriv->routing_tables);

 if (reg < 0)

  return -EINVAL;
 if (get_output_select_source(dest, dev) != src)

  return -EINVAL;


 if (channel_is_pfi(dest)) {

  ni_set_pfi_direction(dev, dest, COMEDI_INPUT);
  ni_set_pfi_routing(dev, dest, NI_PFI_OUTPUT_PFI_DEFAULT);
 } else if (channel_is_rtsi(dest)) {
  if (reg == NI_RTSI_OUTPUT_RGOUT0) {
   int ret = decr_rgout0_src_use(src, dev);

   if (ret < 0)
    return ret;
  } else if (ni_rtsi_route_requires_mux(reg)) {

   int brd = ni_find_route_source(
    ni_get_rtsi_routing(dev, dest), dest,
    &devpriv->routing_tables);

   if (brd < 0)
    return brd;


   decr_rtsi_brd_src_use(src, brd, dev);
  }


  reg = default_rtsi_routing[dest - TRIGGER_LINE(0)];
  ni_set_rtsi_direction(dev, dest, COMEDI_INPUT);
  ni_set_rtsi_routing(dev, dest, reg);
 } else if (dest >= NI_CtrOut(0) && dest <= NI_CtrOut(-1)) {




  dest -= NI_CtrOut(0);
  if (dest > 1)

   return -EINVAL;
  reg = ni_disable_gout_routing(dest, dev);
 } else if (channel_is_ctr(dest)) {
  ni_tio_unset_routing(devpriv->counter_dev, dest);
 } else {
  return -EINVAL;
 }
 return 0;
}
