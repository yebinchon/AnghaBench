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
typedef  int u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {int /*<<< orphan*/  termios; } ;
struct ktermios {int c_cflag; } ;
struct ch341_private {unsigned int baud_rate; int lcr; int mcr; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int B0 ; 
 int CBAUD ; 
 int CH341_BIT_DTR ; 
 int CH341_BIT_RTS ; 
 int CH341_LCR_CS5 ; 
 int CH341_LCR_CS6 ; 
 int CH341_LCR_CS7 ; 
 int CH341_LCR_CS8 ; 
 int CH341_LCR_ENABLE_PAR ; 
 int CH341_LCR_ENABLE_RX ; 
 int CH341_LCR_ENABLE_TX ; 
 int CH341_LCR_MARK_SPACE ; 
 int CH341_LCR_PAR_EVEN ; 
 int CH341_LCR_STOP_BITS_2 ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ch341_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC10 (struct tty_struct*) ; 
 unsigned int FUNC11 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct ktermios*) ; 
 struct ch341_private* FUNC14 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC15(struct tty_struct *tty,
		struct usb_serial_port *port, struct ktermios *old_termios)
{
	struct ch341_private *priv = FUNC14(port);
	unsigned baud_rate;
	unsigned long flags;
	u8 lcr;
	int r;

	/* redundant changes may cause the chip to lose bytes */
	if (old_termios && !FUNC13(&tty->termios, old_termios))
		return;

	baud_rate = FUNC10(tty);

	lcr = CH341_LCR_ENABLE_RX | CH341_LCR_ENABLE_TX;

	switch (FUNC2(tty)) {
	case CS5:
		lcr |= CH341_LCR_CS5;
		break;
	case CS6:
		lcr |= CH341_LCR_CS6;
		break;
	case CS7:
		lcr |= CH341_LCR_CS7;
		break;
	case CS8:
		lcr |= CH341_LCR_CS8;
		break;
	}

	if (FUNC4(tty)) {
		lcr |= CH341_LCR_ENABLE_PAR;
		if (FUNC5(tty) == 0)
			lcr |= CH341_LCR_PAR_EVEN;
		if (FUNC1(tty))
			lcr |= CH341_LCR_MARK_SPACE;
	}

	if (FUNC3(tty))
		lcr |= CH341_LCR_STOP_BITS_2;

	if (baud_rate) {
		priv->baud_rate = baud_rate;

		r = FUNC6(port->serial->dev, priv, lcr);
		if (r < 0 && old_termios) {
			priv->baud_rate = FUNC11(old_termios);
			FUNC12(&tty->termios, old_termios);
		} else if (r == 0) {
			priv->lcr = lcr;
		}
	}

	FUNC8(&priv->lock, flags);
	if (FUNC0(tty) == B0)
		priv->mcr &= ~(CH341_BIT_DTR | CH341_BIT_RTS);
	else if (old_termios && (old_termios->c_cflag & CBAUD) == B0)
		priv->mcr |= (CH341_BIT_DTR | CH341_BIT_RTS);
	FUNC9(&priv->lock, flags);

	FUNC7(port->serial->dev, priv->mcr);
}