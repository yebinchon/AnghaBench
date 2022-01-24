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
typedef  int u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_topology {int /*<<< orphan*/  size; } ;
struct gb_audio_get_topology_size_response {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  size_resp ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_AUDIO_TYPE_GET_TOPOLOGY ; 
 int /*<<< orphan*/  GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct gb_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_audio_topology*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_audio_topology*) ; 
 struct gb_audio_topology* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct gb_connection *connection,
			     struct gb_audio_topology **topology)
{
	struct gb_audio_get_topology_size_response size_resp;
	struct gb_audio_topology *topo;
	u16 size;
	int ret;

	ret = FUNC0(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
				NULL, 0, &size_resp, sizeof(size_resp));
	if (ret)
		return ret;

	size = FUNC3(size_resp.size);
	if (size < sizeof(*topo))
		return -ENODATA;

	topo = FUNC2(size, GFP_KERNEL);
	if (!topo)
		return -ENOMEM;

	ret = FUNC0(connection, GB_AUDIO_TYPE_GET_TOPOLOGY, NULL, 0,
				topo, size);
	if (ret) {
		FUNC1(topo);
		return ret;
	}

	*topology = topo;

	return 0;
}