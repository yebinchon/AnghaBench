#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct gbaudio_data_connection {int /*<<< orphan*/ * state; TYPE_2__* connection; } ;
struct TYPE_6__ {scalar_t__ hd_cport_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  module_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_APBRIDGEA_DIRECTION_TX ; 
 int /*<<< orphan*/  GBAUDIO_CODEC_SHUTDOWN ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* gbcodec ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gbaudio_data_connection *data)
{
	u16 i2s_port, cportid;
	int ret;

	if (FUNC3(&gbcodec->module_list)) {
		ret = FUNC1(data->connection, 0);
		if (ret)
			return;
		ret = FUNC0(data->connection,
						     0);
		if (ret)
			return;
	}
	i2s_port = 0;	/* fixed for now */
	cportid = data->connection->hd_cport_id;
	ret = FUNC2(data->connection,
						  i2s_port, cportid,
						  AUDIO_APBRIDGEA_DIRECTION_TX);
	data->state[0] = GBAUDIO_CODEC_SHUTDOWN;
}