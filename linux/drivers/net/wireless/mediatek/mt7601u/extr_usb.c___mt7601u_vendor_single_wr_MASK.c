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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int FUNC0 (struct mt7601u_dev*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,scalar_t__ const,int const) ; 

__attribute__((used)) static int FUNC2(struct mt7601u_dev *dev, const u8 req,
				      const u16 offset, const u32 val)
{
	int ret = FUNC0(dev, req, USB_DIR_OUT,
					 val & 0xffff, offset, NULL, 0);
	if (!ret)
		ret = FUNC0(dev, req, USB_DIR_OUT,
					     val >> 16, offset + 2, NULL, 0);
	FUNC1(dev, offset, val);
	return ret;
}