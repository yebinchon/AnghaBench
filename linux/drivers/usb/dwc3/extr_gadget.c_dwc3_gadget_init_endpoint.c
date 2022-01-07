
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int dir_in; int dir_out; } ;
struct TYPE_4__ {TYPE_1__ caps; int * comp_desc; int * desc; int name; } ;
struct dwc3_ep {int number; int direction; int cancelled_list; int started_list; int pending_list; TYPE_2__ endpoint; int name; scalar_t__ start_cmd_status; scalar_t__ combo_num; scalar_t__ regs; struct dwc3* dwc; } ;
struct dwc3 {struct dwc3_ep** eps; scalar_t__ regs; } ;


 scalar_t__ DWC3_DEP_BASE (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dwc3_gadget_ep0_desc ;
 int dwc3_gadget_init_control_endpoint (struct dwc3_ep*) ;
 int dwc3_gadget_init_in_endpoint (struct dwc3_ep*) ;
 int dwc3_gadget_init_out_endpoint (struct dwc3_ep*) ;
 struct dwc3_ep* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,int,char*) ;

__attribute__((used)) static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
{
 struct dwc3_ep *dep;
 bool direction = epnum & 1;
 int ret;
 u8 num = epnum >> 1;

 dep = kzalloc(sizeof(*dep), GFP_KERNEL);
 if (!dep)
  return -ENOMEM;

 dep->dwc = dwc;
 dep->number = epnum;
 dep->direction = direction;
 dep->regs = dwc->regs + DWC3_DEP_BASE(epnum);
 dwc->eps[epnum] = dep;
 dep->combo_num = 0;
 dep->start_cmd_status = 0;

 snprintf(dep->name, sizeof(dep->name), "ep%u%s", num,
   direction ? "in" : "out");

 dep->endpoint.name = dep->name;

 if (!(dep->number > 1)) {
  dep->endpoint.desc = &dwc3_gadget_ep0_desc;
  dep->endpoint.comp_desc = ((void*)0);
 }

 if (num == 0)
  ret = dwc3_gadget_init_control_endpoint(dep);
 else if (direction)
  ret = dwc3_gadget_init_in_endpoint(dep);
 else
  ret = dwc3_gadget_init_out_endpoint(dep);

 if (ret)
  return ret;

 dep->endpoint.caps.dir_in = direction;
 dep->endpoint.caps.dir_out = !direction;

 INIT_LIST_HEAD(&dep->pending_list);
 INIT_LIST_HEAD(&dep->started_list);
 INIT_LIST_HEAD(&dep->cancelled_list);

 return 0;
}
