
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nents; int sgl; } ;
struct scsi_data_buffer {TYPE_1__ table; } ;
struct iscsi_task {TYPE_2__* sc; int data; int hdr_len; int hdr; struct iscsi_conn* conn; } ;
struct iscsi_conn {int dummy; } ;
struct TYPE_4__ {struct scsi_data_buffer sdb; } ;


 int EIO ;
 int iscsi_sw_tcp_send_data_prep (struct iscsi_conn*,int ,int ,unsigned int,unsigned int) ;
 int iscsi_sw_tcp_send_hdr_prep (struct iscsi_conn*,int ,int ) ;
 int iscsi_sw_tcp_send_linear_data_prep (struct iscsi_conn*,int ,unsigned int) ;

__attribute__((used)) static int iscsi_sw_tcp_pdu_init(struct iscsi_task *task,
     unsigned int offset, unsigned int count)
{
 struct iscsi_conn *conn = task->conn;
 int err = 0;

 iscsi_sw_tcp_send_hdr_prep(conn, task->hdr, task->hdr_len);

 if (!count)
  return 0;

 if (!task->sc)
  iscsi_sw_tcp_send_linear_data_prep(conn, task->data, count);
 else {
  struct scsi_data_buffer *sdb = &task->sc->sdb;

  err = iscsi_sw_tcp_send_data_prep(conn, sdb->table.sgl,
        sdb->table.nents, offset,
        count);
 }

 if (err) {

  return -EIO;
 }
 return 0;
}
