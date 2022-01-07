
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct meson_canvas {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 struct meson_canvas* ERR_PTR (int ) ;
 struct meson_canvas* dev_get_drvdata (int *) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

struct meson_canvas *meson_canvas_get(struct device *dev)
{
 struct device_node *canvas_node;
 struct platform_device *canvas_pdev;
 struct meson_canvas *canvas;

 canvas_node = of_parse_phandle(dev->of_node, "amlogic,canvas", 0);
 if (!canvas_node)
  return ERR_PTR(-ENODEV);

 canvas_pdev = of_find_device_by_node(canvas_node);
 if (!canvas_pdev) {
  of_node_put(canvas_node);
  return ERR_PTR(-EPROBE_DEFER);
 }

 of_node_put(canvas_node);






 canvas = dev_get_drvdata(&canvas_pdev->dev);
 if (!canvas)
  return ERR_PTR(-EINVAL);

 return canvas;
}
