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
struct virtio_net_config {int /*<<< orphan*/  mac; int /*<<< orphan*/  status; int /*<<< orphan*/  mtu; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mlxbf_tmfifo {int is_ready; int /*<<< orphan*/  timer; TYPE_1__* irq_info; void* tx_base; void* rx_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  spin_lock; } ;
typedef  int /*<<< orphan*/  net_config ;
struct TYPE_2__ {int index; scalar_t__ irq; struct mlxbf_tmfifo* fifo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_DATA_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  MLXBF_TMFIFO_NET_FEATURES ; 
 scalar_t__ MLXBF_TMFIFO_TIMER_INTERVAL ; 
 int MLXBF_TM_MAX_IRQ ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  VIRTIO_ID_CONSOLE ; 
 int /*<<< orphan*/  VIRTIO_ID_NET ; 
 int /*<<< orphan*/  VIRTIO_NET_S_LINK_UP ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct mlxbf_tmfifo* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct platform_device*,int) ; 
 int FUNC6 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_net_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxbf_tmfifo*) ; 
 int FUNC9 (struct device*,struct mlxbf_tmfifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_net_config*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxbf_tmfifo_irq_handler ; 
 int /*<<< orphan*/  FUNC11 (struct mlxbf_tmfifo*) ; 
 int /*<<< orphan*/  mlxbf_tmfifo_timer ; 
 int /*<<< orphan*/  mlxbf_tmfifo_work_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct mlxbf_tmfifo*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct virtio_net_config net_config;
	struct device *dev = &pdev->dev;
	struct mlxbf_tmfifo *fifo;
	int i, rc;

	fifo = FUNC4(dev, sizeof(*fifo), GFP_KERNEL);
	if (!fifo)
		return -ENOMEM;

	FUNC16(&fifo->spin_lock);
	FUNC0(&fifo->work, mlxbf_tmfifo_work_handler);
	FUNC13(&fifo->lock);

	/* Get the resource of the Rx FIFO. */
	fifo->rx_base = FUNC5(pdev, 0);
	if (FUNC1(fifo->rx_base))
		return FUNC2(fifo->rx_base);

	/* Get the resource of the Tx FIFO. */
	fifo->tx_base = FUNC5(pdev, 1);
	if (FUNC1(fifo->tx_base))
		return FUNC2(fifo->tx_base);

	FUNC15(pdev, fifo);

	FUNC17(&fifo->timer, mlxbf_tmfifo_timer, 0);

	for (i = 0; i < MLXBF_TM_MAX_IRQ; i++) {
		fifo->irq_info[i].index = i;
		fifo->irq_info[i].fifo = fifo;
		fifo->irq_info[i].irq = FUNC14(pdev, i);
		rc = FUNC6(dev, fifo->irq_info[i].irq,
				      mlxbf_tmfifo_irq_handler, 0,
				      "tmfifo", &fifo->irq_info[i]);
		if (rc) {
			FUNC3(dev, "devm_request_irq failed\n");
			fifo->irq_info[i].irq = 0;
			return rc;
		}
	}

	FUNC11(fifo);

	/* Create the console vdev. */
	rc = FUNC9(dev, fifo, VIRTIO_ID_CONSOLE, 0, NULL, 0);
	if (rc)
		goto fail;

	/* Create the network vdev. */
	FUNC7(&net_config, 0, sizeof(net_config));
	net_config.mtu = ETH_DATA_LEN;
	net_config.status = VIRTIO_NET_S_LINK_UP;
	FUNC10(net_config.mac);
	rc = FUNC9(dev, fifo, VIRTIO_ID_NET,
				      MLXBF_TMFIFO_NET_FEATURES, &net_config,
				      sizeof(net_config));
	if (rc)
		goto fail;

	FUNC12(&fifo->timer, jiffies + MLXBF_TMFIFO_TIMER_INTERVAL);

	fifo->is_ready = true;
	return 0;

fail:
	FUNC8(fifo);
	return rc;
}