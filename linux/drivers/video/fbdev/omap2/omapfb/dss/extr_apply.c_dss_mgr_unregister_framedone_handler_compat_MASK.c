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
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {void (* framedone_handler ) (void*) ;void* framedone_handler_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mgr_priv_data* FUNC1 (struct omap_overlay_manager*) ; 

__attribute__((used)) static void FUNC2(struct omap_overlay_manager *mgr,
		void (*handler)(void *), void *data)
{
	struct mgr_priv_data *mp = FUNC1(mgr);

	FUNC0(mp->framedone_handler != handler ||
			mp->framedone_handler_data != data);

	mp->framedone_handler = NULL;
	mp->framedone_handler_data = NULL;
}