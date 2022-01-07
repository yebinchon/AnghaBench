
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_6__ {int qmi_comp; } ;
struct TYPE_5__ {int * wakeup; int xfer_msg; int enable_stream; int get_laddr; int clkgear; TYPE_1__* a_framer; } ;
struct TYPE_4__ {int rootfreq; int superfreq; } ;
struct qcom_slim_ngd_ctrl {TYPE_3__ qmi; int reconf; int tx_buf_lock; int state; TYPE_2__ ctrl; TYPE_1__ framer; struct device* dev; int base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int QCOM_SLIM_NGD_CTRL_DOWN ;
 int SLIM_CL_PER_SUPERFRAME_DIV8 ;
 int SLIM_MAX_CLK_GEAR ;
 int SLIM_ROOT_FREQ ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct qcom_slim_ngd_ctrl*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct qcom_slim_ngd_ctrl* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct qcom_slim_ngd_ctrl*) ;
 int init_completion (int *) ;
 int of_qcom_slim_ngd_register (struct device*,struct qcom_slim_ngd_ctrl*) ;
 int platform_driver_register (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int qcom_slim_ngd_driver ;
 int qcom_slim_ngd_enable_stream ;
 int qcom_slim_ngd_get_laddr ;
 int qcom_slim_ngd_interrupt ;
 int qcom_slim_ngd_xfer_msg ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qcom_slim_ngd_ctrl_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct qcom_slim_ngd_ctrl *ctrl;
 struct resource *res;
 int ret;

 ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return -ENOMEM;

 dev_set_drvdata(dev, ctrl);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ctrl->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ctrl->base))
  return PTR_ERR(ctrl->base);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev, "no slimbus IRQ resource\n");
  return -ENODEV;
 }

 ret = devm_request_irq(dev, res->start, qcom_slim_ngd_interrupt,
          IRQF_TRIGGER_HIGH, "slim-ngd", ctrl);
 if (ret) {
  dev_err(&pdev->dev, "request IRQ failed\n");
  return ret;
 }

 ctrl->dev = dev;
 ctrl->framer.rootfreq = SLIM_ROOT_FREQ >> 3;
 ctrl->framer.superfreq =
  ctrl->framer.rootfreq / SLIM_CL_PER_SUPERFRAME_DIV8;

 ctrl->ctrl.a_framer = &ctrl->framer;
 ctrl->ctrl.clkgear = SLIM_MAX_CLK_GEAR;
 ctrl->ctrl.get_laddr = qcom_slim_ngd_get_laddr;
 ctrl->ctrl.enable_stream = qcom_slim_ngd_enable_stream;
 ctrl->ctrl.xfer_msg = qcom_slim_ngd_xfer_msg;
 ctrl->ctrl.wakeup = ((void*)0);
 ctrl->state = QCOM_SLIM_NGD_CTRL_DOWN;

 spin_lock_init(&ctrl->tx_buf_lock);
 init_completion(&ctrl->reconf);
 init_completion(&ctrl->qmi.qmi_comp);

 platform_driver_register(&qcom_slim_ngd_driver);
 return of_qcom_slim_ngd_register(dev, ctrl);
}
