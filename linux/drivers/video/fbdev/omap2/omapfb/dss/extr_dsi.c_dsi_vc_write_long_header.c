
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int vc_id; } ;


 int DSI_VC_LONG_PACKET_HEADER (int) ;
 int FLD_VAL (int,int,int) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_write_reg (struct platform_device*,int ,int) ;

__attribute__((used)) static inline void dsi_vc_write_long_header(struct platform_device *dsidev,
  int channel, u8 data_type, u16 len, u8 ecc)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 u32 val;
 u8 data_id;

 WARN_ON(!dsi_bus_is_locked(dsidev));

 data_id = data_type | dsi->vc[channel].vc_id << 6;

 val = FLD_VAL(data_id, 7, 0) | FLD_VAL(len, 23, 8) |
  FLD_VAL(ecc, 31, 24);

 dsi_write_reg(dsidev, DSI_VC_LONG_PACKET_HEADER(channel), val);
}
