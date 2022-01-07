
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;




 int min (int ,int ) ;

__attribute__((used)) static s32 get_poc(enum v4l2_field field, s32 top_field_order_cnt,
     s32 bottom_field_order_cnt)
{
 switch (field) {
 case 128:
  return top_field_order_cnt;
 case 129:
  return bottom_field_order_cnt;
 default:
  break;
 }

 return min(top_field_order_cnt, bottom_field_order_cnt);
}
