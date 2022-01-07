
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
struct TYPE_2__ {int cmd; } ;
struct LO_fba_data {int blk_nr; int blk_ct; TYPE_1__ operation; } ;
typedef scalar_t__ __u32 ;


 int DASD_FBA_CCW_LOCATE ;
 int READ ;
 int WRITE ;
 scalar_t__ __pa (struct LO_fba_data*) ;
 int memset (struct LO_fba_data*,int ,int) ;

__attribute__((used)) static void
locate_record(struct ccw1 * ccw, struct LO_fba_data *data, int rw,
       int block_nr, int block_ct)
{
 ccw->cmd_code = DASD_FBA_CCW_LOCATE;
 ccw->flags = 0;
 ccw->count = 8;
 ccw->cda = (__u32) __pa(data);
 memset(data, 0, sizeof (struct LO_fba_data));
 if (rw == WRITE)
  data->operation.cmd = 0x5;
 else if (rw == READ)
  data->operation.cmd = 0x6;
 else
  data->operation.cmd = 0x8;
 data->blk_nr = block_nr;
 data->blk_ct = block_ct;
}
