; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcvt.c_fb_cvt_hperiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcvt.c_fb_cvt_hperiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cvt_data = type { i32, i32, i32, i32, i32 }

@FB_CVT_FLAG_REDUCED_BLANK = common dso_local global i32 0, align 4
@FB_CVT_RB_MIN_VBLANK = common dso_local global i32 0, align 4
@FB_CVT_MIN_VSYNC_BP = common dso_local global i32 0, align 4
@FB_CVT_MIN_VPORCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cvt_data*)* @fb_cvt_hperiod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_cvt_hperiod(%struct.fb_cvt_data* %0) #0 {
  %2 = alloca %struct.fb_cvt_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fb_cvt_data* %0, %struct.fb_cvt_data** %2, align 8
  %5 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %6 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 1000000000, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %10 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FB_CVT_FLAG_REDUCED_BLANK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load i32, i32* @FB_CVT_RB_MIN_VBLANK, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %21 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %24 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  %27 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %28 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %26, %30
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %4, align 4
  br label %58

33:                                               ; preds = %1
  %34 = load i32, i32* @FB_CVT_MIN_VSYNC_BP, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %39 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %42 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %46 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 %44, %48
  %50 = load i32, i32* @FB_CVT_MIN_VPORCH, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %53 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %51, %55
  %57 = mul nsw i32 2, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %33, %15
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sdiv i32 %59, %60
  %62 = mul nsw i32 2, %61
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
