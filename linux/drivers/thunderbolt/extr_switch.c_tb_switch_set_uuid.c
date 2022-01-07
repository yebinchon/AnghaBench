
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid ;
typedef int u32 ;
struct tb_switch {int uid; int uuid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmemdup (int*,int,int ) ;
 int tb_lc_read_uuid (struct tb_switch*,int*) ;

__attribute__((used)) static int tb_switch_set_uuid(struct tb_switch *sw)
{
 u32 uuid[4];
 int ret;

 if (sw->uuid)
  return 0;





 ret = tb_lc_read_uuid(sw, uuid);
 if (ret) {






  uuid[0] = sw->uid & 0xffffffff;
  uuid[1] = (sw->uid >> 32) & 0xffffffff;
  uuid[2] = 0xffffffff;
  uuid[3] = 0xffffffff;
 }

 sw->uuid = kmemdup(uuid, sizeof(uuid), GFP_KERNEL);
 if (!sw->uuid)
  return -ENOMEM;
 return 0;
}
