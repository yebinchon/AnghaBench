
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_config {int nluns; int * luns; } ;
struct fsg_common {int dummy; } ;
typedef int buf ;


 int _fsg_common_remove_luns (struct fsg_common*,int) ;
 int fsg_common_create_lun (struct fsg_common*,int *,int,char*,int *) ;
 int fsg_common_remove_luns (struct fsg_common*) ;
 int pr_info (char*,int) ;
 int snprintf (char*,int,char*,int) ;

int fsg_common_create_luns(struct fsg_common *common, struct fsg_config *cfg)
{
 char buf[8];
 int i, rc;

 fsg_common_remove_luns(common);

 for (i = 0; i < cfg->nluns; ++i) {
  snprintf(buf, sizeof(buf), "lun%d", i);
  rc = fsg_common_create_lun(common, &cfg->luns[i], i, buf, ((void*)0));
  if (rc)
   goto fail;
 }

 pr_info("Number of LUNs=%d\n", cfg->nluns);

 return 0;

fail:
 _fsg_common_remove_luns(common, i);
 return rc;
}
