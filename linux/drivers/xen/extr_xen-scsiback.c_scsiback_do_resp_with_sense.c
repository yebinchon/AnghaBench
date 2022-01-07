
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vscsibk_pend {TYPE_1__* v2p; int rqid; int info; } ;
typedef int int32_t ;
struct TYPE_2__ {int kref; } ;


 int kref_put (int *,int ) ;
 int scsiback_free_translation_entry ;
 int scsiback_send_response (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void scsiback_do_resp_with_sense(char *sense_buffer, int32_t result,
   uint32_t resid, struct vscsibk_pend *pending_req)
{
 scsiback_send_response(pending_req->info, sense_buffer, result,
          resid, pending_req->rqid);

 if (pending_req->v2p)
  kref_put(&pending_req->v2p->kref,
    scsiback_free_translation_entry);
}
