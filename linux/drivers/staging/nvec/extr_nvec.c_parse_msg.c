
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_msg {int* data; } ;
struct nvec_chip {int notifier_list; int dev; } ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int KERN_WARNING ;
 int atomic_notifier_call_chain (int *,int,int*) ;
 int dev_err (int ,char*,int,int*) ;
 int print_hex_dump (int ,char*,int ,int,int,int*,int,int) ;

__attribute__((used)) static int parse_msg(struct nvec_chip *nvec, struct nvec_msg *msg)
{
 if ((msg->data[0] & 1 << 7) == 0 && msg->data[3]) {
  dev_err(nvec->dev, "ec responded %*ph\n", 4, msg->data);
  return -EINVAL;
 }

 if ((msg->data[0] >> 7) == 1 && (msg->data[0] & 0x0f) == 5)
  print_hex_dump(KERN_WARNING, "ec system event ",
          DUMP_PREFIX_NONE, 16, 1, msg->data,
          msg->data[1] + 2, 1);

 atomic_notifier_call_chain(&nvec->notifier_list, msg->data[0] & 0x8f,
       msg->data);

 return 0;
}
