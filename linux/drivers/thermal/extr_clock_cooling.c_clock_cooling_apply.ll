; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_clock_cooling.c_clock_cooling_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_clock_cooling.c_clock_cooling_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_cooling_device = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_cooling_device*, i64)* @clock_cooling_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_cooling_apply(%struct.clock_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clock_cooling_device* %0, %struct.clock_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %10 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @clock_cooling_get_frequency(%struct.clock_cooling_device* %16, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %15
  %25 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %26 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @clk_get_rate(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %30 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %34 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %37 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %43 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @clk_set_rate(i32 %44, i64 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %24
  %48 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %4, align 8
  %49 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %21, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @clock_cooling_get_frequency(%struct.clock_cooling_device*, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
