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
struct pnp_dev {int status; scalar_t__ active; TYPE_1__* protocol; int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get ) (struct pnp_dev*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IORESOURCE_BUS ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int PNP_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC9 (struct pnp_dev*) ; 
 scalar_t__ FUNC10 (struct pnp_dev*) ; 
 int FUNC11 (struct pnp_dev*) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (struct pnp_dev*) ; 
 int /*<<< orphan*/  pnp_res_mutex ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC17 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC18(struct device *dmdev,
			       struct device_attribute *attr, const char *ubuf,
			       size_t count)
{
	struct pnp_dev *dev = FUNC17(dmdev);
	char *buf = (void *)ubuf;
	int retval = 0;

	if (dev->status & PNP_ATTACHED) {
		retval = -EBUSY;
		FUNC0(&dev->dev, "in use; can't configure\n");
		goto done;
	}

	buf = FUNC14(buf);
	if (!FUNC15(buf, "disable", 7)) {
		retval = FUNC11(dev);
		goto done;
	}
	if (!FUNC15(buf, "activate", 8)) {
		retval = FUNC3(dev);
		goto done;
	}
	if (!FUNC15(buf, "fill", 4)) {
		if (dev->active)
			goto done;
		retval = FUNC9(dev);
		goto done;
	}
	if (!FUNC15(buf, "auto", 4)) {
		if (dev->active)
			goto done;
		FUNC13(dev);
		retval = FUNC9(dev);
		goto done;
	}
	if (!FUNC15(buf, "clear", 5)) {
		if (dev->active)
			goto done;
		FUNC13(dev);
		goto done;
	}
	if (!FUNC15(buf, "get", 3)) {
		FUNC1(&pnp_res_mutex);
		if (FUNC10(dev))
			dev->protocol->get(dev);
		FUNC2(&pnp_res_mutex);
		goto done;
	}
	if (!FUNC15(buf, "set", 3)) {
		resource_size_t start;
		resource_size_t end;
		unsigned long flags;

		if (dev->active)
			goto done;
		buf += 3;
		FUNC13(dev);
		FUNC1(&pnp_res_mutex);
		while (1) {
			buf = FUNC14(buf);
			if (!FUNC15(buf, "io", 2)) {
				buf = FUNC12(buf + 2,
							     IORESOURCE_IO,
							     &start, &end,
							     &flags);
				FUNC6(dev, start, end, flags);
			} else if (!FUNC15(buf, "mem", 3)) {
				buf = FUNC12(buf + 3,
							     IORESOURCE_MEM,
							     &start, &end,
							     &flags);
				FUNC8(dev, start, end, flags);
			} else if (!FUNC15(buf, "irq", 3)) {
				buf = FUNC12(buf + 3,
							     IORESOURCE_IRQ,
							     &start, NULL,
							     &flags);
				FUNC7(dev, start, flags);
			} else if (!FUNC15(buf, "dma", 3)) {
				buf = FUNC12(buf + 3,
							     IORESOURCE_DMA,
							     &start, NULL,
							     &flags);
				FUNC5(dev, start, flags);
			} else if (!FUNC15(buf, "bus", 3)) {
				buf = FUNC12(buf + 3,
							     IORESOURCE_BUS,
							     &start, &end,
							     NULL);
				FUNC4(dev, start, end);
			} else
				break;
		}
		FUNC2(&pnp_res_mutex);
		goto done;
	}

done:
	if (retval < 0)
		return retval;
	return count;
}