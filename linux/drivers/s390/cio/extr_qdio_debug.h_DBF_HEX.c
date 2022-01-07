
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_ERR ;
 int debug_event (int ,int ,void*,int) ;
 int qdio_dbf_setup ;

__attribute__((used)) static inline void DBF_HEX(void *addr, int len)
{
 debug_event(qdio_dbf_setup, DBF_ERR, addr, len);
}
