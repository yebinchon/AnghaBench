
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480 {int (* rc_release ) (struct i1480*) ;int dev; int mac_fw_name; } ;


 int ENOENT ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*) ;
 int i1480_mac_fw_upload (struct i1480*) ;
 int i1480_phy_fw_upload (struct i1480*) ;
 int i1480_pre_fw_upload (struct i1480*) ;
 int i1480_print_state (struct i1480*) ;
 int stub1 (struct i1480*) ;

int i1480_fw_upload(struct i1480 *i1480)
{
 int result;

 result = i1480_pre_fw_upload(i1480);
 if (result < 0 && result != -ENOENT) {
  i1480_print_state(i1480);
  goto error;
 }
 result = i1480_mac_fw_upload(i1480);
 if (result < 0) {
  if (result == -ENOENT)
   dev_err(i1480->dev, "Cannot locate MAC FW file '%s'\n",
    i1480->mac_fw_name);
  else
   i1480_print_state(i1480);
  goto error;
 }
 result = i1480_phy_fw_upload(i1480);
 if (result < 0 && result != -ENOENT) {
  i1480_print_state(i1480);
  goto error_rc_release;
 }




 dev_info(i1480->dev, "firmware uploaded successfully\n");
error_rc_release:
 if (i1480->rc_release)
  i1480->rc_release(i1480);
 result = 0;
error:
 return result;
}
