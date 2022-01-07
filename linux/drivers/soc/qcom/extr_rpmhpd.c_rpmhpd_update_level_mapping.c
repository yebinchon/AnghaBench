
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rpmhpd {int level_count; scalar_t__* level; int res_name; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (scalar_t__ const*) ;
 int PTR_ERR (scalar_t__ const*) ;
 int RPMH_ARC_MAX_LEVELS ;
 scalar_t__* cmd_db_read_aux_data (int ,int*) ;
 int pr_debug (char*,int ,int,scalar_t__) ;

__attribute__((used)) static int rpmhpd_update_level_mapping(struct rpmhpd *rpmhpd)
{
 int i;
 const u16 *buf;

 buf = cmd_db_read_aux_data(rpmhpd->res_name, &rpmhpd->level_count);
 if (IS_ERR(buf))
  return PTR_ERR(buf);


 rpmhpd->level_count >>= 1;

 if (rpmhpd->level_count > RPMH_ARC_MAX_LEVELS)
  return -EINVAL;

 for (i = 0; i < rpmhpd->level_count; i++) {
  rpmhpd->level[i] = buf[i];





  if (i > 0 && rpmhpd->level[i] == 0) {
   rpmhpd->level_count = i;
   break;
  }
  pr_debug("%s: ARC hlvl=%2d --> vlvl=%4u\n", rpmhpd->res_name, i,
    rpmhpd->level[i]);
 }

 return 0;
}
