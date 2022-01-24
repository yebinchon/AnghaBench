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
struct gb_sdio_set_ios_request {int dummy; } ;
struct gb_sdio_host {int /*<<< orphan*/  gbphy_dev; int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_SDIO_TYPE_SET_IOS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_sdio_set_ios_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gb_sdio_host *host,
			   struct gb_sdio_set_ios_request *request)
{
	int ret;

	ret = FUNC1(host->gbphy_dev);
	if (ret)
		return ret;

	ret = FUNC0(host->connection, GB_SDIO_TYPE_SET_IOS, request,
				sizeof(*request), NULL, 0);

	FUNC2(host->gbphy_dev);

	return ret;
}