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
typedef  int /*<<< orphan*/  u16 ;
struct device {int dummy; } ;
struct anybus_mbox_hdr {int /*<<< orphan*/ * extended; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
			      struct anybus_mbox_hdr *hdr)
{
	size_t ext_offs = FUNC0(hdr->extended) - 1;
	u16 code = FUNC1(hdr->extended[ext_offs]);

	FUNC2(dev, "   Invalid other: [0x%02X]", code);
}