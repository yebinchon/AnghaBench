
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rapl_domain {TYPE_1__* rpl; int state; int name; TYPE_2__* rp; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int prim_id; int * name; } ;


 int DOMAIN_STATE_BIOS_LOCKED ;
 int FW_LOCK ;
 int NR_POWER_LIMITS ;
 int pr_info (char*,int ,int ) ;
 scalar_t__ rapl_read_data_raw (struct rapl_domain*,int,int,scalar_t__*) ;

__attribute__((used)) static void rapl_detect_powerlimit(struct rapl_domain *rd)
{
 u64 val64;
 int i;


 if (!rapl_read_data_raw(rd, FW_LOCK, 0, &val64)) {
  if (val64) {
   pr_info("RAPL %s domain %s locked by BIOS\n",
    rd->rp->name, rd->name);
   rd->state |= DOMAIN_STATE_BIOS_LOCKED;
  }
 }

 for (i = 0; i < NR_POWER_LIMITS; i++) {
  int prim = rd->rpl[i].prim_id;

  if (rapl_read_data_raw(rd, prim, 0, &val64))
   rd->rpl[i].name = ((void*)0);
 }
}
