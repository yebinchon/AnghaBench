
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {struct uwb_rc* uwb_rc; } ;
struct uwb_rc {int dummy; } ;
struct umc_dev {int dummy; } ;


 struct whcrc* umc_get_drvdata (struct umc_dev*) ;
 int uwb_rc_pre_reset (struct uwb_rc*) ;

__attribute__((used)) static int whcrc_pre_reset(struct umc_dev *umc)
{
 struct whcrc *whcrc = umc_get_drvdata(umc);
 struct uwb_rc *uwb_rc = whcrc->uwb_rc;

 uwb_rc_pre_reset(uwb_rc);
 return 0;
}
