; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_g450_setpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_g450_setpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }

@M1064_XPIXPLLAM = common dso_local global i32 0, align 4
@M1064_XPIXPLLAN = common dso_local global i32 0, align 4
@M1064_XPIXPLLAP = common dso_local global i32 0, align 4
@M1064_XPIXPLLSTAT = common dso_local global i32 0, align 4
@M1064_XPIXPLLBM = common dso_local global i32 0, align 4
@M1064_XPIXPLLBN = common dso_local global i32 0, align 4
@M1064_XPIXPLLBP = common dso_local global i32 0, align 4
@M1064_XPIXPLLCM = common dso_local global i32 0, align 4
@M1064_XPIXPLLCN = common dso_local global i32 0, align 4
@M1064_XPIXPLLCP = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLM = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLN = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLP = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLSTAT = common dso_local global i32 0, align 4
@M1064_XVIDPLLM = common dso_local global i32 0, align 4
@M1064_XVIDPLLN = common dso_local global i32 0, align 4
@M1064_XVIDPLLP = common dso_local global i32 0, align 4
@M1064_XVIDPLLSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, i32, i32)* @g450_setpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_setpll(%struct.matrox_fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.matrox_fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %89 [
    i32 132, label %9
    i32 131, label %25
    i32 130, label %41
    i32 129, label %57
    i32 128, label %73
  ]

9:                                                ; preds = %3
  %10 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %11 = load i32, i32* @M1064_XPIXPLLAM, align 4
  %12 = load i32, i32* %6, align 4
  %13 = lshr i32 %12, 16
  %14 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %10, i32 %11, i32 %13)
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %16 = load i32, i32* @M1064_XPIXPLLAN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = lshr i32 %17, 8
  %19 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %15, i32 %16, i32 %18)
  %20 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %21 = load i32, i32* @M1064_XPIXPLLAP, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @M1064_XPIXPLLSTAT, align 4
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %27 = load i32, i32* @M1064_XPIXPLLBM, align 4
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 16
  %30 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %26, i32 %27, i32 %29)
  %31 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %32 = load i32, i32* @M1064_XPIXPLLBN, align 4
  %33 = load i32, i32* %6, align 4
  %34 = lshr i32 %33, 8
  %35 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %31, i32 %32, i32 %34)
  %36 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %37 = load i32, i32* @M1064_XPIXPLLBP, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @M1064_XPIXPLLSTAT, align 4
  store i32 %40, i32* %4, align 4
  br label %90

41:                                               ; preds = %3
  %42 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %43 = load i32, i32* @M1064_XPIXPLLCM, align 4
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 16
  %46 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %42, i32 %43, i32 %45)
  %47 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %48 = load i32, i32* @M1064_XPIXPLLCN, align 4
  %49 = load i32, i32* %6, align 4
  %50 = lshr i32 %49, 8
  %51 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %47, i32 %48, i32 %50)
  %52 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %53 = load i32, i32* @M1064_XPIXPLLCP, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @M1064_XPIXPLLSTAT, align 4
  store i32 %56, i32* %4, align 4
  br label %90

57:                                               ; preds = %3
  %58 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %59 = load i32, i32* @DAC1064_XSYSPLLM, align 4
  %60 = load i32, i32* %6, align 4
  %61 = lshr i32 %60, 16
  %62 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %58, i32 %59, i32 %61)
  %63 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %64 = load i32, i32* @DAC1064_XSYSPLLN, align 4
  %65 = load i32, i32* %6, align 4
  %66 = lshr i32 %65, 8
  %67 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %63, i32 %64, i32 %66)
  %68 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %69 = load i32, i32* @DAC1064_XSYSPLLP, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @DAC1064_XSYSPLLSTAT, align 4
  store i32 %72, i32* %4, align 4
  br label %90

73:                                               ; preds = %3
  %74 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %75 = load i32, i32* @M1064_XVIDPLLM, align 4
  %76 = load i32, i32* %6, align 4
  %77 = lshr i32 %76, 16
  %78 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %74, i32 %75, i32 %77)
  %79 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %80 = load i32, i32* @M1064_XVIDPLLN, align 4
  %81 = load i32, i32* %6, align 4
  %82 = lshr i32 %81, 8
  %83 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %79, i32 %80, i32 %82)
  %84 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %85 = load i32, i32* @M1064_XVIDPLLP, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @M1064_XVIDPLLSTAT, align 4
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %73, %57, %41, %25, %9
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @matroxfb_DAC_out(%struct.matrox_fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
