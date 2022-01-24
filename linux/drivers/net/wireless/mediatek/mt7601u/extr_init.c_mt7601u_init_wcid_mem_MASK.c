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
typedef  int u32 ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MT_WCID_ADDR_BASE ; 
 int N_WCIDS ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct mt7601u_dev *dev)
{
	u32 *vals;
	int i, ret;

	vals = FUNC1(sizeof(*vals) * N_WCIDS * 2, GFP_KERNEL);
	if (!vals)
		return -ENOMEM;

	for (i = 0; i < N_WCIDS; i++)  {
		vals[i * 2] = 0xffffffff;
		vals[i * 2 + 1] = 0x00ffffff;
	}

	ret = FUNC2(dev, MT_WCID_ADDR_BASE,
				       vals, N_WCIDS * 2);
	FUNC0(vals);

	return ret;
}