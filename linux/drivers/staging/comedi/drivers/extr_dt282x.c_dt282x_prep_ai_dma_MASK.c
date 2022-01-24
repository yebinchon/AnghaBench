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
struct dt282x_private {int ntrig; int /*<<< orphan*/  dma_dir; struct comedi_isadma* dma; } ;
struct comedi_isadma_desc {int maxsize; int size; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct dt282x_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_isadma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_isadma_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, int dma_index, int n)
{
	struct dt282x_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[dma_index];

	if (!devpriv->ntrig)
		return 0;

	if (n == 0)
		n = desc->maxsize;
	if (n > devpriv->ntrig * 2)
		n = devpriv->ntrig * 2;
	devpriv->ntrig -= n / 2;

	desc->size = n;
	FUNC1(desc, devpriv->dma_dir);

	FUNC0(desc);

	return n;
}