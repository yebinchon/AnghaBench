; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c___sdw_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c___sdw_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_driver = type { %struct.TYPE_2__, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.module*, i32* }
%struct.module = type { i32 }

@sdw_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"driver %s didn't provide SDW probe routine\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sdw_drv_probe = common dso_local global i32 0, align 4
@sdw_drv_remove = common dso_local global i32 0, align 4
@sdw_drv_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sdw_register_driver(%struct.sdw_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_driver*, align 8
  %5 = alloca %struct.module*, align 8
  store %struct.sdw_driver* %0, %struct.sdw_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %6 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %7 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store i32* @sdw_bus_type, i32** %8, align 8
  %9 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %10 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %15 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.module*, %struct.module** %5, align 8
  %22 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %23 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store %struct.module* %21, %struct.module** %24, align 8
  %25 = load i32, i32* @sdw_drv_probe, align 4
  %26 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %27 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %30 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load i32, i32* @sdw_drv_remove, align 4
  %35 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %36 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %40 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @sdw_drv_shutdown, align 4
  %45 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %46 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.sdw_driver*, %struct.sdw_driver** %4, align 8
  %50 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %49, i32 0, i32 0
  %51 = call i32 @driver_register(%struct.TYPE_2__* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
