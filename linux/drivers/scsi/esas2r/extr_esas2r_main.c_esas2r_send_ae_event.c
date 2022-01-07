
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytype; int bylength; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct esas2r_vda_ae {TYPE_2__ vda_ae; } ;
struct esas2r_fw_event_work {scalar_t__ data; } ;


 int ESAS2R_LOG_WARN ;
 int esas2r_log (int ,char*,char*) ;
 int esas2r_log_hexdump (int ,TYPE_2__*,int ) ;

__attribute__((used)) static void esas2r_send_ae_event(struct esas2r_fw_event_work *fw_event)
{
 struct esas2r_vda_ae *ae = (struct esas2r_vda_ae *)fw_event->data;
 char *type;

 switch (ae->vda_ae.hdr.bytype) {
 case 132:
  type = "RAID group state change";
  break;

 case 136:
  type = "Mapped destination LU change";
  break;

 case 141:
  type = "Physical disk inventory change";
  break;

 case 131:
  type = "Firmware reset";
  break;

 case 138:
  type = "Event Log message (INFO level)";
  break;

 case 137:
  type = "Event Log message (WARN level)";
  break;

 case 140:
  type = "Event Log message (CRIT level)";
  break;

 case 139:
  type = "Event Log message (FAIL level)";
  break;

 case 134:
  type = "NVCache change";
  break;

 case 129:
  type = "Time stamped log message (INFO level)";
  break;

 case 128:
  type = "Time stamped log message (WARN level)";
  break;

 case 130:
  type = "Time stamped log message (CRIT level)";
  break;

 case 133:
  type = "Power management";
  break;

 case 135:
  type = "Mute button pressed";
  break;

 case 142:
  type = "Device attribute change";
  break;

 default:
  type = "Unknown";
  break;
 }

 esas2r_log(ESAS2R_LOG_WARN,
     "An async event of type \"%s\" was received from the firmware.  The event contents are:",
     type);
 esas2r_log_hexdump(ESAS2R_LOG_WARN, &ae->vda_ae,
      ae->vda_ae.hdr.bylength);

}
