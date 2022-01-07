
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__* rtsi_shared_mux_usage; int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef scalar_t__ s8 ;


 int CR_CHAN (int) ;
 int EINVAL ;
 int NI_RTSI_BRD (int ) ;
 scalar_t__ get_ith_rtsi_brd_reg (int const,struct comedi_device*) ;
 scalar_t__ ni_lookup_route_register (int ,int,int *) ;
 int set_ith_rtsi_brd_reg (int const,int ,struct comedi_device*) ;

__attribute__((used)) static int decr_rtsi_brd_src_use(int src, int rtsi_brd,
     struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 s8 reg = ni_lookup_route_register(CR_CHAN(src), rtsi_brd,
       &devpriv->routing_tables);
 const int i = rtsi_brd - NI_RTSI_BRD(0);

 if (devpriv->rtsi_shared_mux_usage[i] > 0 &&
     get_ith_rtsi_brd_reg(i, dev) == reg) {
  --devpriv->rtsi_shared_mux_usage[i];
  if (!devpriv->rtsi_shared_mux_usage[i])
   set_ith_rtsi_brd_reg(i, 0, dev);
  return 0;
 }

 return -EINVAL;
}
