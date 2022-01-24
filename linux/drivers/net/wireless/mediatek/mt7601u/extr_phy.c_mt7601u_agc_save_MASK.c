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
struct mt7601u_dev {int /*<<< orphan*/  agc_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*,int) ; 

void FUNC1(struct mt7601u_dev *dev)
{
	dev->agc_save = FUNC0(dev, 66);
}