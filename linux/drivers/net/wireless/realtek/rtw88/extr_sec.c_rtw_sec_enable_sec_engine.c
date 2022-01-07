
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtw_sec_desc {int default_key_search; } ;
struct rtw_dev {struct rtw_sec_desc sec; } ;


 int REG_CR ;
 int RTW_SEC_CONFIG ;
 int RTW_SEC_ENGINE_EN ;
 int RTW_SEC_RX_BC_USE_DK ;
 int RTW_SEC_RX_DEC_EN ;
 int RTW_SEC_RX_UNI_USE_DK ;
 int RTW_SEC_TX_BC_USE_DK ;
 int RTW_SEC_TX_DEC_EN ;
 int RTW_SEC_TX_UNI_USE_DK ;
 int rtw_read16 (struct rtw_dev*,int ) ;
 int rtw_write16 (struct rtw_dev*,int ,int) ;

void rtw_sec_enable_sec_engine(struct rtw_dev *rtwdev)
{
 struct rtw_sec_desc *sec = &rtwdev->sec;
 u16 ctrl_reg;
 u16 sec_config;


 sec->default_key_search = 1;

 ctrl_reg = rtw_read16(rtwdev, REG_CR);
 ctrl_reg |= RTW_SEC_ENGINE_EN;
 rtw_write16(rtwdev, REG_CR, ctrl_reg);

 sec_config = rtw_read16(rtwdev, RTW_SEC_CONFIG);

 sec_config |= RTW_SEC_TX_DEC_EN | RTW_SEC_RX_DEC_EN;
 if (sec->default_key_search)
  sec_config |= RTW_SEC_TX_UNI_USE_DK | RTW_SEC_RX_UNI_USE_DK |
         RTW_SEC_TX_BC_USE_DK | RTW_SEC_RX_BC_USE_DK;

 rtw_write16(rtwdev, RTW_SEC_CONFIG, sec_config);
}
