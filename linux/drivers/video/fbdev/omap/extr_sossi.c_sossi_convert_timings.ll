; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_convert_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_convert_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extif_timings = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extif_timings*)* @sossi_convert_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sossi_convert_timings(%struct.extif_timings* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.extif_timings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.extif_timings* %0, %struct.extif_timings** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %7 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %10 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %1
  store i32 -1, i32* %2, align 4
  br label %37

17:                                               ; preds = %13
  %18 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %19 = call i32 @calc_rd_timings(%struct.extif_timings* %18)
  store i32 %19, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %25 = call i32 @calc_wr_timings(%struct.extif_timings* %24)
  store i32 %25, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %32 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %30, i32* %34, align 4
  %35 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %36 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %27, %21, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @calc_rd_timings(%struct.extif_timings*) #1

declare dso_local i32 @calc_wr_timings(%struct.extif_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
