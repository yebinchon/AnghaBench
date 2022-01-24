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
struct spi_message {struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  statistics; struct spi_controller* controller; } ;
struct spi_controller {int (* transfer ) (struct spi_device*,struct spi_message*) ;int /*<<< orphan*/  statistics; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_async ; 
 int FUNC1 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi, struct spi_message *message)
{
	struct spi_controller *ctlr = spi->controller;

	/*
	 * Some controllers do not support doing regular SPI transfers. Return
	 * ENOTSUPP when this is the case.
	 */
	if (!ctlr->transfer)
		return -ENOTSUPP;

	message->spi = spi;

	FUNC0(&ctlr->statistics, spi_async);
	FUNC0(&spi->statistics, spi_async);

	FUNC2(message);

	return ctlr->transfer(spi, message);
}