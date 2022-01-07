
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iscsi_tcp_task {int dummy; } ;
struct iscsi_task {scalar_t__ hdr_max; struct iscsi_tcp_task* dd_data; struct iscsi_tcp_task* hdr; } ;
struct iscsi_sw_tcp_hdrbuf {int dummy; } ;


 scalar_t__ ISCSI_DIGEST_SIZE ;

__attribute__((used)) static int iscsi_sw_tcp_pdu_alloc(struct iscsi_task *task, uint8_t opcode)
{
 struct iscsi_tcp_task *tcp_task = task->dd_data;

 task->hdr = task->dd_data + sizeof(*tcp_task);
 task->hdr_max = sizeof(struct iscsi_sw_tcp_hdrbuf) - ISCSI_DIGEST_SIZE;
 return 0;
}
