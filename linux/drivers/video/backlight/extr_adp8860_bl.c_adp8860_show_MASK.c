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
typedef  int uint8_t ;
struct device {int dummy; } ;
struct adp8860_bl {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 struct adp8860_bl* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, char *buf, int reg)
{
	struct adp8860_bl *data = FUNC1(dev);
	int error;
	uint8_t reg_val;

	FUNC2(&data->lock);
	error = FUNC0(data->client, reg, &reg_val);
	FUNC3(&data->lock);

	if (error < 0)
		return error;

	return FUNC4(buf, "%u\n", reg_val);
}