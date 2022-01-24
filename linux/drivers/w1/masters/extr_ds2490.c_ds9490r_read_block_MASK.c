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
struct ds_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ds_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static u8 FUNC4(void *data, u8 *buf, int len)
{
	struct ds_device *dev = data;
	int err;
	u8 *tbuf;

	if (len <= 0)
		return 0;

	tbuf = FUNC2(len, GFP_KERNEL);
	if (!tbuf)
		return 0;

	err = FUNC0(dev, tbuf, len);
	if (err >= 0)
		FUNC3(buf, tbuf, len);

	FUNC1(tbuf);

	return err >= 0 ? len : 0;
}