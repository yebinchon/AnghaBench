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
struct smd_channel_info_word {int dummy; } ;
struct smd_channel_info {int dummy; } ;
struct qcom_smd_edge {int /*<<< orphan*/  dev; int /*<<< orphan*/  remote_pid; } ;
struct qcom_smd_channel {size_t fifo_size; struct qcom_smd_channel* name; void* rx_fifo; void* tx_fifo; void* info; void* info_word; int /*<<< orphan*/  state_change_event; int /*<<< orphan*/  fblockread_event; int /*<<< orphan*/  recv_lock; int /*<<< orphan*/  tx_lock; struct qcom_smd_edge* edge; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct qcom_smd_channel* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_smd_channel*) ; 
 struct qcom_smd_channel* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct qcom_smd_channel* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_smd_channel*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,unsigned int,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct qcom_smd_channel *FUNC12(struct qcom_smd_edge *edge,
							unsigned smem_info_item,
							unsigned smem_fifo_item,
							char *name)
{
	struct qcom_smd_channel *channel;
	size_t fifo_size;
	size_t info_size;
	void *fifo_base;
	void *info;
	int ret;

	channel = FUNC8(sizeof(*channel), GFP_KERNEL);
	if (!channel)
		return FUNC0(-ENOMEM);

	channel->edge = edge;
	channel->name = FUNC7(name, GFP_KERNEL);
	if (!channel->name) {
		ret = -ENOMEM;
		goto free_channel;
	}

	FUNC11(&channel->tx_lock);
	FUNC11(&channel->recv_lock);
	FUNC5(&channel->fblockread_event);
	FUNC5(&channel->state_change_event);

	info = FUNC10(edge->remote_pid, smem_info_item, &info_size);
	if (FUNC1(info)) {
		ret = FUNC2(info);
		goto free_name_and_channel;
	}

	/*
	 * Use the size of the item to figure out which channel info struct to
	 * use.
	 */
	if (info_size == 2 * sizeof(struct smd_channel_info_word)) {
		channel->info_word = info;
	} else if (info_size == 2 * sizeof(struct smd_channel_info)) {
		channel->info = info;
	} else {
		FUNC4(&edge->dev,
			"channel info of size %zu not supported\n", info_size);
		ret = -EINVAL;
		goto free_name_and_channel;
	}

	fifo_base = FUNC10(edge->remote_pid, smem_fifo_item, &fifo_size);
	if (FUNC1(fifo_base)) {
		ret =  FUNC2(fifo_base);
		goto free_name_and_channel;
	}

	/* The channel consist of a rx and tx fifo of equal size */
	fifo_size /= 2;

	FUNC3(&edge->dev, "new channel '%s' info-size: %zu fifo-size: %zu\n",
			  name, info_size, fifo_size);

	channel->tx_fifo = fifo_base;
	channel->rx_fifo = fifo_base + fifo_size;
	channel->fifo_size = fifo_size;

	FUNC9(channel);

	return channel;

free_name_and_channel:
	FUNC6(channel->name);
free_channel:
	FUNC6(channel);

	return FUNC0(ret);
}