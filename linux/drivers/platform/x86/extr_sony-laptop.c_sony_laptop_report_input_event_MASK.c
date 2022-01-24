#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sony_laptop_keypress {struct input_dev* dev; int /*<<< orphan*/  key; int /*<<< orphan*/ * member_0; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  kp ;
struct TYPE_2__ {int /*<<< orphan*/  release_key_timer; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; struct input_dev* key_dev; struct input_dev* jog_dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  KEY_UNKNOWN ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int SONYPI_EVENT_ANYBUTTON_RELEASED ; 
 int SONYPI_EVENT_FNKEY_RELEASED ; 
#define  SONYPI_EVENT_JOGDIAL_DOWN 132 
#define  SONYPI_EVENT_JOGDIAL_DOWN_PRESSED 131 
#define  SONYPI_EVENT_JOGDIAL_PRESSED 130 
#define  SONYPI_EVENT_JOGDIAL_UP 129 
#define  SONYPI_EVENT_JOGDIAL_UP_PRESSED 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 TYPE_1__ sony_laptop_input ; 
 int* sony_laptop_input_index ; 
 int /*<<< orphan*/ * sony_laptop_input_keycode_map ; 

__attribute__((used)) static void FUNC9(u8 event)
{
	struct input_dev *jog_dev = sony_laptop_input.jog_dev;
	struct input_dev *key_dev = sony_laptop_input.key_dev;
	struct sony_laptop_keypress kp = { NULL };
	int scancode = -1;

	if (event == SONYPI_EVENT_FNKEY_RELEASED ||
			event == SONYPI_EVENT_ANYBUTTON_RELEASED) {
		/* Nothing, not all VAIOs generate this event */
		return;
	}

	/* report events */
	switch (event) {
	/* jog_dev events */
	case SONYPI_EVENT_JOGDIAL_UP:
	case SONYPI_EVENT_JOGDIAL_UP_PRESSED:
		FUNC4(jog_dev, REL_WHEEL, 1);
		FUNC5(jog_dev);
		return;

	case SONYPI_EVENT_JOGDIAL_DOWN:
	case SONYPI_EVENT_JOGDIAL_DOWN_PRESSED:
		FUNC4(jog_dev, REL_WHEEL, -1);
		FUNC5(jog_dev);
		return;

	/* key_dev events */
	case SONYPI_EVENT_JOGDIAL_PRESSED:
		kp.key = BTN_MIDDLE;
		kp.dev = jog_dev;
		break;

	default:
		if (event >= FUNC0(sony_laptop_input_index)) {
			FUNC1("sony_laptop_report_input_event, event not known: %d\n", event);
			break;
		}
		if ((scancode = sony_laptop_input_index[event]) != -1) {
			kp.key = sony_laptop_input_keycode_map[scancode];
			if (kp.key != KEY_UNKNOWN)
				kp.dev = key_dev;
		}
		break;
	}

	if (kp.dev) {
		/* if we have a scancode we emit it so we can always
		    remap the key */
		if (scancode != -1)
			FUNC2(kp.dev, EV_MSC, MSC_SCAN, scancode);
		FUNC3(kp.dev, kp.key, 1);
		FUNC5(kp.dev);

		/* schedule key release */
		FUNC6(&sony_laptop_input.fifo,
				(unsigned char *)&kp, sizeof(kp),
				&sony_laptop_input.fifo_lock);
		FUNC7(&sony_laptop_input.release_key_timer,
			  jiffies + FUNC8(10));
	} else
		FUNC1("unknown input event %.2x\n", event);
}