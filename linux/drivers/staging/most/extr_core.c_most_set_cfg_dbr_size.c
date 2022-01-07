
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dbr_size; } ;
struct most_channel {TYPE_1__ cfg; } ;


 int ENODEV ;
 struct most_channel* get_channel (char*,char*) ;

int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val)
{
 struct most_channel *c = get_channel(mdev, mdev_ch);

 if (!c)
  return -ENODEV;
 c->cfg.dbr_size = val;
 return 0;
}
