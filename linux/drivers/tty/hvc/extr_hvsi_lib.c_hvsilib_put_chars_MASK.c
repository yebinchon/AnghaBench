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
struct hvsi_priv {int dummy; } ;
struct hvsi_header {int dummy; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/  type; } ;
struct hvsi_data {TYPE_1__ hdr; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HVSI_MAX_OUTGOING_DATA ; 
 int /*<<< orphan*/  VS_DATA_PACKET_HEADER ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct hvsi_priv*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct hvsi_priv *pv, const char *buf, int count)
{
	struct hvsi_data dp;
	int rc, adjcount = FUNC3(count, HVSI_MAX_OUTGOING_DATA);

	if (FUNC0(!pv))
		return -ENODEV;

	dp.hdr.type = VS_DATA_PACKET_HEADER;
	dp.hdr.len = adjcount + sizeof(struct hvsi_header);
	FUNC2(dp.data, buf, adjcount);
	rc = FUNC1(pv, &dp.hdr);
	if (rc <= 0)
		return rc;
	return adjcount;
}