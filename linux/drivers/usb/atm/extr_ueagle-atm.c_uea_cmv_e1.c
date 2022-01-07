
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int function; int address; int idx; int offset; } ;
struct TYPE_4__ {TYPE_1__ e1; } ;
struct uea_softc {TYPE_2__ cmv_dsc; } ;
struct cmv_e1 {int bFunction; int dwData; void* wOffsetAddress; int dwSymbolicAddress; void* wIndex; int bDirection; void* wPreamble; } ;
typedef int cmv ;


 int E1_FUNCTION_SUBTYPE (int) ;
 int E1_FUNCTION_TYPE (int) ;
 int E1_GETSA1 (int) ;
 int E1_GETSA2 (int) ;
 int E1_GETSA3 (int) ;
 int E1_GETSA4 (int) ;
 int E1_HOSTTOMODEM ;
 int E1_PREAMBLE ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_E1_SET_BLOCK ;
 int UEA_MPTX_START ;
 void* cpu_to_le16 (int ) ;
 int put_unaligned_le32 (int,int *) ;
 int uea_enters (int ) ;
 int uea_leaves (int ) ;
 int uea_request (struct uea_softc*,int ,int ,int,struct cmv_e1*) ;
 int uea_vdbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int) ;
 int wait_cmv_ack (struct uea_softc*) ;

__attribute__((used)) static int uea_cmv_e1(struct uea_softc *sc,
  u8 function, u32 address, u16 offset, u32 data)
{
 struct cmv_e1 cmv;
 int ret;

 uea_enters(INS_TO_USBDEV(sc));
 uea_vdbg(INS_TO_USBDEV(sc), "Function : %d-%d, Address : %c%c%c%c, "
   "offset : 0x%04x, data : 0x%08x\n",
   E1_FUNCTION_TYPE(function),
   E1_FUNCTION_SUBTYPE(function),
   E1_GETSA1(address), E1_GETSA2(address),
   E1_GETSA3(address),
   E1_GETSA4(address), offset, data);


 sc->cmv_dsc.e1.function = function | 0x2;
 sc->cmv_dsc.e1.idx++;
 sc->cmv_dsc.e1.address = address;
 sc->cmv_dsc.e1.offset = offset;

 cmv.wPreamble = cpu_to_le16(E1_PREAMBLE);
 cmv.bDirection = E1_HOSTTOMODEM;
 cmv.bFunction = function;
 cmv.wIndex = cpu_to_le16(sc->cmv_dsc.e1.idx);
 put_unaligned_le32(address, &cmv.dwSymbolicAddress);
 cmv.wOffsetAddress = cpu_to_le16(offset);
 put_unaligned_le32(data >> 16 | data << 16, &cmv.dwData);

 ret = uea_request(sc, UEA_E1_SET_BLOCK, UEA_MPTX_START,
       sizeof(cmv), &cmv);
 if (ret < 0)
  return ret;
 ret = wait_cmv_ack(sc);
 uea_leaves(INS_TO_USBDEV(sc));
 return ret;
}
