; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.chip_data = type { i64 }
%struct.driver_data = type { i64, i32 }

@CE4100_SSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.chip_data*, align 8
  %4 = alloca %struct.driver_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %5)
  store %struct.chip_data* %6, %struct.chip_data** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.driver_data* @spi_controller_get_devdata(i32 %9)
  store %struct.driver_data* %10, %struct.driver_data** %4, align 8
  %11 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %12 = icmp ne %struct.chip_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CE4100_SSP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %27 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %32 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gpiod_put(i64 %33)
  br label %35

35:                                               ; preds = %30, %25, %20, %14
  %36 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %37 = call i32 @kfree(%struct.chip_data* %36)
  br label %38

38:                                               ; preds = %35, %13
  ret void
}

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.driver_data* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @gpiod_put(i64) #1

declare dso_local i32 @kfree(%struct.chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
