; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.spi_driver = type { %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, %struct.module* }

@spi_bus_type = common dso_local global i32 0, align 4
@spi_drv_probe = common dso_local global i32 0, align 4
@spi_drv_remove = common dso_local global i32 0, align 4
@spi_drv_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__spi_register_driver(%struct.module* %0, %struct.spi_driver* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.spi_driver*, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  store %struct.spi_driver* %1, %struct.spi_driver** %4, align 8
  %5 = load %struct.module*, %struct.module** %3, align 8
  %6 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %7 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store %struct.module* %5, %struct.module** %8, align 8
  %9 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %10 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32* @spi_bus_type, i32** %11, align 8
  %12 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %13 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @spi_drv_probe, align 4
  %18 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %19 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %23 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @spi_drv_remove, align 4
  %28 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %29 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %33 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @spi_drv_shutdown, align 4
  %38 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %39 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.spi_driver*, %struct.spi_driver** %4, align 8
  %43 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %42, i32 0, i32 0
  %44 = call i32 @driver_register(%struct.TYPE_2__* %43)
  ret i32 %44
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
