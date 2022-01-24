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
struct f_audio_buf {void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct f_audio_buf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct f_audio_buf*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct f_audio_buf *FUNC3(int buf_size)
{
	struct f_audio_buf *copy_buf;

	copy_buf = FUNC2(sizeof *copy_buf, GFP_ATOMIC);
	if (!copy_buf)
		return FUNC0(-ENOMEM);

	copy_buf->buf = FUNC2(buf_size, GFP_ATOMIC);
	if (!copy_buf->buf) {
		FUNC1(copy_buf);
		return FUNC0(-ENOMEM);
	}

	return copy_buf;
}