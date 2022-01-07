
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct soc_pcmcia_socket {struct clk* clk; scalar_t__ nr; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct TYPE_7__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcmcia_low_level {int nr; scalar_t__ first; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int SKT_DEV_INFO_SIZE (int) ;
 scalar_t__ cpu_is_pxa320 () ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct skt_dev_info*) ;
 struct clk* devm_clk_get (TYPE_1__*,int *) ;
 struct skt_dev_info* devm_kzalloc (TYPE_1__*,int ,int ) ;
 int pxa2xx_configure_sockets (TYPE_1__*,struct pcmcia_low_level*) ;
 int pxa2xx_drv_pcmcia_add_one (struct soc_pcmcia_socket*) ;
 int pxa2xx_drv_pcmcia_ops (struct pcmcia_low_level*) ;
 int soc_pcmcia_init_one (struct soc_pcmcia_socket*,struct pcmcia_low_level*,TYPE_1__*) ;
 int soc_pcmcia_remove_one (struct soc_pcmcia_socket*) ;

__attribute__((used)) static int pxa2xx_drv_pcmcia_probe(struct platform_device *dev)
{
 int i, ret = 0;
 struct pcmcia_low_level *ops;
 struct skt_dev_info *sinfo;
 struct soc_pcmcia_socket *skt;
 struct clk *clk;

 ops = (struct pcmcia_low_level *)dev->dev.platform_data;
 if (!ops) {
  ret = -ENODEV;
  goto err0;
 }

 if (cpu_is_pxa320() && ops->nr > 1) {
  dev_err(&dev->dev, "pxa320 supports only one pcmcia slot");
  ret = -EINVAL;
  goto err0;
 }

 clk = devm_clk_get(&dev->dev, ((void*)0));
 if (IS_ERR(clk))
  return -ENODEV;

 pxa2xx_drv_pcmcia_ops(ops);

 sinfo = devm_kzalloc(&dev->dev, SKT_DEV_INFO_SIZE(ops->nr),
        GFP_KERNEL);
 if (!sinfo)
  return -ENOMEM;

 sinfo->nskt = ops->nr;


 for (i = 0; i < ops->nr; i++) {
  skt = &sinfo->skt[i];

  skt->nr = ops->first + i;
  skt->clk = clk;
  soc_pcmcia_init_one(skt, ops, &dev->dev);

  ret = pxa2xx_drv_pcmcia_add_one(skt);
  if (ret)
   goto err1;
 }

 pxa2xx_configure_sockets(&dev->dev, ops);
 dev_set_drvdata(&dev->dev, sinfo);

 return 0;

err1:
 while (--i >= 0)
  soc_pcmcia_remove_one(&sinfo->skt[i]);

err0:
 return ret;
}
