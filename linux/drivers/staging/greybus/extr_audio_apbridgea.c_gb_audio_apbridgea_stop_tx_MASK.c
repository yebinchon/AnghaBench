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
struct gb_connection {int /*<<< orphan*/  hd; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2s_port; int /*<<< orphan*/  type; } ;
struct audio_apbridgea_stop_tx_request {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_APBRIDGEA_TYPE_STOP_TX ; 
 int /*<<< orphan*/  GB_APB_REQUEST_AUDIO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct audio_apbridgea_stop_tx_request*,int,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct gb_connection *connection, __u16 i2s_port)
{
	struct audio_apbridgea_stop_tx_request req;

	req.hdr.type = AUDIO_APBRIDGEA_TYPE_STOP_TX;
	req.hdr.i2s_port = FUNC0(i2s_port);

	return FUNC1(connection->hd, &req, sizeof(req),
			    GB_APB_REQUEST_AUDIO_CONTROL, true);
}