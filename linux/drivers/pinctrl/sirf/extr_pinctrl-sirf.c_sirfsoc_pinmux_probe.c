
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sirfsoc_pmx {int gpio_virtbase; int rsc_virtbase; int pmx; TYPE_3__* dev; } ;
struct sirfsoc_pinctrl_data {int pads_cnt; int pads; int funcs_cnt; int funcs; int grps_cnt; int grps; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {struct sirfsoc_pinctrl_data* data; } ;
struct TYPE_8__ {int npins; int pins; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_info (TYPE_3__*,char*) ;
 struct sirfsoc_pmx* devm_kzalloc (TYPE_3__*,int,int ) ;
 int iounmap (int ) ;
 int of_iomap (struct device_node*,int ) ;
 TYPE_4__* of_match_node (int ,struct device_node*) ;
 int pinctrl_register (TYPE_1__*,TYPE_3__*,struct sirfsoc_pmx*) ;
 int pinmux_ids ;
 int platform_set_drvdata (struct platform_device*,struct sirfsoc_pmx*) ;
 int sirfsoc_pin_groups ;
 int sirfsoc_pingrp_cnt ;
 TYPE_1__ sirfsoc_pinmux_desc ;
 int sirfsoc_pmx_functions ;
 int sirfsoc_pmxfunc_cnt ;
 int sirfsoc_rsc_of_iomap () ;

__attribute__((used)) static int sirfsoc_pinmux_probe(struct platform_device *pdev)
{
 int ret;
 struct sirfsoc_pmx *spmx;
 struct device_node *np = pdev->dev.of_node;
 const struct sirfsoc_pinctrl_data *pdata;


 spmx = devm_kzalloc(&pdev->dev, sizeof(*spmx), GFP_KERNEL);
 if (!spmx)
  return -ENOMEM;

 spmx->dev = &pdev->dev;

 platform_set_drvdata(pdev, spmx);

 spmx->gpio_virtbase = of_iomap(np, 0);
 if (!spmx->gpio_virtbase) {
  dev_err(&pdev->dev, "can't map gpio registers\n");
  return -ENOMEM;
 }

 spmx->rsc_virtbase = sirfsoc_rsc_of_iomap();
 if (!spmx->rsc_virtbase) {
  ret = -ENOMEM;
  dev_err(&pdev->dev, "can't map rsc registers\n");
  goto out_no_rsc_remap;
 }

 pdata = of_match_node(pinmux_ids, np)->data;
 sirfsoc_pin_groups = pdata->grps;
 sirfsoc_pingrp_cnt = pdata->grps_cnt;
 sirfsoc_pmx_functions = pdata->funcs;
 sirfsoc_pmxfunc_cnt = pdata->funcs_cnt;
 sirfsoc_pinmux_desc.pins = pdata->pads;
 sirfsoc_pinmux_desc.npins = pdata->pads_cnt;



 spmx->pmx = pinctrl_register(&sirfsoc_pinmux_desc, &pdev->dev, spmx);
 if (IS_ERR(spmx->pmx)) {
  dev_err(&pdev->dev, "could not register SIRFSOC pinmux driver\n");
  ret = PTR_ERR(spmx->pmx);
  goto out_no_pmx;
 }

 dev_info(&pdev->dev, "initialized SIRFSOC pinmux driver\n");

 return 0;

out_no_pmx:
 iounmap(spmx->rsc_virtbase);
out_no_rsc_remap:
 iounmap(spmx->gpio_virtbase);
 return ret;
}
