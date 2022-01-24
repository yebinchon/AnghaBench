#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct wl1271 {TYPE_1__* ops; } ;
typedef  enum wl_rx_buf_align { ____Placeholder_wl_rx_buf_align } wl_rx_buf_align ;
struct TYPE_2__ {int (* get_rx_buf_align ) (struct wl1271*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct wl1271*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline enum wl_rx_buf_align
FUNC2(struct wl1271 *wl, u32 rx_desc)
{

	if (!wl->ops->get_rx_buf_align)
		FUNC0(1);

	return wl->ops->get_rx_buf_align(wl, rx_desc);
}