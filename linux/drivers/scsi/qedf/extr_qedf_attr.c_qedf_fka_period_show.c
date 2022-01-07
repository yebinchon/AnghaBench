
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sel_fcf; } ;
struct qedf_ctx {TYPE_2__ ctlr; } ;
struct fc_lport {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int fka_period; } ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 struct qedf_ctx* qedf_get_base_qedf (struct qedf_ctx*) ;
 scalar_t__ qedf_is_vport (struct qedf_ctx*) ;
 int scnprintf (char*,int ,char*,int) ;
 struct fc_lport* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qedf_fka_period_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct fc_lport *lport = shost_priv(class_to_shost(dev));
 struct qedf_ctx *qedf = lport_priv(lport);
 int fka_period = -1;

 if (qedf_is_vport(qedf))
  qedf = qedf_get_base_qedf(qedf);

 if (qedf->ctlr.sel_fcf)
  fka_period = qedf->ctlr.sel_fcf->fka_period;

 return scnprintf(buf, PAGE_SIZE, "%d\n", fka_period);
}
