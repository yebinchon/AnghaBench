
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_type; } ;
struct most_channel {TYPE_1__ cfg; } ;
struct TYPE_5__ {int most_ch_data_type; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 TYPE_2__* ch_data_type ;
 struct most_channel* get_channel (char*,char*) ;
 int pr_info (char*) ;
 int strcmp (char*,int ) ;

int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
{
 int i;
 struct most_channel *c = get_channel(mdev, mdev_ch);

 if (!c)
  return -ENODEV;
 for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
  if (!strcmp(buf, ch_data_type[i].name)) {
   c->cfg.data_type = ch_data_type[i].most_ch_data_type;
   break;
  }
 }

 if (i == ARRAY_SIZE(ch_data_type))
  pr_info("WARN: invalid attribute settings\n");
 return 0;
}
