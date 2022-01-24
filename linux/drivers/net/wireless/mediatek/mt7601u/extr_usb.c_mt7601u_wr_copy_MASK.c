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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int,void const*,int) ; 

void FUNC2(struct mt7601u_dev *dev, u32 offset,
		     const void *data, int len)
{
	FUNC0(offset & 3, "unaligned write copy off:%08x", offset);
	FUNC0(len & 3, "short write copy off:%08x", offset);

	FUNC1(dev, offset, data, len / 4);
}