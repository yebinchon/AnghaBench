
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct parahotplug_request {int list; } ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_4__ {TYPE_3__ state; } ;
struct TYPE_5__ {TYPE_1__ device_change_state; } ;
struct controlvm_message {TYPE_2__ cmd; int hdr; } ;


 int CONTROLVM_RESP_SUCCESS ;
 int ENOMEM ;
 int controlvm_respond (int *,int,TYPE_3__*) ;
 int list_add_tail (int *,int *) ;
 struct parahotplug_request* parahotplug_request_create (struct controlvm_message*) ;
 int parahotplug_request_destroy (struct parahotplug_request*) ;
 int parahotplug_request_kickoff (struct parahotplug_request*) ;
 int parahotplug_request_list ;
 int parahotplug_request_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int parahotplug_process_message(struct controlvm_message *inmsg)
{
 struct parahotplug_request *req;
 int err;

 req = parahotplug_request_create(inmsg);
 if (!req)
  return -ENOMEM;




 if (inmsg->cmd.device_change_state.state.active) {
  err = parahotplug_request_kickoff(req);
  if (err)
   goto err_respond;
  controlvm_respond(&inmsg->hdr, CONTROLVM_RESP_SUCCESS,
      &inmsg->cmd.device_change_state.state);
  parahotplug_request_destroy(req);
  return 0;
 }





 spin_lock(&parahotplug_request_list_lock);
 list_add_tail(&req->list, &parahotplug_request_list);
 spin_unlock(&parahotplug_request_list_lock);
 err = parahotplug_request_kickoff(req);
 if (err)
  goto err_respond;
 return 0;

err_respond:
 controlvm_respond(&inmsg->hdr, err,
     &inmsg->cmd.device_change_state.state);
 return err;
}
