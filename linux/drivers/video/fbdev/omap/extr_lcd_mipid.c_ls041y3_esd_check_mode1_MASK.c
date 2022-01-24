#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mipid_device {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPID_CMD_RDDSDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mipid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mipid_device*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mipid_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mipid_device *md)
{
	u8 state1, state2;

	FUNC2(md, MIPID_CMD_RDDSDR, &state1, 1);
	FUNC3(md, 0);
	FUNC2(md, MIPID_CMD_RDDSDR, &state2, 1);
	FUNC0(&md->spi->dev, "ESD mode 1 state1 %02x state2 %02x\n",
		state1, state2);
	/* Each sleep out command will trigger a self diagnostic and flip
	* Bit6 if the test passes.
	*/
	if (!((state1 ^ state2) & (1 << 6)))
		FUNC1(md);
}