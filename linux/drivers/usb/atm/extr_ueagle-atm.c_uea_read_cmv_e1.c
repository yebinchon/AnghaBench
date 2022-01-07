
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct uea_softc {int data; } ;


 int E1_MAKEFUNCTION (int ,int ) ;
 int E1_MEMACCESS ;
 int E1_REQUESTREAD ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int uea_cmv_e1 (struct uea_softc*,int ,int ,int ,int ) ;
 int uea_err (int ,char*,int) ;

__attribute__((used)) static inline int uea_read_cmv_e1(struct uea_softc *sc,
  u32 address, u16 offset, u32 *data)
{
 int ret = uea_cmv_e1(sc, E1_MAKEFUNCTION(E1_MEMACCESS, E1_REQUESTREAD),
     address, offset, 0);
 if (ret < 0)
  uea_err(INS_TO_USBDEV(sc),
   "reading cmv failed with error %d\n", ret);
 else
  *data = sc->data;

 return ret;
}
