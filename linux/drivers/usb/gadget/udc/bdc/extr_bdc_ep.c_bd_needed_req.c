
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct bdc_req {TYPE_1__ usb_req; } ;


 int BD_MAX_BUFF_SIZE ;

__attribute__((used)) static inline int bd_needed_req(struct bdc_req *req)
{
 int bd_needed = 0;
 int remaining;


 if (req->usb_req.length == 0)
  return 1;


 remaining = req->usb_req.length % BD_MAX_BUFF_SIZE;
 if (remaining)
  bd_needed++;


 remaining = req->usb_req.length / BD_MAX_BUFF_SIZE;
 bd_needed += remaining;

 return bd_needed;
}
