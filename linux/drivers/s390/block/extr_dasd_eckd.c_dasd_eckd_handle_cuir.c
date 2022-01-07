
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct dasd_device {TYPE_1__* discipline; } ;
struct dasd_cuir_message {scalar_t__ code; int message_id; } ;
typedef int __u8 ;
struct TYPE_2__ {int (* check_attention ) (struct dasd_device*,int ) ;} ;


 scalar_t__ CUIR_QUIESCE ;
 scalar_t__ CUIR_RESUME ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int,int ,...) ;
 int DBF_WARNING ;
 int PSF_CUIR_COMPLETED ;
 int PSF_CUIR_LAST_PATH ;
 int PSF_CUIR_NOT_SUPPORTED ;
 scalar_t__ dasd_eckd_cuir_quiesce (struct dasd_device*,int ,struct dasd_cuir_message*) ;
 int dasd_eckd_cuir_resume (struct dasd_device*,int ,struct dasd_cuir_message*) ;
 int dasd_eckd_psf_cuir_response (struct dasd_device*,int,int ,int ) ;
 int stub1 (struct dasd_device*,int ) ;

__attribute__((used)) static void dasd_eckd_handle_cuir(struct dasd_device *device, void *messages,
     __u8 lpum)
{
 struct dasd_cuir_message *cuir = messages;
 int response;

 DBF_DEV_EVENT(DBF_WARNING, device,
        "CUIR request: %016llx %016llx %016llx %08x",
        ((u64 *)cuir)[0], ((u64 *)cuir)[1], ((u64 *)cuir)[2],
        ((u32 *)cuir)[3]);

 if (cuir->code == CUIR_QUIESCE) {

  if (dasd_eckd_cuir_quiesce(device, lpum, cuir))
   response = PSF_CUIR_LAST_PATH;
  else
   response = PSF_CUIR_COMPLETED;
 } else if (cuir->code == CUIR_RESUME) {

  dasd_eckd_cuir_resume(device, lpum, cuir);
  response = PSF_CUIR_COMPLETED;
 } else
  response = PSF_CUIR_NOT_SUPPORTED;

 dasd_eckd_psf_cuir_response(device, response,
        cuir->message_id, lpum);
 DBF_DEV_EVENT(DBF_WARNING, device,
        "CUIR response: %d on message ID %08x", response,
        cuir->message_id);

 device->discipline->check_attention(device, lpum);
}
