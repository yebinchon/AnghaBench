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
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum address_filtering { ____Placeholder_address_filtering } address_filtering ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MASK_PACKETCONFIG1_ADDRESSFILTERING ; 
#define  PACKETCONFIG1_ADDRESSFILTERING_NODE 133 
#define  PACKETCONFIG1_ADDRESSFILTERING_NODEBROADCAST 132 
#define  PACKETCONFIG1_ADDRESSFILTERING_OFF 131 
 int /*<<< orphan*/  REG_PACKETCONFIG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
#define  filtering_off 130 
#define  node_address 129 
#define  node_or_broadcast_address 128 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct spi_device *spi,
			       enum address_filtering address_filtering)
{
	static const u8 af_map[] = {
		[filtering_off] = PACKETCONFIG1_ADDRESSFILTERING_OFF,
		[node_address] = PACKETCONFIG1_ADDRESSFILTERING_NODE,
		[node_or_broadcast_address] =
			PACKETCONFIG1_ADDRESSFILTERING_NODEBROADCAST,
	};

	if (FUNC3(address_filtering >= FUNC0(af_map))) {
		FUNC1(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}

	return FUNC2(spi, REG_PACKETCONFIG1,
				   MASK_PACKETCONFIG1_ADDRESSFILTERING,
				   af_map[address_filtering]);
}