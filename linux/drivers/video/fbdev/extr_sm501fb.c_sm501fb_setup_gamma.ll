; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_setup_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_setup_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501fb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501fb_info*, i64)* @sm501fb_setup_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501fb_setup_gamma(%struct.sm501fb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.sm501fb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sm501fb_info* %0, %struct.sm501fb_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 1024
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = call i32 @smc501_writel(i64 %11, i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 65793
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 4
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %7
  ret void
}

declare dso_local i32 @smc501_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
