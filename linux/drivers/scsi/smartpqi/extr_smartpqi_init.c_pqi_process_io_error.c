
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_io_request {int dummy; } ;




 int pqi_process_aio_io_error (struct pqi_io_request*) ;
 int pqi_process_raid_io_error (struct pqi_io_request*) ;

__attribute__((used)) static void pqi_process_io_error(unsigned int iu_type,
 struct pqi_io_request *io_request)
{
 switch (iu_type) {
 case 128:
  pqi_process_raid_io_error(io_request);
  break;
 case 129:
  pqi_process_aio_io_error(io_request);
  break;
 }
}
