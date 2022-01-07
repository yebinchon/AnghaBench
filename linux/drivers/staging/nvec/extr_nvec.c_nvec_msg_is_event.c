
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_msg {int* data; } ;



__attribute__((used)) static bool nvec_msg_is_event(struct nvec_msg *msg)
{
 return msg->data[0] >> 7;
}
