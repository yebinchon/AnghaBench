#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mipid_device {TYPE_2__* spi; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int member_0; int member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mipid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mipid_device*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mipid_device*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct mipid_device *md)
{
	int i;
	u8 rbuf[2];
	static const struct {
		int	cmd;
		int	wlen;
		u16	wbuf[3];
	} *rd, rd_ctrl[7] = {
		{ 0xb0, 4, { 0x0101, 0x01fe, } },
		{ 0xb1, 4, { 0x01de, 0x0121, } },
		{ 0xc2, 4, { 0x0100, 0x0100, } },
		{ 0xbd, 2, { 0x0100, } },
		{ 0xc2, 4, { 0x01fc, 0x0103, } },
		{ 0xb4, 0, },
		{ 0x00, 0, },
	};

	rd = rd_ctrl;
	for (i = 0; i < 3; i++, rd++)
		FUNC3(md, rd->cmd, (u8 *)rd->wbuf, rd->wlen);

	FUNC4(10);
	FUNC2(md, rd->cmd, rbuf, 2);
	rd++;

	for (i = 0; i < 3; i++, rd++) {
		FUNC4(10);
		FUNC3(md, rd->cmd, (u8 *)rd->wbuf, rd->wlen);
	}

	FUNC0(&md->spi->dev, "ESD mode 2 state %02x\n", rbuf[1]);
	if (rbuf[1] == 0x00)
		FUNC1(md);
}