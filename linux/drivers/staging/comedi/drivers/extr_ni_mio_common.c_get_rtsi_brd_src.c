
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI_RTSI_BRD (int) ;
 int get_ith_rtsi_brd_reg (int,struct comedi_device*) ;
 int ni_find_route_source (int,int,int *) ;

__attribute__((used)) static inline int get_rtsi_brd_src(int brd, struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 int brd_index = brd;
 int reg;

 if (brd >= NI_RTSI_BRD(0))
  brd_index = brd - NI_RTSI_BRD(0);
 else
  brd = NI_RTSI_BRD(brd);






 reg = get_ith_rtsi_brd_reg(brd_index, dev);

 return ni_find_route_source(reg, brd, &devpriv->routing_tables);
}
