; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_ops.c_lx_blank_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_ops.c_lx_blank_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.lxfb_par* }
%struct.lxfb_par = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4
@VP_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_CRT_EN = common dso_local global i32 0, align 4
@VP_MISC = common dso_local global i32 0, align 4
@VP_MISC_DACPWRDN = common dso_local global i32 0, align 4
@OUTPUT_PANEL = common dso_local global i32 0, align 4
@FP_PM = common dso_local global i32 0, align 4
@FP_PM_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_blank_display(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lxfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.lxfb_par*, %struct.lxfb_par** %14, align 8
  store %struct.lxfb_par* %15, %struct.lxfb_par** %6, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %22 [
    i32 129, label %17
    i32 131, label %18
    i32 128, label %19
    i32 132, label %20
    i32 130, label %21
  ]

17:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

18:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

19:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %25

20:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %25

21:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %115

25:                                               ; preds = %21, %20, %19, %18, %17
  %26 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %27 = load i32, i32* @VP_DCFG, align 4
  %28 = call i32 @read_vp(%struct.lxfb_par* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %30 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %43 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %25
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %63 = load i32, i32* @VP_DCFG, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @write_vp(%struct.lxfb_par* %62, i32 %63, i32 %64)
  %66 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %67 = load i32, i32* @VP_MISC, align 4
  %68 = call i32 @read_vp(%struct.lxfb_par* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %83

79:                                               ; preds = %71, %61
  %80 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %85 = load i32, i32* @VP_MISC, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @write_vp(%struct.lxfb_par* %84, i32 %85, i32 %86)
  %88 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %89 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @OUTPUT_PANEL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %83
  %95 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %96 = load i32, i32* @FP_PM, align 4
  %97 = call i32 @read_fp(%struct.lxfb_par* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 130
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @FP_PM_P, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %109

105:                                              ; preds = %94
  %106 = load i32, i32* @FP_PM_P, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %111 = load i32, i32* @FP_PM, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @write_fp(%struct.lxfb_par* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %83
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %22
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @read_vp(%struct.lxfb_par*, i32) #1

declare dso_local i32 @write_vp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @read_fp(%struct.lxfb_par*, i32) #1

declare dso_local i32 @write_fp(%struct.lxfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
