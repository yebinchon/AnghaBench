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
struct cdns3_device {int size; struct cdns3_device* zlp_buf; int /*<<< orphan*/  setup_dma; int /*<<< orphan*/  setup_buf; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  list; int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; int /*<<< orphan*/  aligned_buf_list; int /*<<< orphan*/  gadget; } ;
struct cdns3_aligned_buf {int size; struct cdns3_aligned_buf* zlp_buf; int /*<<< orphan*/  setup_dma; int /*<<< orphan*/  setup_buf; int /*<<< orphan*/  sysdev; int /*<<< orphan*/  list; int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; int /*<<< orphan*/  aligned_buf_list; int /*<<< orphan*/  gadget; } ;
struct cdns3 {struct cdns3_device* gadget_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_device*) ; 
 struct cdns3_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cdns3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct cdns3 *cdns)
{
	struct cdns3_device *priv_dev;

	priv_dev = cdns->gadget_dev;

	FUNC3(cdns->dev, cdns->dev_irq, cdns);

	FUNC8(cdns->dev);
	FUNC9(cdns->dev);

	FUNC10(&priv_dev->gadget);

	FUNC1(priv_dev);

	while (!FUNC7(&priv_dev->aligned_buf_list)) {
		struct cdns3_aligned_buf *buf;

		buf = FUNC2(&priv_dev->aligned_buf_list);
		FUNC4(priv_dev->sysdev, buf->size,
				  buf->buf,
				  buf->dma);

		FUNC6(&buf->list);
		FUNC5(buf);
	}

	FUNC4(priv_dev->sysdev, 8, priv_dev->setup_buf,
			  priv_dev->setup_dma);

	FUNC5(priv_dev->zlp_buf);
	FUNC5(priv_dev);
	cdns->gadget_dev = NULL;
	FUNC0(cdns, 0);
}