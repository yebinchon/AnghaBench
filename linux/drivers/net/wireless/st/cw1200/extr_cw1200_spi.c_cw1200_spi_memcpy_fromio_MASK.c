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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct spi_transfer {int* tx_buf; int len; void* rx_buf; } ;
struct spi_message {int dummy; } ;
struct hwbus_priv {TYPE_1__* func; } ;
typedef  int /*<<< orphan*/  regaddr ;
struct TYPE_2__ {int bits_per_word; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int SET_READ ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (TYPE_1__*,struct spi_message*) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hwbus_priv *self,
				     unsigned int addr,
				     void *dst, int count)
{
	int ret, i;
	u16 regaddr;
	struct spi_message      m;

	struct spi_transfer     t_addr = {
		.tx_buf         = &regaddr,
		.len            = sizeof(regaddr),
	};
	struct spi_transfer     t_msg = {
		.rx_buf         = dst,
		.len            = count,
	};

	regaddr = (FUNC0(addr))<<12;
	regaddr |= SET_READ;
	regaddr |= (count>>1);

#ifdef SPI_DEBUG
	pr_info("READ : %04d from 0x%02x (%04x)\n", count, addr, regaddr);
#endif

	/* Header is LE16 */
	regaddr = FUNC1(regaddr);

	/* We have to byteswap if the SPI bus is limited to 8b operation
	   or we are running on a Big Endian system
	*/
#if defined(__LITTLE_ENDIAN)
	if (self->func->bits_per_word == 8)
#endif
		regaddr = FUNC7(regaddr);

	FUNC5(&m);
	FUNC4(&t_addr, &m);
	FUNC4(&t_msg, &m);
	ret = FUNC6(self->func, &m);

#ifdef SPI_DEBUG
	pr_info("READ : ");
	for (i = 0; i < t_addr.len; i++)
		printk("%02x ", ((u8 *)t_addr.tx_buf)[i]);
	printk(" : ");
	for (i = 0; i < t_msg.len; i++)
		printk("%02x ", ((u8 *)t_msg.rx_buf)[i]);
	printk("\n");
#endif

	/* We have to byteswap if the SPI bus is limited to 8b operation
	   or we are running on a Big Endian system
	*/
#if defined(__LITTLE_ENDIAN)
	if (self->func->bits_per_word == 8)
#endif
	{
		uint16_t *buf = (uint16_t *)dst;
		for (i = 0; i < ((count + 1) >> 1); i++)
			buf[i] = FUNC7(buf[i]);
	}

	return ret;
}