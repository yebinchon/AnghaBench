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
struct iov_iter {int dummy; } ;
struct ffs_epfile {int /*<<< orphan*/  read_buffer; } ;
struct ffs_buffer {scalar_t__ data; scalar_t__ length; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EFAULT ; 
 struct ffs_buffer* READ_BUFFER_DROP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ffs_buffer*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_buffer*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct ffs_buffer* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct ffs_epfile *epfile,
					  struct iov_iter *iter)
{
	/*
	 * Null out epfile->read_buffer so ffs_func_eps_disable does not free
	 * the buffer while we are using it.  See comment in struct ffs_epfile
	 * for full read_buffer pointer synchronisation story.
	 */
	struct ffs_buffer *buf = FUNC5(&epfile->read_buffer, NULL);
	ssize_t ret;
	if (!buf || buf == READ_BUFFER_DROP)
		return 0;

	ret = FUNC1(buf->data, buf->length, iter);
	if (buf->length == ret) {
		FUNC3(buf);
		return ret;
	}

	if (FUNC4(FUNC2(iter))) {
		ret = -EFAULT;
	} else {
		buf->length -= ret;
		buf->data += ret;
	}

	if (FUNC0(&epfile->read_buffer, NULL, buf))
		FUNC3(buf);

	return ret;
}