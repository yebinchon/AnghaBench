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
struct soc_pcmcia_regulator {int on; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct soc_pcmcia_socket {struct soc_pcmcia_regulator vcc; TYPE_1__ socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

int FUNC5(struct soc_pcmcia_socket *skt,
	struct soc_pcmcia_regulator *r, int v)
{
	bool on;
	int ret;

	if (!r->reg)
		return 0;

	on = v != 0;
	if (r->on == on)
		return 0;

	if (on) {
		ret = FUNC4(r->reg, v * 100000, v * 100000);
		if (ret) {
			int vout = FUNC3(r->reg) / 100000;

			FUNC0(&skt->socket.dev,
				 "CS requested %s=%u.%uV, applying %u.%uV\n",
				 r == &skt->vcc ? "Vcc" : "Vpp",
				 v / 10, v % 10, vout / 10, vout % 10);
		}

		ret = FUNC2(r->reg);
	} else {
		ret = FUNC1(r->reg);
	}
	if (ret == 0)
		r->on = on;

	return ret;
}