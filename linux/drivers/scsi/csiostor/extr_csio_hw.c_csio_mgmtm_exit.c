
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mgmtm {int mgmt_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void
csio_mgmtm_exit(struct csio_mgmtm *mgmtm)
{
 del_timer_sync(&mgmtm->mgmt_timer);
}
