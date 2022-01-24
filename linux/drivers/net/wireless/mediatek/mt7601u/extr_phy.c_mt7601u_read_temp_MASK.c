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
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  BBP_R47_F_TEMP ; 
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt7601u_dev*,int,int,int) ; 
 int FUNC2 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s8 FUNC4(struct mt7601u_dev *dev)
{
	int i;
	u8 val;
	s8 temp;

	val = FUNC1(dev, 47, 0x7f, 0x10);

	/* Note: this rarely succeeds, temp can change even if it fails. */
	for (i = 100; i && (val & 0x10); i--)
		val = FUNC2(dev, 47);

	temp = FUNC0(dev, val, BBP_R47_F_TEMP);

	FUNC3(dev, temp);
	return temp;
}