
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int index; } ;
struct TYPE_4__ {unsigned int index; } ;
struct ptp_clock_request {TYPE_1__ perout; int type; TYPE_2__ extts; } ;
struct ptp_clock_info {int (* enable ) (struct ptp_clock_info*,struct ptp_clock_request*,int ) ;} ;
typedef int rq ;
typedef enum ptp_pin_function { ____Placeholder_ptp_pin_function } ptp_pin_function ;


 int EINVAL ;
 int PTP_CLK_REQ_EXTTS ;
 int PTP_CLK_REQ_PEROUT ;




 int memset (struct ptp_clock_request*,int ,int) ;
 int stub1 (struct ptp_clock_info*,struct ptp_clock_request*,int ) ;
 int stub2 (struct ptp_clock_info*,struct ptp_clock_request*,int ) ;

__attribute__((used)) static int ptp_disable_pinfunc(struct ptp_clock_info *ops,
          enum ptp_pin_function func, unsigned int chan)
{
 struct ptp_clock_request rq;
 int err = 0;

 memset(&rq, 0, sizeof(rq));

 switch (func) {
 case 130:
  break;
 case 131:
  rq.type = PTP_CLK_REQ_EXTTS;
  rq.extts.index = chan;
  err = ops->enable(ops, &rq, 0);
  break;
 case 129:
  rq.type = PTP_CLK_REQ_PEROUT;
  rq.perout.index = chan;
  err = ops->enable(ops, &rq, 0);
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }

 return err;
}
