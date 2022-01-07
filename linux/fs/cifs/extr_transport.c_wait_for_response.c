
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {scalar_t__ mid_state; } ;
struct TCP_Server_Info {int response_q; } ;


 int ERESTARTSYS ;
 scalar_t__ MID_REQUEST_SUBMITTED ;
 int wait_event_freezekillable_unsafe (int ,int) ;

__attribute__((used)) static int
wait_for_response(struct TCP_Server_Info *server, struct mid_q_entry *midQ)
{
 int error;

 error = wait_event_freezekillable_unsafe(server->response_q,
        midQ->mid_state != MID_REQUEST_SUBMITTED);
 if (error < 0)
  return -ERESTARTSYS;

 return 0;
}
