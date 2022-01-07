
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cancel_key; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {scalar_t__ format; } ;
struct ibmvfc_event {TYPE_3__ iu; TYPE_1__ crq; } ;


 scalar_t__ IBMVFC_CMD_FORMAT ;
 unsigned long be32_to_cpu (int ) ;

__attribute__((used)) static int ibmvfc_match_key(struct ibmvfc_event *evt, void *key)
{
 unsigned long cancel_key = (unsigned long)key;

 if (evt->crq.format == IBMVFC_CMD_FORMAT &&
     be32_to_cpu(evt->iu.cmd.cancel_key) == cancel_key)
  return 1;
 return 0;
}
