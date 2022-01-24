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
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mt7601u_dev*,int,int) ; 
 int FUNC1 (struct mt7601u_dev*,int,int,int) ; 

__attribute__((used)) static int
FUNC2(struct mt7601u_dev *dev, u8 bank, u8 offset, u8 mask, u8 val)
{
	int ret;

	ret = FUNC0(dev, bank, offset);
	if (ret < 0)
		return ret;
	val |= ret & ~mask;
	ret = FUNC1(dev, bank, offset, val);
	if (ret)
		return ret;

	return val;
}