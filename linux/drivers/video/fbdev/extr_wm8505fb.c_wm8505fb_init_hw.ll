; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wm8505fb_info = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WMT_GOVR_FBADDR = common dso_local global i64 0, align 8
@WMT_GOVR_FBADDR1 = common dso_local global i64 0, align 8
@WMT_GOVR_COLORSPACE = common dso_local global i64 0, align 8
@WMT_GOVR_COLORSPACE1 = common dso_local global i64 0, align 8
@WMT_GOVR_XRES = common dso_local global i64 0, align 8
@WMT_GOVR_XRES_VIRTUAL = common dso_local global i64 0, align 8
@WMT_GOVR_FHI = common dso_local global i64 0, align 8
@WMT_GOVR_DVO_SET = common dso_local global i64 0, align 8
@WMT_GOVR_MIF_ENABLE = common dso_local global i64 0, align 8
@WMT_GOVR_REG_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @wm8505fb_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8505fb_init_hw(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.wm8505fb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = call %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info* %5)
  store %struct.wm8505fb_info* %6, %struct.wm8505fb_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 4
  store i32 %20, i32* %4, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WMT_GOVR_FBADDR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WMT_GOVR_FBADDR1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WMT_GOVR_COLORSPACE, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 796, i64 %48)
  %50 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %51 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WMT_GOVR_COLORSPACE1, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 1, i64 %54)
  %56 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @WMT_GOVR_XRES, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @WMT_GOVR_XRES_VIRTUAL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %77 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WMT_GOVR_FHI, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 15, i64 %80)
  %82 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %83 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WMT_GOVR_DVO_SET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 4, i64 %86)
  %88 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WMT_GOVR_MIF_ENABLE, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 1, i64 %92)
  %94 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %95 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @WMT_GOVR_REG_UPDATE, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 1, i64 %98)
  ret i32 0
}

declare dso_local %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
