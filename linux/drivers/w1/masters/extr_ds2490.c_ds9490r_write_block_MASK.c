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
struct ds_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ds_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, const u8 *buf, int len)
{
	struct ds_device *dev = data;
	u8 *tbuf;

	if (len <= 0)
		return;

	tbuf = FUNC2(buf, len, GFP_KERNEL);
	if (!tbuf)
		return;

	FUNC0(dev, tbuf, len);

	FUNC1(tbuf);
}