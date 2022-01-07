
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 char* GetLineFromBuffer (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void phy_DecryptBBPgParaFile(struct adapter *Adapter, char *buffer)
{
 u32 i = 0, j = 0;
 u8 map[95] = {0};
 u8 currentChar;
 char *BufOfLines, *ptmp;



 for (i = 0; i < 95; ++i)
  map[i] = (u8) (94 - i);

 ptmp = buffer;
 i = 0;
 for (BufOfLines = GetLineFromBuffer(ptmp); BufOfLines != ((void*)0); BufOfLines = GetLineFromBuffer(ptmp)) {


  for (j = 0; j < strlen(BufOfLines); ++j) {
   currentChar = BufOfLines[j];

   if (currentChar == '\0')
    break;

   currentChar -= (u8) ((((i + j) * 3) % 128));

   BufOfLines[j] = map[currentChar - 32] + 32;
  }

  if (strlen(BufOfLines) != 0)
   i++;
  BufOfLines[strlen(BufOfLines)] = '\n';
 }
}
