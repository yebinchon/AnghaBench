
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_io_request {int raid_bypass; int * error_info; scalar_t__ status; int * scmd; } ;



__attribute__((used)) static inline void pqi_reinit_io_request(struct pqi_io_request *io_request)
{
 io_request->scmd = ((void*)0);
 io_request->status = 0;
 io_request->error_info = ((void*)0);
 io_request->raid_bypass = 0;
}
