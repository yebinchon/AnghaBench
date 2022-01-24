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
struct tty_struct {int /*<<< orphan*/  files_lock; } ;
struct tty_file_private {int /*<<< orphan*/  list; struct tty_struct* tty; } ;
struct file {struct tty_file_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 

__attribute__((used)) static void FUNC4(struct file *file)
{
	struct tty_file_private *priv = file->private_data;
	struct tty_struct *tty = priv->tty;

	FUNC1(&tty->files_lock);
	FUNC0(&priv->list);
	FUNC2(&tty->files_lock);
	FUNC3(file);
}