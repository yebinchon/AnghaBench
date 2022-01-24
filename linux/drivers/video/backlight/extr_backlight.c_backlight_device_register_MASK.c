#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct backlight_properties {scalar_t__ type; } ;
struct backlight_ops {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/  class; } ;
struct TYPE_8__ {void* type; } ;
struct backlight_device {int /*<<< orphan*/  entry; struct backlight_ops const* ops; TYPE_1__ dev; TYPE_2__ props; int /*<<< orphan*/  ops_lock; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 void* BACKLIGHT_RAW ; 
 int /*<<< orphan*/  BACKLIGHT_REGISTERED ; 
 scalar_t__ BACKLIGHT_TYPE_MAX ; 
 int ENOMEM ; 
 struct backlight_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  backlight_class ; 
 int /*<<< orphan*/  backlight_dev_list ; 
 int /*<<< orphan*/  backlight_dev_list_mutex ; 
 int /*<<< orphan*/  backlight_notifier ; 
 int FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  bl_device_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char const*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct backlight_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct backlight_properties const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct backlight_device* pmac_backlight ; 
 int /*<<< orphan*/  pmac_backlight_mutex ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

struct backlight_device *FUNC16(const char *name,
	struct device *parent, void *devdata, const struct backlight_ops *ops,
	const struct backlight_properties *props)
{
	struct backlight_device *new_bd;
	int rc;

	FUNC14("backlight_device_register: name=%s\n", name);

	new_bd = FUNC8(sizeof(struct backlight_device), GFP_KERNEL);
	if (!new_bd)
		return FUNC0(-ENOMEM);

	FUNC11(&new_bd->update_lock);
	FUNC11(&new_bd->ops_lock);

	new_bd->dev.class = backlight_class;
	new_bd->dev.parent = parent;
	new_bd->dev.release = bl_device_release;
	FUNC5(&new_bd->dev, "%s", name);
	FUNC4(&new_bd->dev, devdata);

	/* Set default properties */
	if (props) {
		FUNC10(&new_bd->props, props,
		       sizeof(struct backlight_properties));
		if (props->type <= 0 || props->type >= BACKLIGHT_TYPE_MAX) {
			FUNC1(1, "%s: invalid backlight type", name);
			new_bd->props.type = BACKLIGHT_RAW;
		}
	} else {
		new_bd->props.type = BACKLIGHT_RAW;
	}

	rc = FUNC6(&new_bd->dev);
	if (rc) {
		FUNC15(&new_bd->dev);
		return FUNC0(rc);
	}

	rc = FUNC2(new_bd);
	if (rc) {
		FUNC7(&new_bd->dev);
		return FUNC0(rc);
	}

	new_bd->ops = ops;

#ifdef CONFIG_PMAC_BACKLIGHT
	mutex_lock(&pmac_backlight_mutex);
	if (!pmac_backlight)
		pmac_backlight = new_bd;
	mutex_unlock(&pmac_backlight_mutex);
#endif

	FUNC12(&backlight_dev_list_mutex);
	FUNC9(&new_bd->entry, &backlight_dev_list);
	FUNC13(&backlight_dev_list_mutex);

	FUNC3(&backlight_notifier,
				     BACKLIGHT_REGISTERED, new_bd);

	return new_bd;
}