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
struct tty_struct {int dummy; } ;
struct gbphy_device {int dummy; } ;
struct gb_tty {int disconnected; struct gb_tty* buffer; int /*<<< orphan*/  write_fifo; int /*<<< orphan*/  port; int /*<<< orphan*/  minor; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wioctl; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 struct gb_tty* FUNC3 (struct gbphy_device*) ; 
 int /*<<< orphan*/  gb_tty_driver ; 
 int /*<<< orphan*/  FUNC4 (struct gbphy_device*) ; 
 int FUNC5 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_tty*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_tty*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct gbphy_device *gbphy_dev)
{
	struct gb_tty *gb_tty = FUNC3(gbphy_dev);
	struct gb_connection *connection = gb_tty->connection;
	struct tty_struct *tty;
	int ret;

	ret = FUNC5(gbphy_dev);
	if (ret)
		FUNC4(gbphy_dev);

	FUNC8(&gb_tty->mutex);
	gb_tty->disconnected = true;

	FUNC16(&gb_tty->wioctl);
	FUNC9(&gb_tty->mutex);

	tty = FUNC13(&gb_tty->port);
	if (tty) {
		FUNC15(tty);
		FUNC11(tty);
	}

	FUNC2(connection);
	FUNC14(gb_tty_driver, gb_tty->minor);

	/* FIXME - free transmit / receive buffers */

	FUNC1(connection);
	FUNC12(&gb_tty->port);
	FUNC0(connection);
	FUNC10(gb_tty);
	FUNC6(&gb_tty->write_fifo);
	FUNC7(gb_tty->buffer);
	FUNC7(gb_tty);
}