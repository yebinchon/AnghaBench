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
struct st_nci_spi_phy {TYPE_1__* ndlc; struct spi_device* spi_dev; } ;
struct spi_transfer {int* rx_buf; int len; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct sk_buff {int data; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int hard_fault; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ST_NCI_SPI_MAX_SIZE ; 
 int ST_NCI_SPI_MIN_SIZE ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (struct spi_device*,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC8(struct st_nci_spi_phy *phy,
			struct sk_buff **skb)
{
	int r;
	u8 len;
	u8 buf[ST_NCI_SPI_MAX_SIZE];
	struct spi_device *dev = phy->spi_dev;
	struct spi_transfer spi_xfer = {
		.rx_buf = buf,
		.len = ST_NCI_SPI_MIN_SIZE,
	};

	r = FUNC7(dev, &spi_xfer, 1);
	if (r < 0)
		return -EREMOTEIO;

	len = FUNC1(*(__be16 *) (buf + 2));
	if (len > ST_NCI_SPI_MAX_SIZE) {
		FUNC4(&dev->dev, "invalid frame len\n");
		phy->ndlc->hard_fault = 1;
		return -EBADMSG;
	}

	*skb = FUNC0(ST_NCI_SPI_MIN_SIZE + len, GFP_KERNEL);
	if (*skb == NULL)
		return -ENOMEM;

	FUNC6(*skb, ST_NCI_SPI_MIN_SIZE);
	FUNC5(*skb, ST_NCI_SPI_MIN_SIZE);
	FUNC3((*skb)->data, buf, ST_NCI_SPI_MIN_SIZE);

	if (!len)
		return 0;

	spi_xfer.len = len;
	r = FUNC7(dev, &spi_xfer, 1);
	if (r < 0) {
		FUNC2(*skb);
		return -EREMOTEIO;
	}

	FUNC5(*skb, len);
	FUNC3((*skb)->data + ST_NCI_SPI_MIN_SIZE, buf, len);

	return 0;
}