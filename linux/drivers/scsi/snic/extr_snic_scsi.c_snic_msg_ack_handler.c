
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_fw_req {int dummy; } ;
struct snic {int shost; } ;


 int SNIC_ASSERT_NOT_IMPL (int) ;
 int SNIC_HOST_INFO (int ,char*) ;

__attribute__((used)) static void
snic_msg_ack_handler(struct snic *snic, struct snic_fw_req *fwreq)
{
 SNIC_HOST_INFO(snic->shost, "Message Ack Received.\n");

 SNIC_ASSERT_NOT_IMPL(1);
}
