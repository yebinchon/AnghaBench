
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_gadget {int dev; } ;
struct usb_composite_dev {struct usb_gadget* gadget; } ;
struct fsg_opts {int no_configfs; int common; } ;
struct fsg_config {char* vendor_name; char* product_name; int can_stall; } ;
struct TYPE_9__ {int iManufacturer; int iProduct; } ;
struct TYPE_8__ {int iConfiguration; } ;
struct TYPE_7__ {int id; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int NOKIA_LONG_NAME ;
 int PTR_ERR (int ) ;
 size_t STRING_DESCRIPTION_IDX ;
 size_t USB_GADGET_MANUFACTURER_IDX ;
 size_t USB_GADGET_PRODUCT_IDX ;
 int coverwrite ;
 int dev_info (int *,char*,int ) ;
 TYPE_6__ device_desc ;
 int f_acm_cfg1 ;
 int f_ecm_cfg1 ;
 int f_obex1_cfg1 ;
 int f_obex2_cfg1 ;
 int f_phonet_cfg1 ;
 int fi_acm ;
 int fi_ecm ;
 int fi_msg ;
 int fi_obex1 ;
 int fi_obex2 ;
 int fi_phonet ;
 int fsg_common_create_luns (int ,struct fsg_config*) ;
 int fsg_common_free_buffers (int ) ;
 int fsg_common_remove_luns (int ) ;
 int fsg_common_set_cdev (int ,struct usb_composite_dev*,int ) ;
 int fsg_common_set_inquiry_string (int ,char*,char*) ;
 int fsg_common_set_num_buffers (int ,int ) ;
 int fsg_common_set_sysfs (int ,int) ;
 int fsg_config_from_params (struct fsg_config*,int *,int ) ;
 int fsg_mod_data ;
 int fsg_num_buffers ;
 struct fsg_opts* fsg_opts_from_func_inst (int ) ;
 int gadget_is_altset_supported (struct usb_gadget*) ;
 int nokia_bind_config ;
 TYPE_2__ nokia_config_100ma_driver ;
 TYPE_2__ nokia_config_500ma_driver ;
 int pr_debug (char*) ;
 TYPE_1__* strings_dev ;
 int usb_add_config (struct usb_composite_dev*,TYPE_2__*,int ) ;
 int usb_composite_overwrite_options (struct usb_composite_dev*,int *) ;
 int usb_get_function_instance (char*) ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;
 int usb_string_ids_tab (struct usb_composite_dev*,TYPE_1__*) ;

__attribute__((used)) static int nokia_bind(struct usb_composite_dev *cdev)
{
 struct usb_gadget *gadget = cdev->gadget;
 struct fsg_opts *fsg_opts;
 struct fsg_config fsg_config;
 int status;

 status = usb_string_ids_tab(cdev, strings_dev);
 if (status < 0)
  goto err_usb;
 device_desc.iManufacturer = strings_dev[USB_GADGET_MANUFACTURER_IDX].id;
 device_desc.iProduct = strings_dev[USB_GADGET_PRODUCT_IDX].id;
 status = strings_dev[STRING_DESCRIPTION_IDX].id;
 nokia_config_500ma_driver.iConfiguration = status;
 nokia_config_100ma_driver.iConfiguration = status;

 if (!gadget_is_altset_supported(gadget)) {
  status = -ENODEV;
  goto err_usb;
 }

 fi_phonet = usb_get_function_instance("phonet");
 if (IS_ERR(fi_phonet))
  pr_debug("could not find phonet function\n");

 fi_obex1 = usb_get_function_instance("obex");
 if (IS_ERR(fi_obex1))
  pr_debug("could not find obex function 1\n");

 fi_obex2 = usb_get_function_instance("obex");
 if (IS_ERR(fi_obex2))
  pr_debug("could not find obex function 2\n");

 fi_acm = usb_get_function_instance("acm");
 if (IS_ERR(fi_acm)) {
  status = PTR_ERR(fi_acm);
  goto err_obex2_inst;
 }

 fi_ecm = usb_get_function_instance("ecm");
 if (IS_ERR(fi_ecm)) {
  status = PTR_ERR(fi_ecm);
  goto err_acm_inst;
 }

 fi_msg = usb_get_function_instance("mass_storage");
 if (IS_ERR(fi_msg)) {
  status = PTR_ERR(fi_msg);
  goto err_ecm_inst;
 }


 fsg_config_from_params(&fsg_config, &fsg_mod_data, fsg_num_buffers);
 fsg_config.vendor_name = "Nokia";
 fsg_config.product_name = "N900";

 fsg_opts = fsg_opts_from_func_inst(fi_msg);
 fsg_opts->no_configfs = 1;

 status = fsg_common_set_num_buffers(fsg_opts->common, fsg_num_buffers);
 if (status)
  goto err_msg_inst;

 status = fsg_common_set_cdev(fsg_opts->common, cdev, fsg_config.can_stall);
 if (status)
  goto err_msg_buf;

 fsg_common_set_sysfs(fsg_opts->common, 1);

 status = fsg_common_create_luns(fsg_opts->common, &fsg_config);
 if (status)
  goto err_msg_buf;

 fsg_common_set_inquiry_string(fsg_opts->common, fsg_config.vendor_name,
          fsg_config.product_name);


 status = usb_add_config(cdev, &nokia_config_500ma_driver,
   nokia_bind_config);
 if (status < 0)
  goto err_msg_luns;

 status = usb_add_config(cdev, &nokia_config_100ma_driver,
   nokia_bind_config);
 if (status < 0)
  goto err_put_cfg1;

 usb_composite_overwrite_options(cdev, &coverwrite);
 dev_info(&gadget->dev, "%s\n", NOKIA_LONG_NAME);

 return 0;

err_put_cfg1:
 usb_put_function(f_acm_cfg1);
 if (!IS_ERR_OR_NULL(f_obex1_cfg1))
  usb_put_function(f_obex1_cfg1);
 if (!IS_ERR_OR_NULL(f_obex2_cfg1))
  usb_put_function(f_obex2_cfg1);
 if (!IS_ERR_OR_NULL(f_phonet_cfg1))
  usb_put_function(f_phonet_cfg1);
 usb_put_function(f_ecm_cfg1);
err_msg_luns:
 fsg_common_remove_luns(fsg_opts->common);
err_msg_buf:
 fsg_common_free_buffers(fsg_opts->common);
err_msg_inst:
 usb_put_function_instance(fi_msg);
err_ecm_inst:
 usb_put_function_instance(fi_ecm);
err_acm_inst:
 usb_put_function_instance(fi_acm);
err_obex2_inst:
 if (!IS_ERR(fi_obex2))
  usb_put_function_instance(fi_obex2);
 if (!IS_ERR(fi_obex1))
  usb_put_function_instance(fi_obex1);
 if (!IS_ERR(fi_phonet))
  usb_put_function_instance(fi_phonet);
err_usb:
 return status;
}
