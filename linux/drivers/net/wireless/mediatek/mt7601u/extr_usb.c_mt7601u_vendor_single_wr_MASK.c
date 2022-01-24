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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mt7601u_dev {int /*<<< orphan*/  vendor_req_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct mt7601u_dev*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mt7601u_dev *dev, const u8 req,
			     const u16 offset, const u32 val)
{
	int ret;

	FUNC1(&dev->vendor_req_mutex);
	ret = FUNC0(dev, req, offset, val);
	FUNC2(&dev->vendor_req_mutex);

	return ret;
}