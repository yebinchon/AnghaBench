
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fib {scalar_t__ hw_fib_va; } ;
struct aac_hba_resp {int service_response; } ;
struct TYPE_2__ {struct aac_hba_resp err; } ;
struct aac_native_hba {TYPE_1__ resp; } ;
struct aac_hba_map_info {int reset_state; } ;






 int aac_fib_complete (struct fib*) ;

void aac_tmf_callback(void *context, struct fib *fibptr)
{
 struct aac_hba_resp *err =
  &((struct aac_native_hba *)fibptr->hw_fib_va)->resp.err;
 struct aac_hba_map_info *info = context;
 int res;

 switch (err->service_response) {
 case 129:
  res = -1;
  break;
 case 130:
  res = 0;
  break;
 case 131:
 case 128:
  res = 0;
  break;
 default:
  res = -2;
  break;
 }
 aac_fib_complete(fibptr);

 info->reset_state = res;
}
