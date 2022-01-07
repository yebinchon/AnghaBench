
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DASD_MAJOR ;
 int pr_warn (char*,int ) ;
 int register_blkdev (int ,char*) ;

int dasd_gendisk_init(void)
{
 int rc;


 rc = register_blkdev(DASD_MAJOR, "dasd");
 if (rc != 0) {
  pr_warn("Registering the device driver with major number %d failed\n",
   DASD_MAJOR);
  return rc;
 }
 return 0;
}
