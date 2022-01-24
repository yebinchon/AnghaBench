#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct most_interface {int /*<<< orphan*/  mod; TYPE_1__* p; } ;
struct TYPE_8__ {scalar_t__ refs; int num_buffers; struct core_component* comp; } ;
struct TYPE_7__ {scalar_t__ refs; int num_buffers; struct core_component* comp; } ;
struct TYPE_10__ {scalar_t__ direction; int num_buffers; scalar_t__ extra_len; } ;
struct most_channel {int /*<<< orphan*/  start_mutex; TYPE_3__ pipe1; TYPE_2__ pipe0; int /*<<< orphan*/  mbo_ref; TYPE_5__ cfg; scalar_t__ is_starving; int /*<<< orphan*/  hdm_fifo_wq; int /*<<< orphan*/  channel_id; TYPE_4__* iface; } ;
struct core_component {int dummy; } ;
struct TYPE_9__ {scalar_t__ (* configure ) (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ;} ;
struct TYPE_6__ {struct most_channel** channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOLCK ; 
 int ENOMEM ; 
 scalar_t__ MOST_CH_RX ; 
 int FUNC0 (struct most_channel*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  most_read_completion ; 
 int /*<<< orphan*/  most_write_completion ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct most_channel*,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct most_interface *iface, int id,
		       struct core_component *comp)
{
	int num_buffer;
	int ret;
	struct most_channel *c = iface->p->channel[id];

	if (FUNC10(!c))
		return -EINVAL;

	FUNC4(&c->start_mutex);
	if (c->pipe0.refs + c->pipe1.refs > 0)
		goto out; /* already started by another component */

	if (!FUNC9(iface->mod)) {
		FUNC6("failed to acquire HDM lock\n");
		FUNC5(&c->start_mutex);
		return -ENOLCK;
	}

	c->cfg.extra_len = 0;
	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
		FUNC6("channel configuration failed. Go check settings...\n");
		ret = -EINVAL;
		goto err_put_module;
	}

	FUNC2(&c->hdm_fifo_wq);

	if (c->cfg.direction == MOST_CH_RX)
		num_buffer = FUNC0(c, c->cfg.direction,
					   most_read_completion);
	else
		num_buffer = FUNC0(c, c->cfg.direction,
					   most_write_completion);
	if (FUNC10(!num_buffer)) {
		ret = -ENOMEM;
		goto err_put_module;
	}

	ret = FUNC7(c, id);
	if (ret)
		goto err_put_module;

	c->is_starving = 0;
	c->pipe0.num_buffers = c->cfg.num_buffers / 2;
	c->pipe1.num_buffers = c->cfg.num_buffers - c->pipe0.num_buffers;
	FUNC1(&c->mbo_ref, num_buffer);

out:
	if (comp == c->pipe0.comp)
		c->pipe0.refs++;
	if (comp == c->pipe1.comp)
		c->pipe1.refs++;
	FUNC5(&c->start_mutex);
	return 0;

err_put_module:
	FUNC3(iface->mod);
	FUNC5(&c->start_mutex);
	return ret;
}