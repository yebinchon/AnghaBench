
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int rc; int done; } ;


 int complete (int *) ;

void qeth_notify_cmd(struct qeth_cmd_buffer *iob, int reason)
{
 iob->rc = reason;
 complete(&iob->done);
}
