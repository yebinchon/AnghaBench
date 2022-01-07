
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {scalar_t__ cpaddr; int op; } ;
struct TYPE_2__ {int idal_buf; } ;
struct tape_device {TYPE_1__ char_data; struct tape_3590_disc_data* discdata; int * modeset_byte; } ;
struct tape_3590_disc_data {int read_back_op; } ;


 int DBF_EVENT (int,char*) ;
 int FORSPACEBLOCK ;
 int MODE_SET_DB ;
 int NOP ;
 int TO_RBA ;
 int tape_ccw_cc (scalar_t__,int ,int,int *) ;
 int tape_ccw_cc_idal (scalar_t__,int ,int ) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;

__attribute__((used)) static void
tape_3590_read_opposite(struct tape_device *device,
   struct tape_request *request)
{
 struct tape_3590_disc_data *data;






 request->op = TO_RBA;
 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 data = device->discdata;
 tape_ccw_cc_idal(request->cpaddr + 1, data->read_back_op,
    device->char_data.idal_buf);
 tape_ccw_cc(request->cpaddr + 2, FORSPACEBLOCK, 0, ((void*)0));
 tape_ccw_end(request->cpaddr + 3, NOP, 0, ((void*)0));
 DBF_EVENT(6, "xrop ccwg\n");
}
