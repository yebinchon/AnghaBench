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
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device_id {char* cu_type; char* cu_model; char* dev_type; char* dev_model; } ;
struct ccw_device {struct ccw_device_id id; } ;
typedef  int /*<<< orphan*/  modalias_buf ;

/* Variables and functions */
 int FUNC0 (struct kobj_uevent_env*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct ccw_device_id*,char*) ; 
 struct ccw_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct ccw_device *cdev = FUNC2(dev);
	struct ccw_device_id *id = &(cdev->id);
	int ret;
	char modalias_buf[30];

	/* CU_TYPE= */
	ret = FUNC0(env, "CU_TYPE=%04X", id->cu_type);
	if (ret)
		return ret;

	/* CU_MODEL= */
	ret = FUNC0(env, "CU_MODEL=%02X", id->cu_model);
	if (ret)
		return ret;

	/* The next two can be zero, that's ok for us */
	/* DEV_TYPE= */
	ret = FUNC0(env, "DEV_TYPE=%04X", id->dev_type);
	if (ret)
		return ret;

	/* DEV_MODEL= */
	ret = FUNC0(env, "DEV_MODEL=%02X", id->dev_model);
	if (ret)
		return ret;

	/* MODALIAS=  */
	FUNC1(modalias_buf, sizeof(modalias_buf), id, "");
	ret = FUNC0(env, "MODALIAS=%s", modalias_buf);
	return ret;
}