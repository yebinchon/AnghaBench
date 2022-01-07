
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int finalize; int data; } ;
struct qeth_card {int write; } ;


 int CCW_CMD_WRITE ;
 int QETH_TIMEOUT ;
 int __ccw_from_cmd (struct qeth_cmd_buffer*) ;
 int memcpy (int ,void*,unsigned int) ;
 struct qeth_cmd_buffer* qeth_alloc_cmd (int *,unsigned int,int,int ) ;
 int qeth_mpc_finalize_cmd ;
 int qeth_setup_ccw (int ,int ,int ,unsigned int,int ) ;

__attribute__((used)) static struct qeth_cmd_buffer *qeth_mpc_alloc_cmd(struct qeth_card *card,
        void *data,
        unsigned int data_length)
{
 struct qeth_cmd_buffer *iob;

 iob = qeth_alloc_cmd(&card->write, data_length, 1, QETH_TIMEOUT);
 if (!iob)
  return ((void*)0);

 memcpy(iob->data, data, data_length);
 qeth_setup_ccw(__ccw_from_cmd(iob), CCW_CMD_WRITE, 0, data_length,
         iob->data);
 iob->finalize = qeth_mpc_finalize_cmd;
 return iob;
}
