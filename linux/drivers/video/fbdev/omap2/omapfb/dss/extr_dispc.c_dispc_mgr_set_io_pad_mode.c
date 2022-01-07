
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dss_io_pad_mode { ____Placeholder_dss_io_pad_mode } dss_io_pad_mode ;


 int BUG () ;
 int DISPC_CONTROL ;



 int FLD_MOD (int ,int,int,int) ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int ) ;

__attribute__((used)) static void dispc_mgr_set_io_pad_mode(enum dss_io_pad_mode mode)
{
 u32 l;
 int gpout0, gpout1;

 switch (mode) {
 case 129:
  gpout0 = 0;
  gpout1 = 0;
  break;
 case 128:
  gpout0 = 1;
  gpout1 = 0;
  break;
 case 130:
  gpout0 = 1;
  gpout1 = 1;
  break;
 default:
  BUG();
  return;
 }

 l = dispc_read_reg(DISPC_CONTROL);
 l = FLD_MOD(l, gpout0, 15, 15);
 l = FLD_MOD(l, gpout1, 16, 16);
 dispc_write_reg(DISPC_CONTROL, l);
}
