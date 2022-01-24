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
typedef  int u8 ;
struct ds278x_info {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC2(struct ds278x_info *info, int reg, u8 *val)
{
	int ret;

	ret = FUNC1(info->client, reg);
	if (ret < 0) {
		FUNC0(&info->client->dev, "register read failed\n");
		return ret;
	}

	*val = ret;
	return 0;
}