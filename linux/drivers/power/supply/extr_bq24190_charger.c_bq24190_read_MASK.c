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
typedef  int u8 ;
struct bq24190_dev_info {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct bq24190_dev_info *bdi, u8 reg, u8 *data)
{
	int ret;

	ret = FUNC0(bdi->client, reg);
	if (ret < 0)
		return ret;

	*data = ret;
	return 0;
}