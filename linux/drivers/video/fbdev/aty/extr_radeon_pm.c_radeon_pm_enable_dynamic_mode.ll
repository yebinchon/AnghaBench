; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_pm.c_radeon_pm_enable_dynamic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_pm.c_radeon_pm_enable_dynamic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, i32, i64, i32 }

@pllSCLK_CNTL = common dso_local global i32 0, align 4
@CNFG_CNTL = common dso_local global i32 0, align 4
@CFG_ATI_REV_ID_MASK = common dso_local global i32 0, align 4
@CFG_ATI_REV_A13 = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_CP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_RB = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_HDP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_DISP1 = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TOP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_SE = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_IDCT = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_RE = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_PB = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TAM = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TDM = common dso_local global i32 0, align 4
@CHIP_FAMILY_RV350 = common dso_local global i64 0, align 8
@pllSCLK_CNTL2 = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_FORCE_TCL = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_FORCE_GA = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_FORCE_CBA = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_TCL_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_GA_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_CBA_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_DISP2 = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_E2 = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_VAP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_VIP = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_SR = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_PX = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_TX = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_US = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TV_SCLK = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_SU = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_OV0 = common dso_local global i32 0, align 4
@SCLK_CNTL__DYN_STOP_LAT_MASK = common dso_local global i32 0, align 4
@pllSCLK_MORE_CNTL = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__FORCEON = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__DISPREGS_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__MC_GUI_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__MC_HOST_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@pllVCLK_ECP_CNTL = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL__PIXCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL__PIXCLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@pllPIXCLKS_CNTL = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIX2CLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIX2CLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_DVOCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_BLEND_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_GV_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_PIXCLK_DVO_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_LVDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_TMDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_PIXCLK_TRANS_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_PIXCLK_TVO_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_P2G2CLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_P2G2CLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@pllMCLK_MISC = common dso_local global i32 0, align 4
@MCLK_MISC__MC_MCLK_DYN_ENABLE = common dso_local global i32 0, align 4
@MCLK_MISC__IO_MCLK_DYN_ENABLE = common dso_local global i32 0, align 4
@pllMCLK_CNTL = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_MCLKA = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_MCLKB = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_YCLKA = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_YCLKB = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_MC = common dso_local global i32 0, align 4
@MCLK_CNTL__R300_DISABLE_MC_MCLKA = common dso_local global i32 0, align 4
@MCLK_CNTL__R300_DISABLE_MC_MCLKB = common dso_local global i32 0, align 4
@MEM_CNTL = common dso_local global i32 0, align 4
@R300_MEM_USE_CD_CH_ONLY = common dso_local global i32 0, align 4
@CHIP_FAMILY_R300 = common dso_local global i64 0, align 8
@CHIP_FAMILY_R350 = common dso_local global i64 0, align 8
@pllCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@CLK_PWRMGT_CNTL__ACTIVE_HILO_LAT_MASK = common dso_local global i32 0, align 4
@CLK_PWRMGT_CNTL__DISP_DYN_STOP_LAT_MASK = common dso_local global i32 0, align 4
@CLK_PWRMGT_CNTL__DYN_STOP_MODE_MASK = common dso_local global i32 0, align 4
@CLK_PWRMGT_CNTL__ENGINE_DYNCLK_MODE_MASK = common dso_local global i32 0, align 4
@CLK_PWRMGT_CNTL__ACTIVE_HILO_LAT__SHIFT = common dso_local global i32 0, align 4
@pllCLK_PIN_CNTL = common dso_local global i32 0, align 4
@CLK_PIN_CNTL__SCLK_DYN_START_CNTL = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCEON_MASK = common dso_local global i32 0, align 4
@CHIP_FAMILY_RV250 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV100 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV200 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV280 = common dso_local global i64 0, align 8
@pllPLL_PWRMGT_CNTL = common dso_local global i32 0, align 4
@PLL_PWRMGT_CNTL__TCL_BYPASS_DISABLE = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_DIG_TMDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@MCLK_MISC__IO_MCLK_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@MCLK_MISC__MC_MCLK_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*)* @radeon_pm_enable_dynamic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_pm_enable_dynamic_mode(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %4 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pllSCLK_CNTL, align 4
  %10 = call i32 @INPLL(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CNFG_CNTL, align 4
  %12 = call i32 @INREG(i32 %11)
  %13 = load i32, i32* @CFG_ATI_REV_ID_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @CFG_ATI_REV_A13, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %19 = load i32, i32* @SCLK_CNTL__FORCE_RB, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %8
  %25 = load i32, i32* @SCLK_CNTL__FORCE_HDP, align 4
  %26 = load i32, i32* @SCLK_CNTL__FORCE_DISP1, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SCLK_CNTL__FORCE_TOP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SCLK_CNTL__FORCE_SE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SCLK_CNTL__FORCE_IDCT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SCLK_CNTL__FORCE_RE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SCLK_CNTL__FORCE_PB, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SCLK_CNTL__FORCE_TAM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SCLK_CNTL__FORCE_TDM, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @pllSCLK_CNTL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @OUTPLL(i32 %45, i32 %46)
  br label %469

48:                                               ; preds = %1
  %49 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %50 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHIP_FAMILY_RV350, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %245

54:                                               ; preds = %48
  %55 = load i32, i32* @pllSCLK_CNTL2, align 4
  %56 = call i32 @INPLL(i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @SCLK_CNTL2__R300_FORCE_TCL, align 4
  %58 = load i32, i32* @SCLK_CNTL2__R300_FORCE_GA, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SCLK_CNTL2__R300_FORCE_CBA, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @SCLK_CNTL2__R300_TCL_MAX_DYN_STOP_LAT, align 4
  %66 = load i32, i32* @SCLK_CNTL2__R300_GA_MAX_DYN_STOP_LAT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SCLK_CNTL2__R300_CBA_MAX_DYN_STOP_LAT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @pllSCLK_CNTL2, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @OUTPLL(i32 %72, i32 %73)
  %75 = load i32, i32* @pllSCLK_CNTL, align 4
  %76 = call i32 @INPLL(i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @SCLK_CNTL__FORCE_DISP2, align 4
  %78 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SCLK_CNTL__FORCE_HDP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SCLK_CNTL__FORCE_DISP1, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SCLK_CNTL__FORCE_TOP, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SCLK_CNTL__FORCE_E2, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SCLK_CNTL__R300_FORCE_VAP, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SCLK_CNTL__FORCE_IDCT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SCLK_CNTL__FORCE_VIP, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SCLK_CNTL__R300_FORCE_SR, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SCLK_CNTL__R300_FORCE_PX, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SCLK_CNTL__R300_FORCE_TX, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SCLK_CNTL__R300_FORCE_US, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SCLK_CNTL__FORCE_TV_SCLK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @SCLK_CNTL__R300_FORCE_SU, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SCLK_CNTL__FORCE_OV0, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* @SCLK_CNTL__DYN_STOP_LAT_MASK, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* @pllSCLK_CNTL, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @OUTPLL(i32 %114, i32 %115)
  %117 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %118 = call i32 @INPLL(i32 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* @SCLK_MORE_CNTL__FORCEON, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %3, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* @SCLK_MORE_CNTL__DISPREGS_MAX_DYN_STOP_LAT, align 4
  %124 = load i32, i32* @SCLK_MORE_CNTL__MC_GUI_MAX_DYN_STOP_LAT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @SCLK_MORE_CNTL__MC_HOST_MAX_DYN_STOP_LAT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @OUTPLL(i32 %130, i32 %131)
  %133 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %134 = call i32 @INPLL(i32 %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_ALWAYS_ONb, align 4
  %136 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_DAC_ALWAYS_ONb, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @OUTPLL(i32 %140, i32 %141)
  %143 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %144 = call i32 @INPLL(i32 %143)
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_ALWAYS_ONb, align 4
  %146 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_DAC_ALWAYS_ONb, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @PIXCLKS_CNTL__DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @PIXCLKS_CNTL__R300_DVOCLK_ALWAYS_ONb, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_BLEND_ALWAYS_ONb, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_GV_ALWAYS_ONb, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @PIXCLKS_CNTL__R300_PIXCLK_DVO_ALWAYS_ONb, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_LVDS_ALWAYS_ONb, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_TMDS_ALWAYS_ONb, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @PIXCLKS_CNTL__R300_PIXCLK_TRANS_ALWAYS_ONb, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @PIXCLKS_CNTL__R300_PIXCLK_TVO_ALWAYS_ONb, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @PIXCLKS_CNTL__R300_P2G2CLK_ALWAYS_ONb, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @PIXCLKS_CNTL__R300_P2G2CLK_DAC_ALWAYS_ONb, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %3, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @OUTPLL(i32 %172, i32 %173)
  %175 = load i32, i32* @pllMCLK_MISC, align 4
  %176 = call i32 @INPLL(i32 %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* @MCLK_MISC__MC_MCLK_DYN_ENABLE, align 4
  %178 = load i32, i32* @MCLK_MISC__IO_MCLK_DYN_ENABLE, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %3, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* @pllMCLK_MISC, align 4
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @OUTPLL(i32 %182, i32 %183)
  %185 = load i32, i32* @pllMCLK_CNTL, align 4
  %186 = call i32 @INPLL(i32 %185)
  store i32 %186, i32* %3, align 4
  %187 = load i32, i32* @MCLK_CNTL__FORCE_MCLKA, align 4
  %188 = load i32, i32* @MCLK_CNTL__FORCE_MCLKB, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* %3, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* @MCLK_CNTL__FORCE_YCLKA, align 4
  %193 = load i32, i32* @MCLK_CNTL__FORCE_YCLKB, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @MCLK_CNTL__FORCE_MC, align 4
  %196 = or i32 %194, %195
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %3, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %3, align 4
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @MCLK_CNTL__R300_DISABLE_MC_MCLKA, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %241

204:                                              ; preds = %54
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @MCLK_CNTL__R300_DISABLE_MC_MCLKB, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %241

209:                                              ; preds = %204
  %210 = load i32, i32* @pllMCLK_CNTL, align 4
  %211 = call i32 @INPLL(i32 %210)
  store i32 %211, i32* %3, align 4
  %212 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %213 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 64
  br i1 %215, label %216, label %233

216:                                              ; preds = %209
  %217 = load i32, i32* @MEM_CNTL, align 4
  %218 = call i32 @INREG(i32 %217)
  %219 = load i32, i32* @R300_MEM_USE_CD_CH_ONLY, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load i32, i32* @MCLK_CNTL__R300_DISABLE_MC_MCLKB, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %3, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %3, align 4
  br label %232

227:                                              ; preds = %216
  %228 = load i32, i32* @MCLK_CNTL__R300_DISABLE_MC_MCLKA, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %3, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %227, %222
  br label %240

233:                                              ; preds = %209
  %234 = load i32, i32* @MCLK_CNTL__R300_DISABLE_MC_MCLKA, align 4
  %235 = load i32, i32* @MCLK_CNTL__R300_DISABLE_MC_MCLKB, align 4
  %236 = or i32 %234, %235
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %3, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %233, %232
  br label %241

241:                                              ; preds = %240, %204, %54
  %242 = load i32, i32* @pllMCLK_CNTL, align 4
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @OUTPLL(i32 %242, i32 %243)
  br label %469

245:                                              ; preds = %48
  %246 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %247 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @CHIP_FAMILY_R300, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %253 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @CHIP_FAMILY_R350, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %284

257:                                              ; preds = %251, %245
  %258 = load i32, i32* @pllSCLK_CNTL, align 4
  %259 = call i32 @INPLL(i32 %258)
  store i32 %259, i32* %3, align 4
  %260 = load i32, i32* @SCLK_CNTL__R300_FORCE_VAP, align 4
  %261 = xor i32 %260, -1
  %262 = load i32, i32* %3, align 4
  %263 = and i32 %262, %261
  store i32 %263, i32* %3, align 4
  %264 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %265 = load i32, i32* %3, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %3, align 4
  %267 = load i32, i32* @pllSCLK_CNTL, align 4
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @OUTPLL(i32 %267, i32 %268)
  %270 = call i32 @radeon_msleep(i32 15)
  %271 = load i32, i32* @pllSCLK_CNTL2, align 4
  %272 = call i32 @INPLL(i32 %271)
  store i32 %272, i32* %3, align 4
  %273 = load i32, i32* @SCLK_CNTL2__R300_FORCE_TCL, align 4
  %274 = load i32, i32* @SCLK_CNTL2__R300_FORCE_GA, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @SCLK_CNTL2__R300_FORCE_CBA, align 4
  %277 = or i32 %275, %276
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %3, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %3, align 4
  %281 = load i32, i32* @pllSCLK_CNTL2, align 4
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @OUTPLL(i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %257, %251
  %285 = load i32, i32* @pllCLK_PWRMGT_CNTL, align 4
  %286 = call i32 @INPLL(i32 %285)
  store i32 %286, i32* %3, align 4
  %287 = load i32, i32* @CLK_PWRMGT_CNTL__ACTIVE_HILO_LAT_MASK, align 4
  %288 = load i32, i32* @CLK_PWRMGT_CNTL__DISP_DYN_STOP_LAT_MASK, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @CLK_PWRMGT_CNTL__DYN_STOP_MODE_MASK, align 4
  %291 = or i32 %289, %290
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %3, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %3, align 4
  %295 = load i32, i32* @CLK_PWRMGT_CNTL__ENGINE_DYNCLK_MODE_MASK, align 4
  %296 = load i32, i32* @CLK_PWRMGT_CNTL__ACTIVE_HILO_LAT__SHIFT, align 4
  %297 = shl i32 1, %296
  %298 = or i32 %295, %297
  %299 = load i32, i32* %3, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %3, align 4
  %301 = load i32, i32* @pllCLK_PWRMGT_CNTL, align 4
  %302 = load i32, i32* %3, align 4
  %303 = call i32 @OUTPLL(i32 %301, i32 %302)
  %304 = call i32 @radeon_msleep(i32 15)
  %305 = load i32, i32* @pllCLK_PIN_CNTL, align 4
  %306 = call i32 @INPLL(i32 %305)
  store i32 %306, i32* %3, align 4
  %307 = load i32, i32* @CLK_PIN_CNTL__SCLK_DYN_START_CNTL, align 4
  %308 = load i32, i32* %3, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %3, align 4
  %310 = load i32, i32* @pllCLK_PIN_CNTL, align 4
  %311 = load i32, i32* %3, align 4
  %312 = call i32 @OUTPLL(i32 %310, i32 %311)
  %313 = call i32 @radeon_msleep(i32 15)
  %314 = load i32, i32* @pllSCLK_CNTL, align 4
  %315 = call i32 @INPLL(i32 %314)
  store i32 %315, i32* %3, align 4
  %316 = load i32, i32* @SCLK_CNTL__FORCEON_MASK, align 4
  %317 = xor i32 %316, -1
  %318 = load i32, i32* %3, align 4
  %319 = and i32 %318, %317
  store i32 %319, i32* %3, align 4
  %320 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %321 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %284
  %326 = load i32, i32* @CNFG_CNTL, align 4
  %327 = call i32 @INREG(i32 %326)
  %328 = load i32, i32* @CFG_ATI_REV_ID_MASK, align 4
  %329 = and i32 %327, %328
  %330 = load i32, i32* @CFG_ATI_REV_A13, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %345, label %332

332:                                              ; preds = %325, %284
  %333 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %334 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @CHIP_FAMILY_RV100, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %352

338:                                              ; preds = %332
  %339 = load i32, i32* @CNFG_CNTL, align 4
  %340 = call i32 @INREG(i32 %339)
  %341 = load i32, i32* @CFG_ATI_REV_ID_MASK, align 4
  %342 = and i32 %340, %341
  %343 = load i32, i32* @CFG_ATI_REV_A13, align 4
  %344 = icmp sle i32 %342, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %338, %325
  %346 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %347 = load i32, i32* %3, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %3, align 4
  %349 = load i32, i32* @SCLK_CNTL__FORCE_VIP, align 4
  %350 = load i32, i32* %3, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %3, align 4
  br label %352

352:                                              ; preds = %345, %338, %332
  %353 = load i32, i32* @pllSCLK_CNTL, align 4
  %354 = load i32, i32* %3, align 4
  %355 = call i32 @OUTPLL(i32 %353, i32 %354)
  %356 = call i32 @radeon_msleep(i32 15)
  %357 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %358 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @CHIP_FAMILY_RV200, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %374, label %362

362:                                              ; preds = %352
  %363 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %364 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %370 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @CHIP_FAMILY_RV280, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %408

374:                                              ; preds = %368, %362, %352
  %375 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %376 = call i32 @INPLL(i32 %375)
  store i32 %376, i32* %3, align 4
  %377 = load i32, i32* @SCLK_MORE_CNTL__FORCEON, align 4
  %378 = xor i32 %377, -1
  %379 = load i32, i32* %3, align 4
  %380 = and i32 %379, %378
  store i32 %380, i32* %3, align 4
  %381 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %382 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @CHIP_FAMILY_RV200, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %392, label %386

386:                                              ; preds = %374
  %387 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %388 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %403

392:                                              ; preds = %386, %374
  %393 = load i32, i32* @CNFG_CNTL, align 4
  %394 = call i32 @INREG(i32 %393)
  %395 = load i32, i32* @CFG_ATI_REV_ID_MASK, align 4
  %396 = and i32 %394, %395
  %397 = load i32, i32* @CFG_ATI_REV_A13, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %392
  %400 = load i32, i32* @SCLK_MORE_CNTL__FORCEON, align 4
  %401 = load i32, i32* %3, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %3, align 4
  br label %403

403:                                              ; preds = %399, %392, %386
  %404 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %405 = load i32, i32* %3, align 4
  %406 = call i32 @OUTPLL(i32 %404, i32 %405)
  %407 = call i32 @radeon_msleep(i32 15)
  br label %408

408:                                              ; preds = %403, %368
  %409 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %410 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @CHIP_FAMILY_RV200, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %420, label %414

414:                                              ; preds = %408
  %415 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %416 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %437

420:                                              ; preds = %414, %408
  %421 = load i32, i32* @CNFG_CNTL, align 4
  %422 = call i32 @INREG(i32 %421)
  %423 = load i32, i32* @CFG_ATI_REV_ID_MASK, align 4
  %424 = and i32 %422, %423
  %425 = load i32, i32* @CFG_ATI_REV_A13, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %437

427:                                              ; preds = %420
  %428 = load i32, i32* @pllPLL_PWRMGT_CNTL, align 4
  %429 = call i32 @INPLL(i32 %428)
  store i32 %429, i32* %3, align 4
  %430 = load i32, i32* @PLL_PWRMGT_CNTL__TCL_BYPASS_DISABLE, align 4
  %431 = load i32, i32* %3, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %3, align 4
  %433 = load i32, i32* @pllPLL_PWRMGT_CNTL, align 4
  %434 = load i32, i32* %3, align 4
  %435 = call i32 @OUTPLL(i32 %433, i32 %434)
  %436 = call i32 @radeon_msleep(i32 15)
  br label %437

437:                                              ; preds = %427, %420, %414
  %438 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %439 = call i32 @INPLL(i32 %438)
  store i32 %439, i32* %3, align 4
  %440 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_ALWAYS_ONb, align 4
  %441 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_DAC_ALWAYS_ONb, align 4
  %442 = or i32 %440, %441
  %443 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_BLEND_ALWAYS_ONb, align 4
  %444 = or i32 %442, %443
  %445 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_GV_ALWAYS_ONb, align 4
  %446 = or i32 %444, %445
  %447 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_DIG_TMDS_ALWAYS_ONb, align 4
  %448 = or i32 %446, %447
  %449 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_LVDS_ALWAYS_ONb, align 4
  %450 = or i32 %448, %449
  %451 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_TMDS_ALWAYS_ONb, align 4
  %452 = or i32 %450, %451
  %453 = load i32, i32* %3, align 4
  %454 = or i32 %453, %452
  store i32 %454, i32* %3, align 4
  %455 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %456 = load i32, i32* %3, align 4
  %457 = call i32 @OUTPLL(i32 %455, i32 %456)
  %458 = call i32 @radeon_msleep(i32 15)
  %459 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %460 = call i32 @INPLL(i32 %459)
  store i32 %460, i32* %3, align 4
  %461 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_ALWAYS_ONb, align 4
  %462 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_DAC_ALWAYS_ONb, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* %3, align 4
  %465 = or i32 %464, %463
  store i32 %465, i32* %3, align 4
  %466 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %467 = load i32, i32* %3, align 4
  %468 = call i32 @OUTPLL(i32 %466, i32 %467)
  br label %469

469:                                              ; preds = %437, %241, %24
  ret void
}

declare dso_local i32 @INPLL(i32) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTPLL(i32, i32) #1

declare dso_local i32 @radeon_msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
