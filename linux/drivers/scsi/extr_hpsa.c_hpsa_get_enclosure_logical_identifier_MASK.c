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
typedef  int /*<<< orphan*/  u64 ;
struct ctlr_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RECEIVE_DIAGNOSTIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ctlr_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC4(struct ctlr_info *h,
						u8 *scsi3addr)
{
	u8 *buf;
	u64 sa = 0;
	int rc = 0;

	buf = FUNC3(1024, GFP_KERNEL);
	if (!buf)
		return 0;

	rc = FUNC1(h, scsi3addr, RECEIVE_DIAGNOSTIC,
					buf, 1024);

	if (rc)
		goto out;

	sa = FUNC0(buf+12);

out:
	FUNC2(buf);
	return sa;
}