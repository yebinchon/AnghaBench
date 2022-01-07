
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct rtw_fw_state {void* sub_index; void* sub_version; void* version; void* h2c_version; TYPE_1__* firmware; } ;
struct rtw_dev {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {void** data; } ;


 int FW_HDR_H2C_FMT_VER ;
 int FW_HDR_SUBINDEX ;
 int FW_HDR_SUBVERSION ;
 int FW_HDR_VERSION ;
 int RTW_DBG_FW ;
 void* le16_to_cpu (int ) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,void*) ;

__attribute__((used)) static void update_firmware_info(struct rtw_dev *rtwdev,
     struct rtw_fw_state *fw)
{
 const u8 *data = fw->firmware->data;

 fw->h2c_version =
  le16_to_cpu(*((__le16 *)(data + FW_HDR_H2C_FMT_VER)));
 fw->version =
  le16_to_cpu(*((__le16 *)(data + FW_HDR_VERSION)));
 fw->sub_version = *(data + FW_HDR_SUBVERSION);
 fw->sub_index = *(data + FW_HDR_SUBINDEX);

 rtw_dbg(rtwdev, RTW_DBG_FW, "fw h2c version: %x\n", fw->h2c_version);
 rtw_dbg(rtwdev, RTW_DBG_FW, "fw version:     %x\n", fw->version);
 rtw_dbg(rtwdev, RTW_DBG_FW, "fw sub version: %x\n", fw->sub_version);
 rtw_dbg(rtwdev, RTW_DBG_FW, "fw sub index:   %x\n", fw->sub_index);
}
