
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int qeth_put_cmd (struct qeth_cmd_buffer*) ;

__attribute__((used)) static void qeth_release_buffer_cb(struct qeth_card *card,
       struct qeth_cmd_buffer *iob,
       unsigned int data_length)
{
 qeth_put_cmd(iob);
}
