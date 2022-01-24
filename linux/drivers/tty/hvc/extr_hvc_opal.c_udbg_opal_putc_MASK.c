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
struct TYPE_2__ {int proto; } ;

/* Variables and functions */
 int EAGAIN ; 
#define  HV_PROTOCOL_HVSI 129 
#define  HV_PROTOCOL_RAW 128 
 TYPE_1__ hvc_opal_boot_priv ; 
 unsigned int hvc_opal_boot_termno ; 
 int FUNC0 (unsigned int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int,char*,int) ; 

__attribute__((used)) static void FUNC3(char c)
{
	unsigned int termno = hvc_opal_boot_termno;
	int count = -1;

	if (c == '\n')
		FUNC3('\r');

	do {
		switch(hvc_opal_boot_priv.proto) {
		case HV_PROTOCOL_RAW:
			count = FUNC2(termno, &c, 1);
			break;
		case HV_PROTOCOL_HVSI:
			count = FUNC0(termno, &c, 1);
			break;
		}

		/* This is needed for the cosole to flush
		 * when there aren't any interrupts.
		 */
		FUNC1(termno);
	} while(count == 0 || count == -EAGAIN);
}