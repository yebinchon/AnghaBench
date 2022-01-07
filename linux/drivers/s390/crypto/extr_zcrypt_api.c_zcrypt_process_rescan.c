
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_INFO ;
 int ZCRYPT_DBF (int ,char*,int ) ;
 int ap_bus_force_rescan () ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int zcrypt_rescan_count ;
 int zcrypt_rescan_req ;

__attribute__((used)) static inline int zcrypt_process_rescan(void)
{
 if (atomic_read(&zcrypt_rescan_req)) {
  atomic_set(&zcrypt_rescan_req, 0);
  atomic_inc(&zcrypt_rescan_count);
  ap_bus_force_rescan();
  ZCRYPT_DBF(DBF_INFO, "rescan count=%07d\n",
      atomic_inc_return(&zcrypt_rescan_count));
  return 1;
 }
 return 0;
}
