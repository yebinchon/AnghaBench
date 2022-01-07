
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union atto_vda_ae {int dummy; } atto_vda_ae ;
typedef scalar_t__ u8 ;
struct esas2r_adapter {int dummy; } ;
struct atto_vda_ae_hdr {scalar_t__ bylength; scalar_t__ byflags; int byversion; int bytype; } ;


 int VDAAE_HDR_TYPE_PWRMGT ;
 int VDAAE_HDR_TYPE_RESET ;
 int VDAAE_HDR_VER_0 ;
 int esas2r_hdebug (char*) ;
 int esas2r_queue_fw_event (struct esas2r_adapter*,int ,struct atto_vda_ae_hdr*,int) ;
 int fw_event_vda_ae ;

void esas2r_send_reset_ae(struct esas2r_adapter *a, bool pwr_mgt)
{
 struct atto_vda_ae_hdr ae;

 if (pwr_mgt)
  ae.bytype = VDAAE_HDR_TYPE_PWRMGT;
 else
  ae.bytype = VDAAE_HDR_TYPE_RESET;

 ae.byversion = VDAAE_HDR_VER_0;
 ae.byflags = 0;
 ae.bylength = (u8)sizeof(struct atto_vda_ae_hdr);

 if (pwr_mgt)
  esas2r_hdebug("*** sending power management AE ***");
 else
  esas2r_hdebug("*** sending reset AE ***");

 esas2r_queue_fw_event(a, fw_event_vda_ae, &ae,
         sizeof(union atto_vda_ae));
}
