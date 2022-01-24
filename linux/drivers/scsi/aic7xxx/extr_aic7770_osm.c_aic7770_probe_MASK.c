#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_3__ {scalar_t__ driver_data; } ;
struct eisa_device {int base_addr; TYPE_1__ id; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ ioport; } ;
struct ahc_softc {TYPE_2__ bsh; struct device* dev; } ;

/* Variables and functions */
 int AHC_EISA_SLOT_OFFSET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ahc_softc* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ahc_softc*,scalar_t__,int) ; 
 scalar_t__ aic7770_ident_table ; 
 int /*<<< orphan*/  aic7xxx_driver_template ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct ahc_softc*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 struct eisa_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int
FUNC8(struct device *dev)
{
	struct eisa_device *edev = FUNC7(dev);
	u_int eisaBase = edev->base_addr+AHC_EISA_SLOT_OFFSET;
	struct	ahc_softc *ahc;
	char	buf[80];
	char   *name;
	int	error;

	FUNC6(buf, "ahc_eisa:%d", eisaBase >> 12);
	name = FUNC5(buf, GFP_ATOMIC);
	if (name == NULL)
		return (ENOMEM);
	ahc = FUNC0(&aic7xxx_driver_template, name);
	if (ahc == NULL)
		return (ENOMEM);
	ahc->dev = dev;
	error = FUNC3(ahc, aic7770_ident_table + edev->id.driver_data,
			       eisaBase);
	if (error != 0) {
		ahc->bsh.ioport = 0;
		FUNC1(ahc);
		return (error);
	}

 	FUNC4(dev, ahc);

	error = FUNC2(ahc, &aic7xxx_driver_template);
	return (error);
}