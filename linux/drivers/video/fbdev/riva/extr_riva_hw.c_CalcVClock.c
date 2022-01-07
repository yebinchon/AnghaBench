
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CrystalFreqKHz; scalar_t__ Architecture; unsigned int MaxVClockFreqKHz; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 scalar_t__ NV_ARCH_03 ;

__attribute__((used)) static int CalcVClock
(
    int clockIn,
    int *clockOut,
    int *mOut,
    int *nOut,
    int *pOut,
    RIVA_HW_INST *chip
)
{
    unsigned lowM, highM, highP;
    unsigned DeltaNew, DeltaOld;
    unsigned VClk, Freq;
    unsigned M, N, P;

    DeltaOld = 0xFFFFFFFF;

    VClk = (unsigned)clockIn;

    if (chip->CrystalFreqKHz == 13500)
    {
        lowM = 7;
        highM = 13 - (chip->Architecture == NV_ARCH_03);
    }
    else
    {
        lowM = 8;
        highM = 14 - (chip->Architecture == NV_ARCH_03);
    }

    highP = 4 - (chip->Architecture == NV_ARCH_03);
    for (P = 0; P <= highP; P ++)
    {
        Freq = VClk << P;
        if ((Freq >= 128000) && (Freq <= chip->MaxVClockFreqKHz))
        {
            for (M = lowM; M <= highM; M++)
            {
                N = (VClk << P) * M / chip->CrystalFreqKHz;
                if(N <= 255) {
                Freq = (chip->CrystalFreqKHz * N / M) >> P;
                if (Freq > VClk)
                    DeltaNew = Freq - VClk;
                else
                    DeltaNew = VClk - Freq;
                if (DeltaNew < DeltaOld)
                {
                    *mOut = M;
                    *nOut = N;
                    *pOut = P;
                    *clockOut = Freq;
                    DeltaOld = DeltaNew;
                }
            }
        }
    }
    }


    return (DeltaOld != 0xFFFFFFFF);
}
