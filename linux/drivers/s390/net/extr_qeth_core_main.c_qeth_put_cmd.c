
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {struct qeth_cmd_buffer* data; int ref_count; } ;


 int kfree (struct qeth_cmd_buffer*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void qeth_put_cmd(struct qeth_cmd_buffer *iob)
{
 if (refcount_dec_and_test(&iob->ref_count)) {
  kfree(iob->data);
  kfree(iob);
 }
}
