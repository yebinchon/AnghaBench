#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;

/* Variables and functions */
#define  DISC 136 
#define  DM 135 
 int PF ; 
#define  REJ 134 
#define  RNR 133 
#define  RR 132 
#define  SABM 131 
#define  UA 130 
#define  UI 129 
#define  UIH 128 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,char) ; 

__attribute__((used)) static void FUNC3(const char *hdr, int addr, int cr,
					u8 control, const u8 *data, int dlen)
{
	if (!(debug & 1))
		return;

	FUNC2("%s %d) %c: ", hdr, addr, "RC"[cr]);

	switch (control & ~PF) {
	case SABM:
		FUNC0("SABM");
		break;
	case UA:
		FUNC0("UA");
		break;
	case DISC:
		FUNC0("DISC");
		break;
	case DM:
		FUNC0("DM");
		break;
	case UI:
		FUNC0("UI");
		break;
	case UIH:
		FUNC0("UIH");
		break;
	default:
		if (!(control & 0x01)) {
			FUNC0("I N(S)%d N(R)%d",
				(control & 0x0E) >> 1, (control & 0xE0) >> 5);
		} else switch (control & 0x0F) {
			case RR:
				FUNC0("RR(%d)", (control & 0xE0) >> 5);
				break;
			case RNR:
				FUNC0("RNR(%d)", (control & 0xE0) >> 5);
				break;
			case REJ:
				FUNC0("REJ(%d)", (control & 0xE0) >> 5);
				break;
			default:
				FUNC0("[%02X]", control);
		}
	}

	if (control & PF)
		FUNC0("(P)");
	else
		FUNC0("(F)");

	if (dlen) {
		int ct = 0;
		while (dlen--) {
			if (ct % 8 == 0) {
				FUNC0("\n");
				FUNC1("    ");
			}
			FUNC0("%02X ", *data++);
			ct++;
		}
	}
	FUNC0("\n");
}