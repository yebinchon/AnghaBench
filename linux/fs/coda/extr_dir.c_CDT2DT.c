
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DT_BLK ;
 unsigned int DT_CHR ;
 unsigned int DT_DIR ;
 unsigned int DT_FIFO ;
 unsigned int DT_LNK ;
 unsigned int DT_REG ;
 unsigned int DT_SOCK ;
 unsigned int DT_UNKNOWN ;
 unsigned int DT_WHT ;

__attribute__((used)) static inline unsigned int CDT2DT(unsigned char cdt)
{
 unsigned int dt;

 switch(cdt) {
 case 129: dt = DT_UNKNOWN; break;
 case 133: dt = DT_FIFO; break;
 case 135: dt = DT_CHR; break;
 case 134: dt = DT_DIR; break;
 case 136: dt = DT_BLK; break;
 case 131: dt = DT_REG; break;
 case 132: dt = DT_LNK; break;
 case 130: dt = DT_SOCK; break;
 case 128: dt = DT_WHT; break;
 default: dt = DT_UNKNOWN; break;
 }
 return dt;
}
