
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int ntrig; int dma_dir; struct comedi_isadma* dma; } ;
struct comedi_isadma_desc {int maxsize; int size; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct dt282x_private* private; } ;


 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 int comedi_isadma_set_mode (struct comedi_isadma_desc*,int ) ;

__attribute__((used)) static int dt282x_prep_ai_dma(struct comedi_device *dev, int dma_index, int n)
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
 comedi_isadma_set_mode(desc, devpriv->dma_dir);

 comedi_isadma_program(desc);

 return n;
}
