
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int * rtsi_shared_mux_usage; int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef scalar_t__ s8 ;


 int CR_CHAN (int) ;
 int EBUSY ;
 int EINVAL ;
 int NI_RTSI_BRD (int) ;
 int NUM_RTSI_SHARED_MUXS ;
 scalar_t__ get_ith_rtsi_brd_reg (int,struct comedi_device*) ;
 scalar_t__ ni_lookup_route_register (int ,int,int *) ;
 int set_ith_rtsi_brd_reg (int,scalar_t__,struct comedi_device*) ;

__attribute__((used)) static int incr_rtsi_brd_src_use(int src, struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 int first_available = -1;
 int err = -EINVAL;
 s8 reg;
 int i;


 for (i = 0; i < NUM_RTSI_SHARED_MUXS; ++i) {
  reg = ni_lookup_route_register(CR_CHAN(src), NI_RTSI_BRD(i),
            &devpriv->routing_tables);

  if (reg < 0)
   continue;

  if (!devpriv->rtsi_shared_mux_usage[i]) {
   if (first_available < 0)

    first_available = i;
  } else {





   err = -EBUSY;

   if (get_ith_rtsi_brd_reg(i, dev) == reg) {




    goto success;
   }
  }
 }

 if (first_available < 0)
  return err;


 i = first_available;

success:
 ++devpriv->rtsi_shared_mux_usage[i];
 set_ith_rtsi_brd_reg(i, reg, dev);
 return NI_RTSI_BRD(i);
}
