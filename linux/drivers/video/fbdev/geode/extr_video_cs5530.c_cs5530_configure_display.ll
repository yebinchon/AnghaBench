; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_video_cs5530.c_cs5530_configure_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_video_cs5530.c_cs5530_configure_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.geodefb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.geodefb_par = type { i64, i64, i64 }

@CS5530_DISPLAY_CONFIG = common dso_local global i64 0, align 8
@CS5530_DCFG_CRT_SYNC_SKW_MASK = common dso_local global i32 0, align 4
@CS5530_DCFG_PWR_SEQ_DLY_MASK = common dso_local global i32 0, align 4
@CS5530_DCFG_CRT_HSYNC_POL = common dso_local global i32 0, align 4
@CS5530_DCFG_CRT_VSYNC_POL = common dso_local global i32 0, align 4
@CS5530_DCFG_FP_PWR_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_FP_DATA_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_DAC_PWR_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_VSYNC_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_HSYNC_EN = common dso_local global i32 0, align 4
@CS5530_DCFG_CRT_SYNC_SKW_INIT = common dso_local global i32 0, align 4
@CS5530_DCFG_PWR_SEQ_DLY_INIT = common dso_local global i32 0, align 4
@CS5530_DCFG_GV_PAL_BYP = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @cs5530_configure_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5530_configure_display(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.geodefb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  store %struct.geodefb_par* %7, %struct.geodefb_par** %3, align 8
  %8 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %9 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CS5530_DISPLAY_CONFIG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @CS5530_DCFG_CRT_SYNC_SKW_MASK, align 4
  %15 = load i32, i32* @CS5530_DCFG_PWR_SEQ_DLY_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CS5530_DCFG_CRT_HSYNC_POL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CS5530_DCFG_CRT_VSYNC_POL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CS5530_DCFG_FP_PWR_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CS5530_DCFG_FP_DATA_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CS5530_DCFG_DAC_PWR_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CS5530_DCFG_VSYNC_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CS5530_DCFG_HSYNC_EN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @CS5530_DCFG_CRT_SYNC_SKW_INIT, align 4
  %35 = load i32, i32* @CS5530_DCFG_PWR_SEQ_DLY_INIT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CS5530_DCFG_GV_PAL_BYP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %42 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %1
  %46 = load i32, i32* @CS5530_DCFG_DAC_PWR_EN, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @CS5530_DCFG_HSYNC_EN, align 4
  %50 = load i32, i32* @CS5530_DCFG_VSYNC_EN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %45, %1
  %55 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %56 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @CS5530_DCFG_FP_PWR_EN, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @CS5530_DCFG_FP_DATA_EN, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* @CS5530_DCFG_CRT_HSYNC_POL, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @CS5530_DCFG_CRT_VSYNC_POL, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %93 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CS5530_DISPLAY_CONFIG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
