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
struct vb2_buffer {int dummy; } ;
struct imx_media_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct imx_media_buffer* FUNC1 (struct vb2_buffer*) ; 

__attribute__((used)) static int FUNC2(struct vb2_buffer *vb)
{
	struct imx_media_buffer *buf = FUNC1(vb);

	FUNC0(&buf->list);

	return 0;
}