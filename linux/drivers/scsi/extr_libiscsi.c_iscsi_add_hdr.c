
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {unsigned int hdr_len; unsigned int hdr_max; } ;


 int EINVAL ;
 int ISCSI_PAD_LEN ;
 int WARN_ON (unsigned int) ;

__attribute__((used)) static int iscsi_add_hdr(struct iscsi_task *task, unsigned len)
{
 unsigned exp_len = task->hdr_len + len;

 if (exp_len > task->hdr_max) {
  WARN_ON(1);
  return -EINVAL;
 }

 WARN_ON(len & (ISCSI_PAD_LEN - 1));
 task->hdr_len = exp_len;
 return 0;
}
