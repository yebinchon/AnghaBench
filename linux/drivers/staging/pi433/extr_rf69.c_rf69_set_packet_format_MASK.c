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
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum packet_format { ____Placeholder_packet_format } packet_format ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE ; 
 int /*<<< orphan*/  REG_PACKETCONFIG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
#define  packet_length_fix 129 
#define  packet_length_var 128 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct spi_device *spi,
			   enum packet_format packet_format)
{
	switch (packet_format) {
	case packet_length_var:
		return FUNC2(spi, REG_PACKETCONFIG1,
				    MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
	case packet_length_fix:
		return FUNC1(spi, REG_PACKETCONFIG1,
				      MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
	default:
		FUNC0(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}
}