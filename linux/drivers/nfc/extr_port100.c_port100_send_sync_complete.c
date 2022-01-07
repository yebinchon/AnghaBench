
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct port100_sync_cmd_response {int done; struct sk_buff* resp; } ;
struct port100 {int dummy; } ;


 int complete (int *) ;

__attribute__((used)) static void port100_send_sync_complete(struct port100 *dev, void *_arg,
          struct sk_buff *resp)
{
 struct port100_sync_cmd_response *arg = _arg;

 arg->resp = resp;
 complete(&arg->done);
}
