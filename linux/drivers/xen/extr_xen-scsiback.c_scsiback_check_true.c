
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int dummy; } ;



__attribute__((used)) static int scsiback_check_true(struct se_portal_group *se_tpg)
{
 return 1;
}
