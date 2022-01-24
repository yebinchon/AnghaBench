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
typedef  int u16 ;
struct usb_ftdi {int expected; char* response; scalar_t__ ed_found; scalar_t__ received; int /*<<< orphan*/  u132_lock; } ;
struct u132_target {int actual; int non_null; int repeat_number; scalar_t__ abandoning; scalar_t__ active; int /*<<< orphan*/  condition_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_DEVNOTRESP ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ftdi*,struct u132_target*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC3(struct usb_ftdi *ftdi,
				  struct u132_target *target, u16 ed_length, int ed_number, int ed_type,
				  char *b)
{
	FUNC1(&ftdi->u132_lock);
	target->condition_code = TD_DEVNOTRESP;
	target->actual = (ed_length >> 0) & 0x01FF;
	target->non_null = (ed_length >> 15) & 0x0001;
	target->repeat_number = (ed_length >> 11) & 0x000F;
	FUNC2(&ftdi->u132_lock);
	if (target->active)
		FUNC0(ftdi, target, NULL, 0);
	target->abandoning = 0;
	ftdi->received = 0;
	ftdi->expected = 4;
	ftdi->ed_found = 0;
	return ftdi->response;
}