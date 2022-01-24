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
struct tty_struct {struct spk_ldisc_data* disc_data; TYPE_1__* ops; } ;
struct spk_ldisc_data {int buf_free; int /*<<< orphan*/  completion; } ;
struct TYPE_2__ {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct spk_ldisc_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct tty_struct* speakup_tty ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty)
{
	struct spk_ldisc_data *ldisc_data;

	if (!tty->ops->write)
		return -EOPNOTSUPP;
	speakup_tty = tty;

	ldisc_data = FUNC1(sizeof(struct spk_ldisc_data), GFP_KERNEL);
	if (!ldisc_data)
		return -ENOMEM;

	FUNC0(&ldisc_data->completion);
	ldisc_data->buf_free = true;
	speakup_tty->disc_data = ldisc_data;

	return 0;
}