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
struct inode {struct array_data* i_private; } ;
struct file {char* private_data; } ;
struct array_data {int elements; int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct array_data *data = inode->i_private;
	int size, elements = data->elements;
	char *buf;

	/*
	 * Max size:
	 *  - 10 digits + ' '/'\n' = 11 bytes per number
	 *  - terminating NUL character
	 */
	size = elements*11;
	buf = FUNC0(size+1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	buf[size] = 0;

	file->private_data = buf;
	FUNC2(buf, size, data->array, data->elements);

	return FUNC1(inode, file);
}