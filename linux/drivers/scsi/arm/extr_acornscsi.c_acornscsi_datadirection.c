
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int datadir_t ;






 int DATADIR_IN ;
 int DATADIR_OUT ;
__attribute__((used)) static
datadir_t acornscsi_datadirection(int command)
{
    switch (command) {
    case 156: case 155: case 154:
    case 153: case 151: case 149:
    case 148: case 139: case 132:
    case 152: case 147: case 146:
    case 145: case 143: case 141:
    case 133: case 135: case 129:
    case 136: case 131: case 130:
    case 142: case 144: case 140:
    case 134: case 128: case 137:
    case 150: case 138: case 0xea:
 return DATADIR_OUT;
    default:
 return DATADIR_IN;
    }
}
