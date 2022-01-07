
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RamAmountKBytes; int RamBandwidthKBytesPerSec; int CrystalFreqKHz; int VBlankBit; int MaxVClockFreqKHz; int LockUnlock; int SetSurfaces3D; int SetSurfaces2D; int SetStartAddress; int UnloadStateExt; int LoadStateExt; int ShowHideCursor; int Busy; int * PRAMIN; int * CURSOR; int PEXTDEV; int PFB; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 int LoadStateExt ;
 int NV_RD32 (int ,int) ;
 int SetStartAddress ;
 int ShowHideCursor ;
 int UnloadStateExt ;
 int nv4Busy ;
 int nv4LockUnlock ;
 int nv4SetSurfaces2D ;
 int nv4SetSurfaces3D ;

__attribute__((used)) static void nv4GetConfig
(
    RIVA_HW_INST *chip
)
{



    if (NV_RD32(chip->PFB, 0x00000000) & 0x00000100)
    {
        chip->RamAmountKBytes = ((NV_RD32(chip->PFB, 0x00000000) >> 12) & 0x0F) * 1024 * 2
                              + 1024 * 2;
    }
    else
    {
        switch (NV_RD32(chip->PFB, 0x00000000) & 0x00000003)
        {
            case 0:
                chip->RamAmountKBytes = 1024 * 32;
                break;
            case 1:
                chip->RamAmountKBytes = 1024 * 4;
                break;
            case 2:
                chip->RamAmountKBytes = 1024 * 8;
                break;
            case 3:
            default:
                chip->RamAmountKBytes = 1024 * 16;
                break;
        }
    }
    switch ((NV_RD32(chip->PFB, 0x00000000) >> 3) & 0x00000003)
    {
        case 3:
            chip->RamBandwidthKBytesPerSec = 800000;
            break;
        default:
            chip->RamBandwidthKBytesPerSec = 1000000;
            break;
    }
    chip->CrystalFreqKHz = (NV_RD32(chip->PEXTDEV, 0x00000000) & 0x00000040) ? 14318 : 13500;
    chip->CURSOR = &(chip->PRAMIN[0x00010000/4 - 0x0800/4]);
    chip->VBlankBit = 0x00000001;
    chip->MaxVClockFreqKHz = 350000;



    chip->Busy = nv4Busy;
    chip->ShowHideCursor = ShowHideCursor;
    chip->LoadStateExt = LoadStateExt;
    chip->UnloadStateExt = UnloadStateExt;
    chip->SetStartAddress = SetStartAddress;
    chip->SetSurfaces2D = nv4SetSurfaces2D;
    chip->SetSurfaces3D = nv4SetSurfaces3D;
    chip->LockUnlock = nv4LockUnlock;
}
