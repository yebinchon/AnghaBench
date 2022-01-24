#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct apr_device_id {scalar_t__ svc_id; int /*<<< orphan*/  domain_id; int /*<<< orphan*/  name; int /*<<< orphan*/  svc_version; } ;
struct TYPE_5__ {int /*<<< orphan*/ * driver; int /*<<< orphan*/  release; struct device_node* of_node; struct device* parent; int /*<<< orphan*/ * bus; } ;
struct apr_device {TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  version; int /*<<< orphan*/  domain_id; scalar_t__ svc_id; int /*<<< orphan*/  lock; } ;
struct apr {int /*<<< orphan*/  svcs_lock; int /*<<< orphan*/  svcs_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_NAME_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  apr_dev_release ; 
 int /*<<< orphan*/  aprbus ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct apr* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct apr_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct apr_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct device *dev, struct device_node *np,
			  const struct apr_device_id *id)
{
	struct apr *apr = FUNC1(dev);
	struct apr_device *adev = NULL;
	int ret;

	adev = FUNC7(sizeof(*adev), GFP_KERNEL);
	if (!adev)
		return -ENOMEM;

	FUNC11(&adev->lock);

	adev->svc_id = id->svc_id;
	adev->domain_id = id->domain_id;
	adev->version = id->svc_version;
	if (np)
		FUNC9(adev->name, APR_NAME_SIZE, "%pOFn", np);
	else
		FUNC13(adev->name, id->name, APR_NAME_SIZE);

	FUNC4(&adev->dev, "aprsvc:%s:%x:%x", adev->name,
		     id->domain_id, id->svc_id);

	adev->dev.bus = &aprbus;
	adev->dev.parent = dev;
	adev->dev.of_node = np;
	adev->dev.release = apr_dev_release;
	adev->dev.driver = NULL;

	FUNC10(&apr->svcs_lock);
	FUNC6(&apr->svcs_idr, adev, id->svc_id,
		  id->svc_id + 1, GFP_ATOMIC);
	FUNC12(&apr->svcs_lock);

	FUNC2(dev, "Adding APR dev: %s\n", FUNC3(&adev->dev));

	ret = FUNC5(&adev->dev);
	if (ret) {
		FUNC0(dev, "device_register failed: %d\n", ret);
		FUNC8(&adev->dev);
	}

	return ret;
}