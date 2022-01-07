
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw1 {int count; scalar_t__ cda; int flags; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;


 int CCW_FLAG_SLI ;
 int DASD_FBA_CCW_WRITE ;
 int ZERO_PAGE (int ) ;
 scalar_t__ page_to_phys (int ) ;

__attribute__((used)) static void ccw_write_zero(struct ccw1 *ccw, int count)
{
 ccw->cmd_code = DASD_FBA_CCW_WRITE;
 ccw->flags |= CCW_FLAG_SLI;
 ccw->count = count;
 ccw->cda = (__u32) (addr_t) page_to_phys(ZERO_PAGE(0));
}
