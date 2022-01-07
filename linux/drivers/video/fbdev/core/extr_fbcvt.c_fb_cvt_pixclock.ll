; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcvt.c_fb_cvt_pixclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcvt.c_fb_cvt_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cvt_data = type { i32, i32, i32, i32, i32 }

@FB_CVT_FLAG_REDUCED_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cvt_data*)* @fb_cvt_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_cvt_pixclock(%struct.fb_cvt_data* %0) #0 {
  %2 = alloca %struct.fb_cvt_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fb_cvt_data* %0, %struct.fb_cvt_data** %2, align 8
  %4 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %5 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FB_CVT_FLAG_REDUCED_BLANK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %12 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %15 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %19 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %25 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 1000000
  %28 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %2, align 8
  %29 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %10
  %33 = load i32, i32* %3, align 4
  %34 = sdiv i32 %33, 250
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %35, 250
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, 1000
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
