
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {scalar_t__* ampdu_factor_cnt; int max_psdu; } ;


 int MAX_LEN_CFG ;
 int MAX_LEN_CFG_MAX_PSDU ;
 int min (int ,int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2800_set_max_psdu_len(struct rt2x00_dev *rt2x00dev)
{
 u8 i, max_psdu;
 u32 reg;
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;

 for (i = 0; i < 3; i++)
  if (drv_data->ampdu_factor_cnt[i] > 0)
   break;

 max_psdu = min(drv_data->max_psdu, i);

 reg = rt2800_register_read(rt2x00dev, MAX_LEN_CFG);
 rt2x00_set_field32(&reg, MAX_LEN_CFG_MAX_PSDU, max_psdu);
 rt2800_register_write(rt2x00dev, MAX_LEN_CFG, reg);
}
