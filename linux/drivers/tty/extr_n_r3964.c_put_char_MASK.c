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
struct r3964_info {unsigned char bcc; struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,unsigned char) ; 

__attribute__((used)) static void FUNC1(struct r3964_info *pInfo, unsigned char ch)
{
	struct tty_struct *tty = pInfo->tty;
	/* FIXME: put_char should not be called from an IRQ */
	FUNC0(tty, ch);
	pInfo->bcc ^= ch;
}