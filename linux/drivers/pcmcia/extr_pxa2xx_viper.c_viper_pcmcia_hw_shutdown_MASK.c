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
struct soc_pcmcia_socket {int dummy; } ;
struct arcom_pcmcia_pdata {int /*<<< orphan*/  pwr_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct arcom_pcmcia_pdata* FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct soc_pcmcia_socket *skt)
{
	struct arcom_pcmcia_pdata *pdata = FUNC1();

	FUNC0(pdata->pwr_gpio);
}