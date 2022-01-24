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
struct mt7601u_dma_buf {int dummy; } ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MCU_FW_URB_MAX_PAYLOAD ; 
 int /*<<< orphan*/  MT_MCU_COM_REG1 ; 
 int FUNC1 (struct mt7601u_dev*,struct mt7601u_dma_buf*,void const*,int,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct mt7601u_dev *dev, struct mt7601u_dma_buf *dma_buf,
	       const void *data, int len, u32 dst_addr)
{
	int n, ret;

	if (len == 0)
		return 0;

	n = FUNC2(MCU_FW_URB_MAX_PAYLOAD, len);
	ret = FUNC1(dev, dma_buf, data, n, dst_addr);
	if (ret)
		return ret;

	if (!FUNC3(dev, MT_MCU_COM_REG1, FUNC0(31), FUNC0(31), 500))
		return -ETIMEDOUT;

	return FUNC4(dev, dma_buf, data + n, len - n, dst_addr + n);
}