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
struct sdw_stream_runtime {int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
struct sdw_stream_config {int dummy; } ;
struct sdw_slave_runtime {int /*<<< orphan*/  m_rt_node; } ;
struct sdw_slave {TYPE_1__* bus; int /*<<< orphan*/  dev; } ;
struct sdw_port_config {int dummy; } ;
struct sdw_master_runtime {int /*<<< orphan*/  slave_rt_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SDW_STREAM_CONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sdw_master_runtime* FUNC4 (TYPE_1__*,struct sdw_stream_config*,struct sdw_stream_runtime*) ; 
 struct sdw_slave_runtime* FUNC5 (struct sdw_slave*,struct sdw_stream_config*,struct sdw_stream_runtime*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct sdw_stream_runtime*,struct sdw_stream_config*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdw_master_runtime*,struct sdw_stream_runtime*) ; 
 int FUNC8 (struct sdw_slave*,struct sdw_slave_runtime*,struct sdw_port_config*,unsigned int) ; 

int FUNC9(struct sdw_slave *slave,
			 struct sdw_stream_config *stream_config,
			 struct sdw_port_config *port_config,
			 unsigned int num_ports,
			 struct sdw_stream_runtime *stream)
{
	struct sdw_slave_runtime *s_rt;
	struct sdw_master_runtime *m_rt;
	int ret;

	FUNC2(&slave->bus->bus_lock);

	/*
	 * If this API is invoked by Slave first then m_rt is not valid.
	 * So, allocate m_rt and add Slave to it.
	 */
	m_rt = FUNC4(slave->bus, stream_config, stream);
	if (!m_rt) {
		FUNC0(&slave->dev,
			"alloc master runtime failed for stream:%s\n",
			stream->name);
		ret = -ENOMEM;
		goto error;
	}

	s_rt = FUNC5(slave, stream_config, stream);
	if (!s_rt) {
		FUNC0(&slave->dev,
			"Slave runtime config failed for stream:%s\n",
			stream->name);
		ret = -ENOMEM;
		goto stream_error;
	}

	ret = FUNC6(&slave->dev, stream, stream_config, true);
	if (ret)
		goto stream_error;

	FUNC1(&s_rt->m_rt_node, &m_rt->slave_rt_list);

	ret = FUNC8(slave, s_rt, port_config, num_ports);
	if (ret)
		goto stream_error;

	/*
	 * Change stream state to CONFIGURED on first Slave add.
	 * Bus is not aware of number of Slave(s) in a stream at this
	 * point so cannot depend on all Slave(s) to be added in order to
	 * change stream state to CONFIGURED.
	 */
	stream->state = SDW_STREAM_CONFIGURED;
	goto error;

stream_error:
	/*
	 * we hit error so cleanup the stream, release all Slave(s) and
	 * Master runtime
	 */
	FUNC7(m_rt, stream);
error:
	FUNC3(&slave->bus->bus_lock);
	return ret;
}