
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sense_iu {int tag; } ;
struct usbg_cmd {struct f_uas* fu; int tag; struct sense_iu sense_iu; struct uas_stream* stream; } ;
struct uas_stream {TYPE_1__* req_status; } ;
struct f_uas {int ep_status; } ;
struct TYPE_2__ {struct usbg_cmd* context; int complete; } ;


 int GFP_ATOMIC ;
 int cpu_to_be16 (int ) ;
 int uasp_prepare_status (struct usbg_cmd*) ;
 int uasp_status_data_cmpl ;
 int usb_ep_queue (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int uasp_send_status_response(struct usbg_cmd *cmd)
{
 struct f_uas *fu = cmd->fu;
 struct uas_stream *stream = cmd->stream;
 struct sense_iu *iu = &cmd->sense_iu;

 iu->tag = cpu_to_be16(cmd->tag);
 stream->req_status->complete = uasp_status_data_cmpl;
 stream->req_status->context = cmd;
 cmd->fu = fu;
 uasp_prepare_status(cmd);
 return usb_ep_queue(fu->ep_status, stream->req_status, GFP_ATOMIC);
}
