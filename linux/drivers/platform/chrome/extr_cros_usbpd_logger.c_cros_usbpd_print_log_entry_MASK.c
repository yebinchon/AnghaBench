#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_chg_measures {int /*<<< orphan*/  current_max; int /*<<< orphan*/  voltage_max; int /*<<< orphan*/  voltage_now; } ;
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_4__ {int /*<<< orphan*/  build; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_3__ {int /*<<< orphan*/  build; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct mcdp_info {TYPE_2__ fw; TYPE_1__ irom; int /*<<< orphan*/  chipid; int /*<<< orphan*/  family; } ;
struct ec_response_pd_log {int timestamp; int type; int data; int /*<<< orphan*/  size_port; int /*<<< orphan*/ * payload; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  BUF_SIZE ; 
 int CHARGE_FLAGS_DELAYED_OVERRIDE ; 
 int CHARGE_FLAGS_DUAL_ROLE ; 
 int CHARGE_FLAGS_OVERRIDE ; 
 int CHARGE_FLAGS_ROLE_MASK ; 
 int CHARGE_FLAGS_TYPE_MASK ; 
 int CHARGE_FLAGS_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSEC_PER_SEC ; 
#define  PD_EVENT_ACC_RW_FAIL 132 
#define  PD_EVENT_MCU_CHARGE 131 
#define  PD_EVENT_PS_FAULT 130 
#define  PD_EVENT_VIDEO_CODEC 129 
#define  PD_EVENT_VIDEO_DP_MODE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int PD_LOG_TIMESTAMP_SHIFT ; 
 int USB_PD_PORT_POWER_DISCONNECTED ; 
 int USB_PD_PORT_POWER_SOURCE ; 
 int FUNC5 (char*,int,char*,...) ; 
 char** chg_type_names ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** fault_names ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char** role_names ; 
 struct rtc_time FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ec_response_pd_log *r,
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

	/* The timestamp is the number of 1024th of seconds in the past */
	tstamp = FUNC7(tstamp, r->timestamp << PD_LOG_TIMESTAMP_SHIFT);
	rt = FUNC10(tstamp);

	switch (r->type) {
	case PD_EVENT_MCU_CHARGE:
		if (r->data & CHARGE_FLAGS_OVERRIDE)
			len += FUNC5(buf, len, "override ");

		if (r->data & CHARGE_FLAGS_DELAYED_OVERRIDE)
			len += FUNC5(buf, len, "pending_override ");

		role_idx = r->data & CHARGE_FLAGS_ROLE_MASK;
		role = role_idx < FUNC0(role_names) ?
			role_names[role_idx] : "Unknown";

		type_idx = (r->data & CHARGE_FLAGS_TYPE_MASK)
			 >> CHARGE_FLAGS_TYPE_SHIFT;

		chg_type = type_idx < FUNC0(chg_type_names) ?
			chg_type_names[type_idx] : "???";

		if (role_idx == USB_PD_PORT_POWER_DISCONNECTED ||
		    role_idx == USB_PD_PORT_POWER_SOURCE) {
			len += FUNC5(buf, len, "%s", role);
			break;
		}

		meas = (struct usb_chg_measures *)r->payload;
		len += FUNC5(buf, len, "%s %s %s %dmV max %dmV / %dmA",
				  role,	r->data & CHARGE_FLAGS_DUAL_ROLE ?
				  "DRP" : "Charger",
				  chg_type, meas->voltage_now,
				  meas->voltage_max, meas->current_max);
		break;
	case PD_EVENT_ACC_RW_FAIL:
		len += FUNC5(buf, len, "RW signature check failed");
		break;
	case PD_EVENT_PS_FAULT:
		fault = r->data < FUNC0(fault_names) ? fault_names[r->data]
							  : "???";
		len += FUNC5(buf, len, "Power supply fault: %s", fault);
		break;
	case PD_EVENT_VIDEO_DP_MODE:
		len += FUNC5(buf, len, "DP mode %sabled", r->data == 1 ?
				  "en" : "dis");
		break;
	case PD_EVENT_VIDEO_CODEC:
		minfo = (struct mcdp_info *)r->payload;
		len += FUNC5(buf, len, "HDMI info: family:%04x chipid:%04x ",
				  FUNC2(minfo->family),
				  FUNC1(minfo->chipid));
		len += FUNC5(buf, len, "irom:%d.%d.%d fw:%d.%d.%d",
				  minfo->irom.major, minfo->irom.minor,
				  minfo->irom.build, minfo->fw.major,
				  minfo->fw.minor, minfo->fw.build);
		break;
	default:
		len += FUNC5(buf, len, "Event %02x (%04x) [", r->type,
				  r->data);

		for (i = 0; i < FUNC4(r->size_port); i++)
			len += FUNC5(buf, len, "%02x ", r->payload[i]);

		len += FUNC5(buf, len, "]");
		break;
	}

	FUNC6(FUNC8(tstamp), MSEC_PER_SEC, &rem);
	FUNC9("PDLOG %d/%02d/%02d %02d:%02d:%02d.%03d P%d %s\n",
		rt.tm_year + 1900, rt.tm_mon + 1, rt.tm_mday,
		rt.tm_hour, rt.tm_min, rt.tm_sec, rem,
		FUNC3(r->size_port), buf);
}