; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_cs_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_cs_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.chip_data = type { i32, i64, i32 (i32)*, i32 }
%struct.driver_data = type { i64 }

@CE4100_SSP = common dso_local global i64 0, align 8
@SSSR = common dso_local global i32 0, align 4
@PXA2XX_CS_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @cs_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_assert(%struct.spi_device* %0) #0 {
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
  %11 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CE4100_SSP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %18 = load i32, i32* @SSSR, align 4
  %19 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %20 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pxa2xx_spi_write(%struct.driver_data* %17, i32 %18, i32 %21)
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %25 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %24, i32 0, i32 2
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %30 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %29, i32 0, i32 2
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load i32, i32* @PXA2XX_CS_ASSERT, align 4
  %33 = call i32 %31(i32 %32)
  br label %54

34:                                               ; preds = %23
  %35 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %36 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %41 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %44 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @gpiod_set_value(i64 %42, i32 %45)
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %49 = call i64 @is_lpss_ssp(%struct.driver_data* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %53 = call i32 @lpss_ssp_cs_control(%struct.spi_device* %52, i32 1)
  br label %54

54:                                               ; preds = %16, %28, %39, %51, %47
  ret void
}

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.driver_data* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i64 @is_lpss_ssp(%struct.driver_data*) #1

declare dso_local i32 @lpss_ssp_cs_control(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
