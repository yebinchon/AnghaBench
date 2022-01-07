
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {scalar_t__ cpaddr; int op; } ;
struct TYPE_2__ {int idal_buf; } ;
struct tape_device {TYPE_1__ char_data; int * modeset_byte; } ;


 int DBF_EVENT (int,char*) ;
 int FORSPACEBLOCK ;
 int MODE_SET_DB ;
 int NOP ;
 int READ_BACKWARD ;
 int TO_RBA ;
 int tape_ccw_cc (scalar_t__,int ,int,int *) ;
 int tape_ccw_cc_idal (scalar_t__,int ,int ) ;
 int tape_ccw_end (scalar_t__,int ,int ,int *) ;

void
tape_std_read_backward(struct tape_device *device, struct tape_request *request)
{





 request->op = TO_RBA;
 tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
 tape_ccw_cc_idal(request->cpaddr + 1, READ_BACKWARD,
    device->char_data.idal_buf);
 tape_ccw_cc(request->cpaddr + 2, FORSPACEBLOCK, 0, ((void*)0));
 tape_ccw_end(request->cpaddr + 3, NOP, 0, ((void*)0));
 DBF_EVENT(6, "xrop ccwg");}
