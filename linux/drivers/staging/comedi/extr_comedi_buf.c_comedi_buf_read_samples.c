
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_BLOCK ;
 int comedi_buf_memcpy_from (struct comedi_subdevice*,void*,unsigned int) ;
 unsigned int comedi_buf_read_alloc (struct comedi_subdevice*,int ) ;
 int comedi_buf_read_free (struct comedi_subdevice*,unsigned int) ;
 int comedi_buf_read_n_available (struct comedi_subdevice*) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,int ) ;
 int comedi_inc_scan_progress (struct comedi_subdevice*,unsigned int) ;
 int comedi_samples_to_bytes (struct comedi_subdevice*,unsigned int) ;

unsigned int comedi_buf_read_samples(struct comedi_subdevice *s,
         void *data, unsigned int nsamples)
{
 unsigned int max_samples;
 unsigned int nbytes;


 max_samples = comedi_bytes_to_samples(s,
           comedi_buf_read_n_available(s));
 if (nsamples > max_samples)
  nsamples = max_samples;

 if (nsamples == 0)
  return 0;

 nbytes = comedi_buf_read_alloc(s,
           comedi_samples_to_bytes(s, nsamples));
 comedi_buf_memcpy_from(s, data, nbytes);
 comedi_buf_read_free(s, nbytes);
 comedi_inc_scan_progress(s, nbytes);
 s->async->events |= COMEDI_CB_BLOCK;

 return nbytes;
}
