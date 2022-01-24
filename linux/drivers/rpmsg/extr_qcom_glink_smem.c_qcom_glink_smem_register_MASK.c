#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  scalar_t__ qcom_glink ;
struct TYPE_3__ {size_t length; int /*<<< orphan*/  write; int /*<<< orphan*/  avail; int /*<<< orphan*/  advance; int /*<<< orphan*/  peak; } ;
struct glink_smem_pipe {TYPE_1__ native; scalar_t__* head; scalar_t__* tail; void* remote_pid; scalar_t__* fifo; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; struct device* parent; int /*<<< orphan*/  release; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLINK_FEATURE_INTENT_REUSE ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  SMEM_GLINK_NATIVE_XPRT_DESCRIPTOR ; 
 int /*<<< orphan*/  SMEM_GLINK_NATIVE_XPRT_FIFO_0 ; 
 int SZ_16K ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,struct device_node*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 struct glink_smem_pipe* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glink_smem_rx_advance ; 
 int /*<<< orphan*/  glink_smem_rx_avail ; 
 int /*<<< orphan*/  glink_smem_rx_peak ; 
 int /*<<< orphan*/  glink_smem_tx_avail ; 
 int /*<<< orphan*/  glink_smem_tx_write ; 
 struct device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device_node*,char*,void**) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 scalar_t__* FUNC13 (struct device*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  qcom_glink_smem_release ; 
 int FUNC14 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC15 (void*,int /*<<< orphan*/ ,size_t*) ; 

struct qcom_glink *FUNC16(struct device *parent,
					    struct device_node *node)
{
	struct glink_smem_pipe *rx_pipe;
	struct glink_smem_pipe *tx_pipe;
	struct qcom_glink *glink;
	struct device *dev;
	u32 remote_pid;
	__le32 *descs;
	size_t size;
	int ret;

	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	dev->parent = parent;
	dev->of_node = node;
	dev->release = qcom_glink_smem_release;
	FUNC5(dev, "%s:%pOFn", FUNC4(parent->parent), node);
	ret = FUNC6(dev);
	if (ret) {
		FUNC11("failed to register glink edge\n");
		FUNC12(dev);
		return FUNC0(ret);
	}

	ret = FUNC10(dev->of_node, "qcom,remote-pid",
				   &remote_pid);
	if (ret) {
		FUNC3(dev, "failed to parse qcom,remote-pid\n");
		goto err_put_dev;
	}

	rx_pipe = FUNC8(dev, sizeof(*rx_pipe), GFP_KERNEL);
	tx_pipe = FUNC8(dev, sizeof(*tx_pipe), GFP_KERNEL);
	if (!rx_pipe || !tx_pipe) {
		ret = -ENOMEM;
		goto err_put_dev;
	}

	ret = FUNC14(remote_pid,
			      SMEM_GLINK_NATIVE_XPRT_DESCRIPTOR, 32);
	if (ret && ret != -EEXIST) {
		FUNC3(dev, "failed to allocate glink descriptors\n");
		goto err_put_dev;
	}

	descs = FUNC15(remote_pid,
			      SMEM_GLINK_NATIVE_XPRT_DESCRIPTOR, &size);
	if (FUNC1(descs)) {
		FUNC3(dev, "failed to acquire xprt descriptor\n");
		ret = FUNC2(descs);
		goto err_put_dev;
	}

	if (size != 32) {
		FUNC3(dev, "glink descriptor of invalid size\n");
		ret = -EINVAL;
		goto err_put_dev;
	}

	tx_pipe->tail = &descs[0];
	tx_pipe->head = &descs[1];
	rx_pipe->tail = &descs[2];
	rx_pipe->head = &descs[3];

	ret = FUNC14(remote_pid, SMEM_GLINK_NATIVE_XPRT_FIFO_0,
			      SZ_16K);
	if (ret && ret != -EEXIST) {
		FUNC3(dev, "failed to allocate TX fifo\n");
		goto err_put_dev;
	}

	tx_pipe->fifo = FUNC15(remote_pid, SMEM_GLINK_NATIVE_XPRT_FIFO_0,
				      &tx_pipe->native.length);
	if (FUNC1(tx_pipe->fifo)) {
		FUNC3(dev, "failed to acquire TX fifo\n");
		ret = FUNC2(tx_pipe->fifo);
		goto err_put_dev;
	}

	rx_pipe->native.avail = glink_smem_rx_avail;
	rx_pipe->native.peak = glink_smem_rx_peak;
	rx_pipe->native.advance = glink_smem_rx_advance;
	rx_pipe->remote_pid = remote_pid;

	tx_pipe->native.avail = glink_smem_tx_avail;
	tx_pipe->native.write = glink_smem_tx_write;
	tx_pipe->remote_pid = remote_pid;

	*rx_pipe->tail = 0;
	*tx_pipe->head = 0;

	glink = FUNC13(dev,
					GLINK_FEATURE_INTENT_REUSE,
					&rx_pipe->native, &tx_pipe->native,
					false);
	if (FUNC1(glink)) {
		ret = FUNC2(glink);
		goto err_put_dev;
	}

	return glink;

err_put_dev:
	FUNC7(dev);

	return FUNC0(ret);
}