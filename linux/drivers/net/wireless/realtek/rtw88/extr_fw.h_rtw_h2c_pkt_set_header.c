
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int H2C_PKT_CATEGORY ;
 int H2C_PKT_CMD_ID ;
 int SET_PKT_H2C_CATEGORY (int *,int ) ;
 int SET_PKT_H2C_CMD_ID (int *,int ) ;
 int SET_PKT_H2C_SUB_CMD_ID (int *,int ) ;

__attribute__((used)) static inline void rtw_h2c_pkt_set_header(u8 *h2c_pkt, u8 sub_id)
{
 SET_PKT_H2C_CATEGORY(h2c_pkt, H2C_PKT_CATEGORY);
 SET_PKT_H2C_CMD_ID(h2c_pkt, H2C_PKT_CMD_ID);
 SET_PKT_H2C_SUB_CMD_ID(h2c_pkt, sub_id);
}
