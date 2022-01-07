; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_ops.c_lx_graphics_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_ops.c_lx_graphics_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.lxfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.lxfb_par = type { i32 }

@VP_VRR = common dso_local global i32 0, align 4
@VP_DCFG = common dso_local global i32 0, align 4
@VP_DCFG_CRT_SYNC_SKW = common dso_local global i32 0, align 4
@VP_DCFG_PWR_SEQ_DELAY = common dso_local global i32 0, align 4
@VP_DCFG_CRT_HSYNC_POL = common dso_local global i32 0, align 4
@VP_DCFG_CRT_VSYNC_POL = common dso_local global i32 0, align 4
@VP_DCFG_CRT_SYNC_SKW_DEFAULT = common dso_local global i32 0, align 4
@VP_DCFG_PWR_SEQ_DELAY_DEFAULT = common dso_local global i32 0, align 4
@VP_DCFG_GV_GAM = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@OUTPUT_PANEL = common dso_local global i32 0, align 4
@FP_PT1 = common dso_local global i32 0, align 4
@FP_PT2_SCRC = common dso_local global i32 0, align 4
@FP_PT2_HSP = common dso_local global i32 0, align 4
@FP_PT2_VSP = common dso_local global i32 0, align 4
@FP_PT2 = common dso_local global i32 0, align 4
@FP_DFC = common dso_local global i32 0, align 4
@FP_DFC_BC = common dso_local global i32 0, align 4
@MSR_LX_MSR_PADSEL_TFT_SEL_LOW = common dso_local global i32 0, align 4
@MSR_LX_MSR_PADSEL_TFT_SEL_HIGH = common dso_local global i32 0, align 4
@MSR_LX_MSR_PADSEL = common dso_local global i32 0, align 4
@OUTPUT_CRT = common dso_local global i32 0, align 4
@VP_DCFG_CRT_EN = common dso_local global i32 0, align 4
@VP_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@VP_DCFG_DAC_BL_EN = common dso_local global i32 0, align 4
@VP_MISC = common dso_local global i32 0, align 4
@VP_MISC_DACPWRDN = common dso_local global i32 0, align 4
@VP_MISC_APWRDN = common dso_local global i32 0, align 4
@FP_PM = common dso_local global i32 0, align 4
@FP_PM_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @lx_graphics_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_graphics_enable(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.lxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.lxfb_par*, %struct.lxfb_par** %9, align 8
  store %struct.lxfb_par* %10, %struct.lxfb_par** %3, align 8
  %11 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %12 = load i32, i32* @VP_VRR, align 4
  %13 = call i32 @write_vp(%struct.lxfb_par* %11, i32 %12, i32 0)
  %14 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %15 = load i32, i32* @VP_DCFG, align 4
  %16 = call i32 @read_vp(%struct.lxfb_par* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @VP_DCFG_CRT_SYNC_SKW, align 4
  %18 = load i32, i32* @VP_DCFG_PWR_SEQ_DELAY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VP_DCFG_CRT_HSYNC_POL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VP_DCFG_CRT_VSYNC_POL, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @VP_DCFG_CRT_SYNC_SKW_DEFAULT, align 4
  %28 = load i32, i32* @VP_DCFG_PWR_SEQ_DELAY_DEFAULT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VP_DCFG_GV_GAM, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* @VP_DCFG_CRT_HSYNC_POL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @VP_DCFG_CRT_VSYNC_POL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %59 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OUTPUT_PANEL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %57
  %65 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %66 = load i32, i32* @FP_PT1, align 4
  %67 = call i32 @write_fp(%struct.lxfb_par* %65, i32 %66, i32 0)
  %68 = load i32, i32* @FP_PT2_SCRC, align 4
  store i32 %68, i32* %4, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @FP_PT2_HSP, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %64
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @FP_PT2_VSP, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %94 = load i32, i32* @FP_PT2, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @write_fp(%struct.lxfb_par* %93, i32 %94, i32 %95)
  %97 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %98 = load i32, i32* @FP_DFC, align 4
  %99 = load i32, i32* @FP_DFC_BC, align 4
  %100 = call i32 @write_fp(%struct.lxfb_par* %97, i32 %98, i32 %99)
  %101 = load i32, i32* @MSR_LX_MSR_PADSEL_TFT_SEL_LOW, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @MSR_LX_MSR_PADSEL_TFT_SEL_HIGH, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @MSR_LX_MSR_PADSEL, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @wrmsr(i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %92, %57
  %108 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %109 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @OUTPUT_CRT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load i32, i32* @VP_DCFG_CRT_EN, align 4
  %116 = load i32, i32* @VP_DCFG_HSYNC_EN, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @VP_DCFG_VSYNC_EN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @VP_DCFG_DAC_BL_EN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %114, %107
  %125 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %126 = load i32, i32* @VP_DCFG, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @write_vp(%struct.lxfb_par* %125, i32 %126, i32 %127)
  %129 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %130 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @OUTPUT_CRT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %124
  %136 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %137 = load i32, i32* @VP_MISC, align 4
  %138 = call i32 @read_vp(%struct.lxfb_par* %136, i32 %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* @VP_MISC_DACPWRDN, align 4
  %140 = load i32, i32* @VP_MISC_APWRDN, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %4, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %4, align 4
  %145 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %146 = load i32, i32* @VP_MISC, align 4
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @write_vp(%struct.lxfb_par* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %135, %124
  %150 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %151 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @OUTPUT_PANEL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %158 = load i32, i32* @FP_PM, align 4
  %159 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %160 = load i32, i32* @FP_PM, align 4
  %161 = call i32 @read_fp(%struct.lxfb_par* %159, i32 %160)
  %162 = load i32, i32* @FP_PM_P, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @write_fp(%struct.lxfb_par* %157, i32 %158, i32 %163)
  br label %165

165:                                              ; preds = %156, %149
  ret void
}

declare dso_local i32 @write_vp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @read_vp(%struct.lxfb_par*, i32) #1

declare dso_local i32 @write_fp(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @read_fp(%struct.lxfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
