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
struct atp_unit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct atp_unit*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct atp_unit*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct atp_unit *atp, u8 c, u8 host_id)
{
	FUNC1(atp, c, 0, host_id | 0x08);
	FUNC1(atp, c, 0x18, 0);
	while ((FUNC0(atp, c, 0x1f) & 0x80) == 0)
		FUNC2(1);
	FUNC0(atp, c, 0x17);
	FUNC1(atp, c, 1, 8);
	FUNC1(atp, c, 2, 0x7f);
	FUNC1(atp, c, 0x11, 0x20);
}