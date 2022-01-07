
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adp5061_state {int regmap; } ;


 int ADP5061_CHG_STATUS_1 ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int adp5061_get_status(struct adp5061_state *st,
         u8 *status1, u8 *status2)
{
 u8 buf[2];
 int ret;


 ret = regmap_bulk_read(st->regmap, ADP5061_CHG_STATUS_1,
          &buf[0], 2);
 if (ret < 0)
  return ret;

 *status1 = buf[0];
 *status2 = buf[1];

 return ret;
}
