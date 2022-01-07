
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpgaimage {int fw_entry; } ;
struct TYPE_2__ {int dev; } ;


 TYPE_1__* firmware_pdev ;
 int pr_err (char*,char*) ;
 int pr_info (char*,char*) ;
 int request_firmware (int *,char*,int *) ;

__attribute__((used)) static int gs_load_image(struct fpgaimage *fimage, char *fw_file)
{
 int err;

 pr_info("load fpgaimage %s\n", fw_file);

 err = request_firmware(&fimage->fw_entry, fw_file, &firmware_pdev->dev);
 if (err != 0) {
  pr_err("firmware %s is missing, cannot continue.\n", fw_file);
  return err;
 }

 return 0;
}
