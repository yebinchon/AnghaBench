
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sym_hcb {int features; int mmio_ba; int scripta_ba; int scriptb_ba; int hcb_ba; } ;


 int DEBUG_FLAGS ;
 int DEBUG_SCRIPT ;
 int FE_PFEN ;
 int FE_WIDE ;
 int OPC_MOVE ;
 int OPC_TCHMOVE ;


 int RELOC_MASK ;


 int SCR_DATA_ZERO ;
 int SCR_NO_FLUSH ;
 void* cpu_to_scr (int) ;
 int panic (char*,int) ;
 int printf (char*,...) ;
 char* sym_name (struct sym_hcb*) ;

void sym_fw_bind_script(struct sym_hcb *np, u32 *start, int len)
{
 u32 opcode, new, old, tmp1, tmp2;
 u32 *end, *cur;
 int relocs;

 cur = start;
 end = start + len/4;

 while (cur < end) {

  opcode = *cur;







  if (opcode == 0) {
   printf ("%s: ERROR0 IN SCRIPT at %d.\n",
    sym_name(np), (int) (cur-start));
   ++cur;
   continue;
  };





  if (opcode == SCR_DATA_ZERO) {
   *cur++ = 0;
   continue;
  }

  if (DEBUG_FLAGS & DEBUG_SCRIPT)
   printf ("%d:  <%x>\n", (int) (cur-start),
    (unsigned)opcode);




  switch (opcode >> 28) {
  case 0xf:



   relocs = 0;
   break;
  case 0xe:



   relocs = 1;
   break;
  case 0xc:



   relocs = 2;
   tmp1 = cur[1];
   tmp2 = cur[2];
   if ((tmp1 ^ tmp2) & 3) {
    printf ("%s: ERROR1 IN SCRIPT at %d.\n",
     sym_name(np), (int) (cur-start));
   }




   if ((opcode & SCR_NO_FLUSH) &&
       !(np->features & FE_PFEN)) {
    opcode = (opcode & ~SCR_NO_FLUSH);
   }
   break;
  case 0x0:



   if (!(np->features & FE_WIDE))
    opcode = (opcode | OPC_MOVE);
   relocs = 1;
   break;
  case 0x1:



   if (!(np->features & FE_WIDE))
    opcode = (opcode | OPC_MOVE);
   relocs = 0;
   break;
  case 0x8:




   if (opcode & 0x00800000)
    relocs = 0;
   else if ((opcode & 0xf8400000) == 0x80400000)
    relocs = 2;
   else
    relocs = 1;
   break;
  case 0x4:
  case 0x5:
  case 0x6:
  case 0x7:
   relocs = 1;
   break;
  default:
   relocs = 0;
   break;
  };




  *cur++ = cpu_to_scr(opcode);





  if (!relocs) {
   *cur = cpu_to_scr(*cur);
   ++cur;
   continue;
  }




  while (relocs--) {
   old = *cur;

   switch (old & RELOC_MASK) {
   case 129:
    new = (old & ~RELOC_MASK) + np->mmio_ba;
    break;
   case 131:
    new = (old & ~RELOC_MASK) + np->scripta_ba;
    break;
   case 130:
    new = (old & ~RELOC_MASK) + np->scriptb_ba;
    break;
   case 128:
    new = (old & ~RELOC_MASK) + np->hcb_ba;
    break;
   case 0:





    if (old == 0) {
     new = old;
     break;
    }

   default:
    new = 0;
    panic("sym_fw_bind_script: "
          "weird relocation %x\n", old);
    break;
   }

   *cur++ = cpu_to_scr(new);
  }
 };
}
