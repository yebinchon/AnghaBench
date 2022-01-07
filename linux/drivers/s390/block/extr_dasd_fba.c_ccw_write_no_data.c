
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw1 {scalar_t__ count; int flags; int cmd_code; } ;


 int CCW_FLAG_SLI ;
 int DASD_FBA_CCW_WRITE ;

__attribute__((used)) static void ccw_write_no_data(struct ccw1 *ccw)
{
 ccw->cmd_code = DASD_FBA_CCW_WRITE;
 ccw->flags |= CCW_FLAG_SLI;
 ccw->count = 0;
}
