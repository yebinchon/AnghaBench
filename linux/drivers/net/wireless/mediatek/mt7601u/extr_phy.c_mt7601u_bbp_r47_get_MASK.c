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
 int BBP_R47_FLAG ; 
 int FUNC0 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static u8 FUNC3(struct mt7601u_dev *dev, u8 reg, u8 flag)
{
	flag |= reg & ~BBP_R47_FLAG;
	FUNC1(dev, 47, flag);
	FUNC2(500, 700);
	return FUNC0(dev, 49);
}