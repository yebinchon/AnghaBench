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
struct hd_async_handle {int /*<<< orphan*/  link; scalar_t__ in_use; scalar_t__ buffer_len; scalar_t__ is_final; } ;
struct hd_async_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(struct hd_async_context *pasync_ctx,
			 struct hd_async_handle *pasync_handle)
{
	pasync_handle->is_final = 0;
	pasync_handle->buffer_len = 0;
	pasync_handle->in_use = 0;
	FUNC0(&pasync_handle->link);
}