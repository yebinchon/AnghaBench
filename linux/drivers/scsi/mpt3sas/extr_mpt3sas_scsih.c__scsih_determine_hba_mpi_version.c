
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int device; } ;
 int MPI25_VERSION ;
 int MPI26_VERSION ;
 int MPI2_VERSION ;

__attribute__((used)) static u16
_scsih_determine_hba_mpi_version(struct pci_dev *pdev)
{

 switch (pdev->device) {
 case 130:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  return MPI2_VERSION;
 case 174:
 case 173:
 case 172:
 case 171:
 case 170:
 case 169:
  return MPI25_VERSION;
 case 163:
 case 162:
 case 161:
 case 160:
 case 159:
 case 158:
 case 157:
 case 156:
 case 155:
 case 154:
 case 151:
 case 150:
 case 153:
 case 149:
 case 148:
 case 152:
 case 147:
 case 168:
 case 166:
 case 164:
 case 167:
 case 165:
  return MPI26_VERSION;
 }
 return 0;
}
