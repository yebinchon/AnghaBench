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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mipid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mipid_device*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct mipid_device *md, int data_lines)
{
	u16 par;

	switch (data_lines) {
	case 16:
		par = 0x150;
		break;
	case 18:
		par = 0x160;
		break;
	case 24:
		par = 0x170;
		break;
	}
	FUNC0(md, 0x3a, (u8 *)&par, 2);
}