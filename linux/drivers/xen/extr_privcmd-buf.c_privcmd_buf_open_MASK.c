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
struct privcmd_buf_private {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct inode {int dummy; } ;
struct file {struct privcmd_buf_private* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct privcmd_buf_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *ino, struct file *file)
{
	struct privcmd_buf_private *file_priv;

	file_priv = FUNC1(sizeof(*file_priv), GFP_KERNEL);
	if (!file_priv)
		return -ENOMEM;

	FUNC2(&file_priv->lock);
	FUNC0(&file_priv->list);

	file->private_data = file_priv;

	return 0;
}