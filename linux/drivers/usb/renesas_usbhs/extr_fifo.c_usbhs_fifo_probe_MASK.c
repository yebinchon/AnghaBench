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
struct usbhs_priv {int dummy; } ;
struct usbhs_fifo {char* name; int /*<<< orphan*/  ctr; int /*<<< orphan*/  sel; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFIFO ; 
 int /*<<< orphan*/  CFIFOCTR ; 
 int /*<<< orphan*/  CFIFOSEL ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_priv*,struct usbhs_fifo*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,struct usbhs_fifo*,int) ; 
 struct usbhs_fifo* FUNC2 (struct usbhs_priv*) ; 

int FUNC3(struct usbhs_priv *priv)
{
	struct usbhs_fifo *fifo;

	/* CFIFO */
	fifo = FUNC2(priv);
	fifo->name	= "CFIFO";
	fifo->port	= CFIFO;
	fifo->sel	= CFIFOSEL;
	fifo->ctr	= CFIFOCTR;

	/* DFIFO */
	FUNC0(priv, fifo, 0);
	FUNC0(priv, fifo, 1);
	FUNC1(priv, fifo, 2);
	FUNC1(priv, fifo, 3);

	return 0;
}