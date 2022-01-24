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
typedef  scalar_t__ u32 ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_VEND_WRITE ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

void FUNC2(struct mt7601u_dev *dev, u32 offset, u32 val)
{
	FUNC0(offset > USHRT_MAX, "write high off:%08x", offset);

	FUNC1(dev, MT_VEND_WRITE, offset, val);
}