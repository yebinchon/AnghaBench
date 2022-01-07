
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {struct uwb_rc* uwb_rc; } ;
struct uwb_rc {int dummy; } ;
struct umc_dev {int dummy; } ;


 int kfree (struct whcrc*) ;
 struct whcrc* umc_get_drvdata (struct umc_dev*) ;
 int umc_set_drvdata (struct umc_dev*,int *) ;
 int uwb_rc_put (struct uwb_rc*) ;
 int uwb_rc_rm (struct uwb_rc*) ;
 int whcrc_release_rc_umc (struct whcrc*) ;

__attribute__((used)) static void whcrc_remove(struct umc_dev *umc_dev)
{
 struct whcrc *whcrc = umc_get_drvdata(umc_dev);
 struct uwb_rc *uwb_rc = whcrc->uwb_rc;

 umc_set_drvdata(umc_dev, ((void*)0));
 uwb_rc_rm(uwb_rc);
 whcrc_release_rc_umc(whcrc);
 kfree(whcrc);
 uwb_rc_put(uwb_rc);
}
