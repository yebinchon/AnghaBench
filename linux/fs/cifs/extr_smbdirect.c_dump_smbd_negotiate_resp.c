
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_negotiate_resp {int max_fragmented_size; int max_receive_size; int preferred_send_size; int max_readwrite_size; int status; int credits_granted; int credits_requested; int negotiated_version; int max_version; int min_version; } ;


 int INFO ;
 int log_rdma_event (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_smbd_negotiate_resp(struct smbd_negotiate_resp *resp)
{
 log_rdma_event(INFO, "resp message min_version %u max_version %u "
  "negotiated_version %u credits_requested %u "
  "credits_granted %u status %u max_readwrite_size %u "
  "preferred_send_size %u max_receive_size %u "
  "max_fragmented_size %u\n",
  resp->min_version, resp->max_version, resp->negotiated_version,
  resp->credits_requested, resp->credits_granted, resp->status,
  resp->max_readwrite_size, resp->preferred_send_size,
  resp->max_receive_size, resp->max_fragmented_size);
}
