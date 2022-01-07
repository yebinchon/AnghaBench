
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_usb2_dev_data {int dr_mode; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct fsl_usb2_dev_data*) ;
 struct fsl_usb2_dev_data* dr_mode_data ;
 unsigned char* of_get_property (struct device_node*,char*,int *) ;
 int pr_warn (char*,struct device_node*) ;
 int strcmp (unsigned char const*,int ) ;

__attribute__((used)) static struct fsl_usb2_dev_data *get_dr_mode_data(struct device_node *np)
{
 const unsigned char *prop;
 int i;

 prop = of_get_property(np, "dr_mode", ((void*)0));
 if (prop) {
  for (i = 0; i < ARRAY_SIZE(dr_mode_data); i++) {
   if (!strcmp(prop, dr_mode_data[i].dr_mode))
    return &dr_mode_data[i];
  }
 }
 pr_warn("%pOF: Invalid 'dr_mode' property, fallback to host mode\n",
  np);
 return &dr_mode_data[0];
}
