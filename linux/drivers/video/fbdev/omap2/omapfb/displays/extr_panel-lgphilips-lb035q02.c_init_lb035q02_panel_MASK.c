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
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_device*,int,int) ; 

__attribute__((used)) static void FUNC1(struct spi_device *spi)
{
	/* Init sequence from page 28 of the lb035q02 spec */
	FUNC0(spi, 0x01, 0x6300);
	FUNC0(spi, 0x02, 0x0200);
	FUNC0(spi, 0x03, 0x0177);
	FUNC0(spi, 0x04, 0x04c7);
	FUNC0(spi, 0x05, 0xffc0);
	FUNC0(spi, 0x06, 0xe806);
	FUNC0(spi, 0x0a, 0x4008);
	FUNC0(spi, 0x0b, 0x0000);
	FUNC0(spi, 0x0d, 0x0030);
	FUNC0(spi, 0x0e, 0x2800);
	FUNC0(spi, 0x0f, 0x0000);
	FUNC0(spi, 0x16, 0x9f80);
	FUNC0(spi, 0x17, 0x0a0f);
	FUNC0(spi, 0x1e, 0x00c1);
	FUNC0(spi, 0x30, 0x0300);
	FUNC0(spi, 0x31, 0x0007);
	FUNC0(spi, 0x32, 0x0000);
	FUNC0(spi, 0x33, 0x0000);
	FUNC0(spi, 0x34, 0x0707);
	FUNC0(spi, 0x35, 0x0004);
	FUNC0(spi, 0x36, 0x0302);
	FUNC0(spi, 0x37, 0x0202);
	FUNC0(spi, 0x3a, 0x0a0d);
	FUNC0(spi, 0x3b, 0x0806);
}