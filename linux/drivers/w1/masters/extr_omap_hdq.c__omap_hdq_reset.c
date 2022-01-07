
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdq_data {int mode; int dev; } ;


 int OMAP_HDQ_CTRL_STATUS ;
 int OMAP_HDQ_CTRL_STATUS_CLOCKENABLE ;
 int OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ;
 int OMAP_HDQ_FLAG_SET ;
 int OMAP_HDQ_SYSCONFIG ;
 int OMAP_HDQ_SYSCONFIG_AUTOIDLE ;
 int OMAP_HDQ_SYSCONFIG_SOFTRESET ;
 int OMAP_HDQ_SYSSTATUS ;
 int OMAP_HDQ_SYSSTATUS_RESETDONE ;
 int dev_dbg (int ,char*,int ) ;
 int hdq_reg_out (struct hdq_data*,int ,int) ;
 int hdq_wait_for_flag (struct hdq_data*,int ,int ,int ,int *) ;

__attribute__((used)) static int _omap_hdq_reset(struct hdq_data *hdq_data)
{
 int ret;
 u8 tmp_status;

 hdq_reg_out(hdq_data, OMAP_HDQ_SYSCONFIG,
      OMAP_HDQ_SYSCONFIG_SOFTRESET);






 hdq_reg_out(hdq_data, OMAP_HDQ_CTRL_STATUS,
  OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
  OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK);


 ret = hdq_wait_for_flag(hdq_data, OMAP_HDQ_SYSSTATUS,
  OMAP_HDQ_SYSSTATUS_RESETDONE, OMAP_HDQ_FLAG_SET, &tmp_status);
 if (ret)
  dev_dbg(hdq_data->dev, "timeout waiting HDQ reset, %x",
    tmp_status);
 else {
  hdq_reg_out(hdq_data, OMAP_HDQ_CTRL_STATUS,
   OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
   OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK |
   hdq_data->mode);
  hdq_reg_out(hdq_data, OMAP_HDQ_SYSCONFIG,
   OMAP_HDQ_SYSCONFIG_AUTOIDLE);
 }

 return ret;
}
