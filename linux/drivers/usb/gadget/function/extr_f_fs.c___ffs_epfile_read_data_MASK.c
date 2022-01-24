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
struct ffs_buffer {int length; int /*<<< orphan*/  storage; int /*<<< orphan*/  data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ffs_buffer*) ; 
 int FUNC1 (void*,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_buffer*) ; 
 struct ffs_buffer* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct ffs_epfile *epfile,
				      void *data, int data_len,
				      struct iov_iter *iter)
{
	struct ffs_buffer *buf;

	ssize_t ret = FUNC1(data, data_len, iter);
	if (FUNC5(data_len == ret))
		return ret;

	if (FUNC8(FUNC2(iter)))
		return -EFAULT;

	/* See ffs_copy_to_iter for more context. */
	FUNC7("functionfs read size %d > requested size %zd, splitting request into multiple reads.",
		data_len, ret);

	data_len -= ret;
	buf = FUNC4(sizeof(*buf) + data_len, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	buf->length = data_len;
	buf->data = buf->storage;
	FUNC6(buf->storage, data + ret, data_len);

	/*
	 * At this point read_buffer is NULL or READ_BUFFER_DROP (if
	 * ffs_func_eps_disable has been called in the meanwhile).  See comment
	 * in struct ffs_epfile for full read_buffer pointer synchronisation
	 * story.
	 */
	if (FUNC8(FUNC0(&epfile->read_buffer, NULL, buf)))
		FUNC3(buf);

	return ret;
}