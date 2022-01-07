; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_calc_clock_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_calc_clock_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_clock_info = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_calc_clock_rates(i64 %0, %struct.dispc_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.dispc_clock_info*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.dispc_clock_info* %1, %struct.dispc_clock_info** %5, align 8
  %6 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %7 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 255
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %12 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %10
  %19 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %20 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %25 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %23
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %34 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %32, %36
  %38 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %39 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %41 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %44 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %42, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %5, align 8
  %50 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %31, %28, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
