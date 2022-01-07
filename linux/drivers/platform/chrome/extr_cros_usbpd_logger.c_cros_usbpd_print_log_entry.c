
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_chg_measures {int current_max; int voltage_max; int voltage_now; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_4__ {int build; int minor; int major; } ;
struct TYPE_3__ {int build; int minor; int major; } ;
struct mcdp_info {TYPE_2__ fw; TYPE_1__ irom; int chipid; int family; } ;
struct ec_response_pd_log {int timestamp; int type; int data; int size_port; int * payload; } ;
typedef int s32 ;
typedef int ktime_t ;


 int ARRAY_SIZE (char**) ;
 int BUF_SIZE ;
 int CHARGE_FLAGS_DELAYED_OVERRIDE ;
 int CHARGE_FLAGS_DUAL_ROLE ;
 int CHARGE_FLAGS_OVERRIDE ;
 int CHARGE_FLAGS_ROLE_MASK ;
 int CHARGE_FLAGS_TYPE_MASK ;
 int CHARGE_FLAGS_TYPE_SHIFT ;
 int MCDP_CHIPID (int ) ;
 int MCDP_FAMILY (int ) ;
 int MSEC_PER_SEC ;





 int PD_LOG_PORT (int ) ;
 int PD_LOG_SIZE (int ) ;
 int PD_LOG_TIMESTAMP_SHIFT ;
 int USB_PD_PORT_POWER_DISCONNECTED ;
 int USB_PD_PORT_POWER_SOURCE ;
 int append_str (char*,int,char*,...) ;
 char** chg_type_names ;
 int div_s64_rem (int ,int ,int *) ;
 char** fault_names ;
 int ktime_sub_us (int ,int) ;
 int ktime_to_ms (int ) ;
 int pr_info (char*,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,char*) ;
 char** role_names ;
 struct rtc_time rtc_ktime_to_tm (int ) ;

__attribute__((used)) static void cros_usbpd_print_log_entry(struct ec_response_pd_log *r,
           ktime_t tstamp)
{
 const char *fault, *role, *chg_type;
 struct usb_chg_measures *meas;
 struct mcdp_info *minfo;
 int role_idx, type_idx;
 char buf[BUF_SIZE + 1];
 struct rtc_time rt;
 int len = 0;
 s32 rem;
 int i;


 tstamp = ktime_sub_us(tstamp, r->timestamp << PD_LOG_TIMESTAMP_SHIFT);
 rt = rtc_ktime_to_tm(tstamp);

 switch (r->type) {
 case 131:
  if (r->data & CHARGE_FLAGS_OVERRIDE)
   len += append_str(buf, len, "override ");

  if (r->data & CHARGE_FLAGS_DELAYED_OVERRIDE)
   len += append_str(buf, len, "pending_override ");

  role_idx = r->data & CHARGE_FLAGS_ROLE_MASK;
  role = role_idx < ARRAY_SIZE(role_names) ?
   role_names[role_idx] : "Unknown";

  type_idx = (r->data & CHARGE_FLAGS_TYPE_MASK)
    >> CHARGE_FLAGS_TYPE_SHIFT;

  chg_type = type_idx < ARRAY_SIZE(chg_type_names) ?
   chg_type_names[type_idx] : "???";

  if (role_idx == USB_PD_PORT_POWER_DISCONNECTED ||
      role_idx == USB_PD_PORT_POWER_SOURCE) {
   len += append_str(buf, len, "%s", role);
   break;
  }

  meas = (struct usb_chg_measures *)r->payload;
  len += append_str(buf, len, "%s %s %s %dmV max %dmV / %dmA",
      role, r->data & CHARGE_FLAGS_DUAL_ROLE ?
      "DRP" : "Charger",
      chg_type, meas->voltage_now,
      meas->voltage_max, meas->current_max);
  break;
 case 132:
  len += append_str(buf, len, "RW signature check failed");
  break;
 case 130:
  fault = r->data < ARRAY_SIZE(fault_names) ? fault_names[r->data]
         : "???";
  len += append_str(buf, len, "Power supply fault: %s", fault);
  break;
 case 128:
  len += append_str(buf, len, "DP mode %sabled", r->data == 1 ?
      "en" : "dis");
  break;
 case 129:
  minfo = (struct mcdp_info *)r->payload;
  len += append_str(buf, len, "HDMI info: family:%04x chipid:%04x ",
      MCDP_FAMILY(minfo->family),
      MCDP_CHIPID(minfo->chipid));
  len += append_str(buf, len, "irom:%d.%d.%d fw:%d.%d.%d",
      minfo->irom.major, minfo->irom.minor,
      minfo->irom.build, minfo->fw.major,
      minfo->fw.minor, minfo->fw.build);
  break;
 default:
  len += append_str(buf, len, "Event %02x (%04x) [", r->type,
      r->data);

  for (i = 0; i < PD_LOG_SIZE(r->size_port); i++)
   len += append_str(buf, len, "%02x ", r->payload[i]);

  len += append_str(buf, len, "]");
  break;
 }

 div_s64_rem(ktime_to_ms(tstamp), MSEC_PER_SEC, &rem);
 pr_info("PDLOG %d/%02d/%02d %02d:%02d:%02d.%03d P%d %s\n",
  rt.tm_year + 1900, rt.tm_mon + 1, rt.tm_mday,
  rt.tm_hour, rt.tm_min, rt.tm_sec, rem,
  PD_LOG_PORT(r->size_port), buf);
}
