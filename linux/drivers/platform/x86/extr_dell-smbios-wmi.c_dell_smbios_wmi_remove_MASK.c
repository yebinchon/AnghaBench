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
struct wmi_smbios_priv {scalar_t__ buf; int /*<<< orphan*/  req_buf_size; int /*<<< orphan*/  list; } ;
struct wmi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  call_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wmi_smbios_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wmi_device *wdev)
{
	struct wmi_smbios_priv *priv = FUNC1(&wdev->dev);
	int count;

	FUNC5(&call_mutex);
	FUNC5(&list_mutex);
	FUNC4(&priv->list);
	FUNC6(&list_mutex);
	FUNC0(&wdev->dev);
	count = FUNC3(priv->req_buf_size);
	FUNC2((unsigned long)priv->buf, count);
	FUNC6(&call_mutex);
	return 0;
}