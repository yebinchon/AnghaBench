; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcvt.c_fb_cvt_vbi_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcvt.c_fb_cvt_vbi_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cvt_data = type { i32, i32, i32 }

@FB_CVT_FLAG_REDUCED_BLANK = common dso_local global i32 0, align 4
@FB_CVT_RB_MIN_VBLANK = common dso_local global i32 0, align 4
@FB_CVT_RB_V_FPORCH = common dso_local global i32 0, align 4
@FB_CVT_MIN_BPORCH = common dso_local global i32 0, align 4
@FB_CVT_MIN_VSYNC_BP = common dso_local global i32 0, align 4
@FB_CVT_MIN_VPORCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cvt_data*)* @fb_cvt_vbi_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_cvt_vbi_lines(%struct.fb_cvt_data* %0) #0 {
  %2 = alloca %struct.fb_cvt_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_cvt_data* %0, %struct.fb_cvt_data** %2, align 8
  %6 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %7 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FB_CVT_FLAG_REDUCED_BLANK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @FB_CVT_RB_MIN_VBLANK, align 4
  %14 = mul nsw i32 1000, %13
  %15 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %16 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %14, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @FB_CVT_RB_V_FPORCH, align 4
  %21 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %22 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load i32, i32* @FB_CVT_MIN_BPORCH, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load i32, i32* @FB_CVT_MIN_VSYNC_BP, align 4
  %29 = mul nsw i32 %28, 1000
  %30 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %31 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @FB_CVT_MIN_VPORCH, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %38 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FB_CVT_MIN_BPORCH, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @FB_CVT_MIN_VPORCH, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %27, %12
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
