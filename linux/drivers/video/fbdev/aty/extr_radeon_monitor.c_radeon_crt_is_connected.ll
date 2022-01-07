; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_crt_is_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_crt_is_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64 }

@VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@PIXCLK_ALWAYS_ONb = common dso_local global i64 0, align 8
@PIXCLK_DAC_ALWAYS_ONb = common dso_local global i64 0, align 8
@CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@CRTC_CRT_ON = common dso_local global i64 0, align 8
@DAC_EXT_CNTL = common dso_local global i32 0, align 4
@DAC_FORCE_DATA_MASK = common dso_local global i64 0, align 8
@DAC_FORCE_BLANK_OFF_EN = common dso_local global i64 0, align 8
@DAC_FORCE_DATA_EN = common dso_local global i64 0, align 8
@DAC_FORCE_DATA_SEL_MASK = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV250 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV280 = common dso_local global i64 0, align 8
@DAC_FORCE_DATA_SHIFT = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i32 0, align 4
@DAC_CMP_EN = common dso_local global i64 0, align 8
@DAC_RANGE_CNTL_MASK = common dso_local global i64 0, align 8
@DAC_PDWN = common dso_local global i64 0, align 8
@DAC_CMP_OUTPUT = common dso_local global i64 0, align 8
@MT_CRT = common dso_local global i32 0, align 4
@MT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeonfb_info*, i32)* @radeon_crt_is_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_crt_is_connected(%struct.radeonfb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.radeonfb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %122

14:                                               ; preds = %2
  %15 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %16 = call i64 @INPLL(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* @PIXCLK_ALWAYS_ONb, align 8
  %19 = load i64, i64* @PIXCLK_DAC_ALWAYS_ONb, align 8
  %20 = or i64 %18, %19
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %10, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* @PIXCLK_ALWAYS_ONb, align 8
  %25 = load i64, i64* @PIXCLK_DAC_ALWAYS_ONb, align 8
  %26 = or i64 %24, %25
  %27 = xor i64 %26, -1
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @OUTPLLP(i32 %28, i64 %29, i64 %30)
  %32 = load i32, i32* @CRTC_EXT_CNTL, align 4
  %33 = call i64 @INREG(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* @CRTC_CRT_ON, align 8
  %36 = load i64, i64* %10, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* @CRTC_EXT_CNTL, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @OUTREG(i32 %38, i64 %39)
  %41 = load i32, i32* @DAC_EXT_CNTL, align 4
  %42 = call i64 @INREG(i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* @DAC_FORCE_DATA_MASK, align 8
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %10, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* @DAC_FORCE_BLANK_OFF_EN, align 8
  %49 = load i64, i64* @DAC_FORCE_DATA_EN, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* @DAC_FORCE_DATA_SEL_MASK, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %56 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %14
  %61 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %62 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHIP_FAMILY_RV280, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60, %14
  %67 = load i32, i32* @DAC_FORCE_DATA_SHIFT, align 4
  %68 = shl i32 438, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %10, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %78

72:                                               ; preds = %60
  %73 = load i32, i32* @DAC_FORCE_DATA_SHIFT, align 4
  %74 = shl i32 428, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @DAC_EXT_CNTL, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @OUTREG(i32 %79, i64 %80)
  %82 = load i32, i32* @DAC_CNTL, align 4
  %83 = call i64 @INREG(i32 %82)
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* @DAC_CMP_EN, align 8
  %86 = load i64, i64* %10, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* @DAC_RANGE_CNTL_MASK, align 8
  %89 = load i64, i64* @DAC_PDWN, align 8
  %90 = or i64 %88, %89
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %10, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = or i64 %94, 2
  store i64 %95, i64* %10, align 8
  %96 = load i32, i32* @DAC_CNTL, align 4
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @OUTREG(i32 %96, i64 %97)
  %99 = call i32 @mdelay(i32 1)
  %100 = load i32, i32* @DAC_CNTL, align 4
  %101 = call i64 @INREG(i32 %100)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* @DAC_CMP_OUTPUT, align 8
  %103 = load i64, i64* %10, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  store i32 %107, i32* %5, align 4
  %108 = load i64, i64* %6, align 8
  store i64 %108, i64* %10, align 8
  store i64 4294967295, i64* %11, align 8
  %109 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @OUTPLLP(i32 %109, i64 %110, i64 %111)
  %113 = load i32, i32* @DAC_CNTL, align 4
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @OUTREG(i32 %113, i64 %114)
  %116 = load i32, i32* @DAC_EXT_CNTL, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @OUTREG(i32 %116, i64 %117)
  %119 = load i32, i32* @CRTC_EXT_CNTL, align 4
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @OUTREG(i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %78, %2
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @MT_CRT, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @MT_NONE, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  ret i32 %130
}

declare dso_local i64 @INPLL(i32) #1

declare dso_local i32 @OUTPLLP(i32, i64, i64) #1

declare dso_local i64 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
