
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int esd_work; int * esd_check; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void mipid_esd_stop_check(struct mipid_device *md)
{
 if (md->esd_check != ((void*)0))
  cancel_delayed_work_sync(&md->esd_work);
}
