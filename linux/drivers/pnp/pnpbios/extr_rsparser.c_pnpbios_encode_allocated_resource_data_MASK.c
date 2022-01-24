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
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 unsigned char LARGE_TAG ; 
#define  LARGE_TAG_FIXEDMEM32 136 
#define  LARGE_TAG_MEM 135 
#define  LARGE_TAG_MEM32 134 
#define  SMALL_TAG_DMA 133 
#define  SMALL_TAG_END 132 
#define  SMALL_TAG_FIXEDPORT 131 
#define  SMALL_TAG_IRQ 130 
#define  SMALL_TAG_PORT 129 
#define  SMALL_TAG_VENDOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pnp_dev*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char *FUNC9(struct pnp_dev
								*dev,
							     unsigned char *p,
							     unsigned char *end)
{
	unsigned int len, tag;
	int port = 0, irq = 0, dma = 0, mem = 0;

	if (!p)
		return NULL;

	while ((char *)p < (char *)end) {

		/* determine the type of tag */
		if (p[0] & LARGE_TAG) {	/* large tag */
			len = (p[2] << 8) | p[1];
			tag = p[0];
		} else {	/* small tag */
			len = p[0] & 0x07;
			tag = ((p[0] >> 3) & 0x0f);
		}

		switch (tag) {

		case LARGE_TAG_MEM:
			if (len != 9)
				goto len_err;
			FUNC6(dev, p,
				FUNC1(dev, IORESOURCE_MEM, mem));
			mem++;
			break;

		case LARGE_TAG_MEM32:
			if (len != 17)
				goto len_err;
			FUNC7(dev, p,
				FUNC1(dev, IORESOURCE_MEM, mem));
			mem++;
			break;

		case LARGE_TAG_FIXEDMEM32:
			if (len != 9)
				goto len_err;
			FUNC3(dev, p,
				FUNC1(dev, IORESOURCE_MEM, mem));
			mem++;
			break;

		case SMALL_TAG_IRQ:
			if (len < 2 || len > 3)
				goto len_err;
			FUNC5(dev, p,
				FUNC1(dev, IORESOURCE_IRQ, irq));
			irq++;
			break;

		case SMALL_TAG_DMA:
			if (len != 2)
				goto len_err;
			FUNC2(dev, p,
				FUNC1(dev, IORESOURCE_DMA, dma));
			dma++;
			break;

		case SMALL_TAG_PORT:
			if (len != 7)
				goto len_err;
			FUNC8(dev, p,
				FUNC1(dev, IORESOURCE_IO, port));
			port++;
			break;

		case SMALL_TAG_VENDOR:
			/* do nothing */
			break;

		case SMALL_TAG_FIXEDPORT:
			if (len != 3)
				goto len_err;
			FUNC4(dev, p,
				FUNC1(dev, IORESOURCE_IO, port));
			port++;
			break;

		case SMALL_TAG_END:
			p = p + 2;
			return (unsigned char *)p;
			break;

		default:	/* an unknown tag */
len_err:
			FUNC0(&dev->dev, "unknown tag %#x length %d\n",
				tag, len);
			break;
		}

		/* continue to the next tag */
		if (p[0] & LARGE_TAG)
			p += len + 3;
		else
			p += len + 1;
	}

	FUNC0(&dev->dev, "no end tag in resource structure\n");

	return NULL;
}