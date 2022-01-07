
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysinfo_3_2_2 {TYPE_2__* vm; int lpar_number; } ;
struct sysinfo_2_2_2 {TYPE_2__* vm; int lpar_number; } ;
struct qeth_trap_id {int vmname; int lparnr; int devno; int ssid; int chpid; } ;
struct TYPE_3__ {int chpid; } ;
struct qeth_card {TYPE_1__ info; } ;
struct ccw_dev_id {int devno; int ssid; } ;
struct TYPE_4__ {int name; } ;


 int CARD_RDEV (struct qeth_card*) ;
 int EBCASC (int ,int) ;
 int GFP_KERNEL ;
 int ccw_device_get_id (int ,struct ccw_dev_id*) ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ stsi (struct sysinfo_3_2_2*,int,int,int) ;

__attribute__((used)) static void qeth_get_trap_id(struct qeth_card *card, struct qeth_trap_id *tid)
{
 unsigned long info = get_zeroed_page(GFP_KERNEL);
 struct sysinfo_2_2_2 *info222 = (struct sysinfo_2_2_2 *)info;
 struct sysinfo_3_2_2 *info322 = (struct sysinfo_3_2_2 *)info;
 struct ccw_dev_id ccwid;
 int level;

 tid->chpid = card->info.chpid;
 ccw_device_get_id(CARD_RDEV(card), &ccwid);
 tid->ssid = ccwid.ssid;
 tid->devno = ccwid.devno;
 if (!info)
  return;
 level = stsi(((void*)0), 0, 0, 0);
 if ((level >= 2) && (stsi(info222, 2, 2, 2) == 0))
  tid->lparnr = info222->lpar_number;
 if ((level >= 3) && (stsi(info322, 3, 2, 2) == 0)) {
  EBCASC(info322->vm[0].name, sizeof(info322->vm[0].name));
  memcpy(tid->vmname, info322->vm[0].name, sizeof(tid->vmname));
 }
 free_page(info);
 return;
}
