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
struct wl1271_static_data {int dummy; } ;
struct wl1271 {int static_data_priv_len; int /*<<< orphan*/  cmd_box_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_static_data*) ; 
 struct wl1271_static_data* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,struct wl1271_static_data*) ; 
 int FUNC3 (struct wl1271*,struct wl1271_static_data*) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_static_data*,size_t,int) ; 
 int FUNC5 (struct wl1271*) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl)
{
	struct wl1271_static_data *static_data;
	size_t len = sizeof(*static_data) + wl->static_data_priv_len;
	int ret;

	static_data = FUNC1(len, GFP_KERNEL);
	if (!static_data) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC4(wl, wl->cmd_box_addr, static_data, len, false);
	if (ret < 0)
		goto out_free;

	ret = FUNC2(wl, static_data);
	if (ret < 0)
		goto out_free;

	ret = FUNC5(wl);
	if (ret < 0)
		goto out_free;

	ret = FUNC3(wl, static_data);
	if (ret < 0)
		goto out_free;

out_free:
	FUNC0(static_data);
out:
	return ret;
}