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
struct ds_device {int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 size_t EP_STATUS ; 
 unsigned char RR_APP ; 
 unsigned char RR_CMP ; 
 unsigned char RR_CRC ; 
 unsigned char RR_DETECT ; 
 unsigned char RR_EOS ; 
 unsigned char RR_NRS ; 
 unsigned char RR_RDP ; 
 unsigned char RR_SH ; 
 unsigned char RR_VPP ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct ds_device *dev, unsigned char *buf, int count)
{
	int i;

	FUNC1("0x%x: count=%d, status: ", dev->ep[EP_STATUS], count);
	for (i = 0; i < count; ++i)
		FUNC1("%02x ", buf[i]);
	FUNC1("\n");

	if (count >= 16) {
		FUNC0(buf, "enable flag", 0);
		FUNC0(buf, "1-wire speed", 1);
		FUNC0(buf, "strong pullup duration", 2);
		FUNC0(buf, "programming pulse duration", 3);
		FUNC0(buf, "pulldown slew rate control", 4);
		FUNC0(buf, "write-1 low time", 5);
		FUNC0(buf, "data sample offset/write-0 recovery time",
			6);
		FUNC0(buf, "reserved (test register)", 7);
		FUNC0(buf, "device status flags", 8);
		FUNC0(buf, "communication command byte 1", 9);
		FUNC0(buf, "communication command byte 2", 10);
		FUNC0(buf, "communication command buffer status", 11);
		FUNC0(buf, "1-wire data output buffer status", 12);
		FUNC0(buf, "1-wire data input buffer status", 13);
		FUNC0(buf, "reserved", 14);
		FUNC0(buf, "reserved", 15);
	}
	for (i = 16; i < count; ++i) {
		if (buf[i] == RR_DETECT) {
			FUNC0(buf, "new device detect", i);
			continue;
		}
		FUNC0(buf, "Result Register Value: ", i);
		if (buf[i] & RR_NRS)
			FUNC1("NRS: Reset no presence or ...\n");
		if (buf[i] & RR_SH)
			FUNC1("SH: short on reset or set path\n");
		if (buf[i] & RR_APP)
			FUNC1("APP: alarming presence on reset\n");
		if (buf[i] & RR_VPP)
			FUNC1("VPP: 12V expected not seen\n");
		if (buf[i] & RR_CMP)
			FUNC1("CMP: compare error\n");
		if (buf[i] & RR_CRC)
			FUNC1("CRC: CRC error detected\n");
		if (buf[i] & RR_RDP)
			FUNC1("RDP: redirected page\n");
		if (buf[i] & RR_EOS)
			FUNC1("EOS: end of search error\n");
	}
}