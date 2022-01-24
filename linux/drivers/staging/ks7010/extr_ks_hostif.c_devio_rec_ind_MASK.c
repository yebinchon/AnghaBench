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
struct ks_wlan_private {unsigned char** dev_data; unsigned int* dev_size; int /*<<< orphan*/  dev_read_lock; int /*<<< orphan*/  devread_wait; int /*<<< orphan*/  rec_count; int /*<<< orphan*/  event_count; int /*<<< orphan*/  is_device_open; } ;

/* Variables and functions */
 size_t DEVICE_STOCK_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ks_wlan_private *priv, unsigned char *p,
			  unsigned int size)
{
	if (!priv->is_device_open)
		return;

	FUNC3(&priv->dev_read_lock);
	priv->dev_data[FUNC1(&priv->rec_count)] = p;
	priv->dev_size[FUNC1(&priv->rec_count)] = size;

	if (FUNC1(&priv->event_count) != DEVICE_STOCK_COUNT) {
		/* rx event count inc */
		FUNC0(&priv->event_count);
	}
	FUNC0(&priv->rec_count);
	if (FUNC1(&priv->rec_count) == DEVICE_STOCK_COUNT)
		FUNC2(&priv->rec_count, 0);

	FUNC5(&priv->devread_wait);

	FUNC4(&priv->dev_read_lock);
}