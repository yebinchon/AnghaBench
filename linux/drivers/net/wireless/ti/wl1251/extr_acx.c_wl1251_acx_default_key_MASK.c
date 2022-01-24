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
typedef  void* u8 ;
struct wl1251 {void* default_key; } ;
struct acx_dot11_default_key {void* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_DEFAULT_KEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_dot11_default_key*) ; 
 struct acx_dot11_default_key* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_dot11_default_key*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1251 *wl, u8 key_id)
{
	struct acx_dot11_default_key *default_key;
	int ret;

	FUNC3(DEBUG_ACX, "acx dot11_default_key (%d)", key_id);

	default_key = FUNC1(sizeof(*default_key), GFP_KERNEL);
	if (!default_key)
		return -ENOMEM;

	default_key->id = key_id;

	ret = FUNC2(wl, DOT11_DEFAULT_KEY,
				   default_key, sizeof(*default_key));
	if (ret < 0) {
		FUNC4("Couldn't set default key");
		goto out;
	}

	wl->default_key = key_id;

out:
	FUNC0(default_key);
	return ret;
}