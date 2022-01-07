
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rio_dev {int pef; size_t destid; TYPE_1__* rswitch; struct rio_dev* prev; } ;
struct TYPE_2__ {int* route_table; } ;


 int EIO ;
 int RIO_DEV_ID_CAR ;
 int RIO_INVALID_ROUTE ;
 int RIO_PEF_SWITCH ;
 int pr_debug (char*,int ,...) ;
 int rio_name (struct rio_dev*) ;
 int rio_read_config_32 (struct rio_dev*,int ,int *) ;

__attribute__((used)) static int
rio_chk_dev_route(struct rio_dev *rdev, struct rio_dev **nrdev, int *npnum)
{
 u32 result;
 int p_port, rc = -EIO;
 struct rio_dev *prev = ((void*)0);


 while (rdev->prev && (rdev->prev->pef & RIO_PEF_SWITCH)) {
  if (!rio_read_config_32(rdev->prev, RIO_DEV_ID_CAR, &result)) {
   prev = rdev->prev;
   break;
  }
  rdev = rdev->prev;
 }

 if (!prev)
  goto err_out;

 p_port = prev->rswitch->route_table[rdev->destid];

 if (p_port != RIO_INVALID_ROUTE) {
  pr_debug("RIO: link failed on [%s]-P%d\n",
    rio_name(prev), p_port);
  *nrdev = prev;
  *npnum = p_port;
  rc = 0;
 } else
  pr_debug("RIO: failed to trace route to %s\n", rio_name(rdev));
err_out:
 return rc;
}
