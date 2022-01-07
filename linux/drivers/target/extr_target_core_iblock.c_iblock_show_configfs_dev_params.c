
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct iblock_dev {int ibd_flags; char* ibd_udev_path; int ibd_readonly; struct block_device* ibd_bd; } ;
struct block_device {struct iblock_dev* bd_holder; int bd_contains; int bd_dev; } ;
typedef int ssize_t ;


 int BDEVNAME_SIZE ;
 int IBDF_HAS_UDEV_PATH ;
 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 char* bdevname (struct block_device*,char*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t iblock_show_configfs_dev_params(struct se_device *dev, char *b)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);
 struct block_device *bd = ib_dev->ibd_bd;
 char buf[BDEVNAME_SIZE];
 ssize_t bl = 0;

 if (bd)
  bl += sprintf(b + bl, "iBlock device: %s",
    bdevname(bd, buf));
 if (ib_dev->ibd_flags & IBDF_HAS_UDEV_PATH)
  bl += sprintf(b + bl, "  UDEV PATH: %s",
    ib_dev->ibd_udev_path);
 bl += sprintf(b + bl, "  readonly: %d\n", ib_dev->ibd_readonly);

 bl += sprintf(b + bl, "        ");
 if (bd) {
  bl += sprintf(b + bl, "Major: %d Minor: %d  %s\n",
   MAJOR(bd->bd_dev), MINOR(bd->bd_dev), (!bd->bd_contains) ?
   "" : (bd->bd_holder == ib_dev) ?
   "CLAIMED: IBLOCK" : "CLAIMED: OS");
 } else {
  bl += sprintf(b + bl, "Major: 0 Minor: 0\n");
 }

 return bl;
}
