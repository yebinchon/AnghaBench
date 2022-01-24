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
struct soc_pcmcia_socket {scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vpac270_cf_gpios ; 
 int /*<<< orphan*/  vpac270_pcmcia_gpios ; 

__attribute__((used)) static void FUNC2(struct soc_pcmcia_socket *skt)
{
	if (skt->nr == 0)
		FUNC1(vpac270_pcmcia_gpios,
					FUNC0(vpac270_pcmcia_gpios));
	else
		FUNC1(vpac270_cf_gpios,
					FUNC0(vpac270_cf_gpios));
}