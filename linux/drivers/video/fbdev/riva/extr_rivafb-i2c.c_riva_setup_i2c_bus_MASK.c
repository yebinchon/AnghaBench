#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_11__ {unsigned int class; TYPE_1__ dev; TYPE_2__* algo_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int udelay; struct riva_i2c_chan* data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  (* setscl ) (struct riva_i2c_chan*,int) ;int /*<<< orphan*/  (* setsda ) (struct riva_i2c_chan*,int) ;} ;
struct riva_i2c_chan {TYPE_4__* par; TYPE_5__ adapter; TYPE_2__ algo; } ;
struct TYPE_10__ {TYPE_3__* pdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,struct riva_i2c_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  riva_gpio_getscl ; 
 int /*<<< orphan*/  riva_gpio_getsda ; 
 int /*<<< orphan*/  FUNC5 (struct riva_i2c_chan*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct riva_i2c_chan*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct riva_i2c_chan *chan, const char *name,
			      unsigned int i2c_class)
{
	int rc;

	FUNC7(chan->adapter.name, name);
	chan->adapter.owner		= THIS_MODULE;
	chan->adapter.class		= i2c_class;
	chan->adapter.algo_data		= &chan->algo;
	chan->adapter.dev.parent	= &chan->par->pdev->dev;
	chan->algo.setsda		= riva_gpio_setsda;
	chan->algo.setscl		= riva_gpio_setscl;
	chan->algo.getsda		= riva_gpio_getsda;
	chan->algo.getscl		= riva_gpio_getscl;
	chan->algo.udelay		= 40;
	chan->algo.timeout		= FUNC4(2);
	chan->algo.data 		= chan;

	FUNC3(&chan->adapter, chan);

	/* Raise SCL and SDA */
	FUNC6(chan, 1);
	FUNC5(chan, 1);
	FUNC8(20);

	rc = FUNC2(&chan->adapter);
	if (rc == 0)
		FUNC0(&chan->par->pdev->dev, "I2C bus %s registered.\n", name);
	else {
		FUNC1(&chan->par->pdev->dev,
			 "Failed to register I2C bus %s.\n", name);
		chan->par = NULL;
	}

	return rc;
}