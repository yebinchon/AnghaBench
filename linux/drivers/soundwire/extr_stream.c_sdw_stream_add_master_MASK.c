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
struct sdw_stream_runtime {scalar_t__ m_rt_count; int /*<<< orphan*/  name; } ;
struct sdw_stream_config {int dummy; } ;
struct sdw_port_config {int dummy; } ;
struct sdw_master_runtime {int dummy; } ;
struct sdw_bus {int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  link_id; int /*<<< orphan*/  multi_link; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sdw_master_runtime* FUNC3 (struct sdw_bus*,struct sdw_stream_config*,struct sdw_stream_runtime*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sdw_stream_runtime*,struct sdw_stream_config*,int) ; 
 int FUNC5 (struct sdw_bus*,struct sdw_master_runtime*,struct sdw_port_config*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdw_master_runtime*,struct sdw_stream_runtime*) ; 

int FUNC7(struct sdw_bus *bus,
			  struct sdw_stream_config *stream_config,
			  struct sdw_port_config *port_config,
			  unsigned int num_ports,
			  struct sdw_stream_runtime *stream)
{
	struct sdw_master_runtime *m_rt;
	int ret;

	FUNC1(&bus->bus_lock);

	/*
	 * For multi link streams, add the second master only if
	 * the bus supports it.
	 * Check if bus->multi_link is set
	 */
	if (!bus->multi_link && stream->m_rt_count > 0) {
		FUNC0(bus->dev,
			"Multilink not supported, link %d\n", bus->link_id);
		ret = -EINVAL;
		goto unlock;
	}

	m_rt = FUNC3(bus, stream_config, stream);
	if (!m_rt) {
		FUNC0(bus->dev,
			"Master runtime config failed for stream:%s\n",
			stream->name);
		ret = -ENOMEM;
		goto unlock;
	}

	ret = FUNC4(bus->dev, stream, stream_config, false);
	if (ret)
		goto stream_error;

	ret = FUNC5(bus, m_rt, port_config, num_ports);
	if (ret)
		goto stream_error;

	stream->m_rt_count++;

	goto unlock;

stream_error:
	FUNC6(m_rt, stream);
unlock:
	FUNC2(&bus->bus_lock);
	return ret;
}