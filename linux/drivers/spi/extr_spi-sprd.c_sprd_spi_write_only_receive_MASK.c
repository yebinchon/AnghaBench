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
struct sprd_spi {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPRD_SPI_CTL4 ; 
 int SPRD_SPI_ONLY_RECV_MASK ; 
 int SPRD_SPI_START_RX ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct sprd_spi *ss, u32 len)
{
	u32 val;

	/* Clear the start receive bit and reset receive data number */
	val = FUNC0(ss->base + SPRD_SPI_CTL4);
	val &= ~(SPRD_SPI_START_RX | SPRD_SPI_ONLY_RECV_MASK);
	FUNC1(val, ss->base + SPRD_SPI_CTL4);

	/* Set the receive data length */
	val = FUNC0(ss->base + SPRD_SPI_CTL4);
	val |= len & SPRD_SPI_ONLY_RECV_MASK;
	FUNC1(val, ss->base + SPRD_SPI_CTL4);

	/* Trigger to receive data */
	val = FUNC0(ss->base + SPRD_SPI_CTL4);
	val |= SPRD_SPI_START_RX;
	FUNC1(val, ss->base + SPRD_SPI_CTL4);

	return len;
}