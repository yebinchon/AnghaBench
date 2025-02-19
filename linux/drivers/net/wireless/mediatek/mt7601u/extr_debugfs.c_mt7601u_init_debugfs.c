
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt7601u_dev {int debugfs_reg; int temp_mode; int raw_temp; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int debugfsdir; } ;


 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mt7601u_dev*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int fops_ampdu_stat ;
 int fops_eeprom_param ;
 int fops_regval ;

void mt7601u_init_debugfs(struct mt7601u_dev *dev)
{
 struct dentry *dir;

 dir = debugfs_create_dir("mt7601u", dev->hw->wiphy->debugfsdir);
 if (!dir)
  return;

 debugfs_create_u8("temperature", 0400, dir, &dev->raw_temp);
 debugfs_create_u32("temp_mode", 0400, dir, &dev->temp_mode);

 debugfs_create_u32("regidx", 0600, dir, &dev->debugfs_reg);
 debugfs_create_file("regval", 0600, dir, dev, &fops_regval);
 debugfs_create_file("ampdu_stat", 0400, dir, dev, &fops_ampdu_stat);
 debugfs_create_file("eeprom_param", 0400, dir, dev, &fops_eeprom_param);
}
