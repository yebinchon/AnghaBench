
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_dev {int dummy; } ;
struct device_node {int dummy; } ;


 int EEXIST ;
 int ENODEV ;
 int imx_media_of_add_csi (struct imx_media_dev*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

int imx_media_add_of_subdevs(struct imx_media_dev *imxmd,
        struct device_node *np)
{
 struct device_node *csi_np;
 int i, ret;

 for (i = 0; ; i++) {
  csi_np = of_parse_phandle(np, "ports", i);
  if (!csi_np)
   break;

  ret = imx_media_of_add_csi(imxmd, csi_np);
  if (ret) {

   if (ret == -ENODEV || ret == -EEXIST) {
    of_node_put(csi_np);
    continue;
   }


   goto err_out;
  }
 }

 return 0;

err_out:
 of_node_put(csi_np);
 return ret;
}
