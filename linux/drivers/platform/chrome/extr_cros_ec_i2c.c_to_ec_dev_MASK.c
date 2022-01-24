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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_device {int dummy; } ;

/* Variables and functions */
 struct cros_ec_device* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct device*) ; 

__attribute__((used)) static inline struct cros_ec_device *FUNC2(struct device *dev)
{
	struct i2c_client *client = FUNC1(dev);

	return FUNC0(client);
}