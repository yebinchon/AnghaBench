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
typedef  scalar_t__ u32 ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int const FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,scalar_t__ const,int const) ; 

void FUNC2(struct mt7601u_dev *dev, const u32 offset, const u8 *addr)
{
	FUNC1(dev, offset, FUNC0(addr));
	FUNC1(dev, offset + 4, addr[4] | addr[5] << 8);
}