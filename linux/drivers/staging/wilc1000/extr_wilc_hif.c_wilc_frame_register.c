
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wilc_vif {int ndev; } ;
struct wilc_reg_frame {int reg; int frame_type; int reg_id; } ;
struct wid {int size; int * val; int type; int id; } ;
typedef int reg_frame ;




 int WID_REGISTER_FRAME ;
 int WID_STR ;
 int WILC_FW_ACTION_FRM_IDX ;
 int WILC_FW_PROBE_REQ_IDX ;
 int WILC_SET_CFG ;
 int cpu_to_le16 (int) ;
 int memset (struct wilc_reg_frame*,int,int) ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

void wilc_frame_register(struct wilc_vif *vif, u16 frame_type, bool reg)
{
 struct wid wid;
 int result;
 struct wilc_reg_frame reg_frame;

 wid.id = WID_REGISTER_FRAME;
 wid.type = WID_STR;
 wid.size = sizeof(reg_frame);
 wid.val = (u8 *)&reg_frame;

 memset(&reg_frame, 0x0, sizeof(reg_frame));
 reg_frame.reg = reg;

 switch (frame_type) {
 case 129:
  reg_frame.reg_id = WILC_FW_ACTION_FRM_IDX;
  break;

 case 128:
  reg_frame.reg_id = WILC_FW_PROBE_REQ_IDX;
  break;

 default:
  break;
 }
 reg_frame.frame_type = cpu_to_le16(frame_type);
 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to frame register\n");
}
