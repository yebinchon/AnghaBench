; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_cs_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_cs_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.chip_data = type { i32, i64, i32 (i32)* }
%struct.driver_data = type { i64 }

@CE4100_SSP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SSSR = common dso_local global i32 0, align 4
@SSSR_BSY = common dso_local global i32 0, align 4
@PXA2XX_CS_DEASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @cs_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_deassert(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.chip_data*, align 8
  %4 = alloca %struct.driver_data*, align 8
  %5 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %6)
  store %struct.chip_data* %7, %struct.chip_data** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.driver_data* @spi_controller_get_devdata(i32 %10)
  store %struct.driver_data* %11, %struct.driver_data** %4, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CE4100_SSP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %73

18:                                               ; preds = %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = call i64 @msecs_to_jiffies(i32 10)
  %21 = add i64 %19, %20
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %37, %18
  %23 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %24 = load i32, i32* @SSSR, align 4
  %25 = call i32 @pxa2xx_spi_read(%struct.driver_data* %23, i32 %24)
  %26 = load i32, i32* @SSSR_BSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %22
  %36 = phi i1 [ false, %22 ], [ %34, %29 ]
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call i32 (...) @cpu_relax()
  br label %22

39:                                               ; preds = %35
  %40 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %41 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %40, i32 0, i32 2
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = icmp ne i32 (i32)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %46 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %45, i32 0, i32 2
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load i32, i32* @PXA2XX_CS_DEASSERT, align 4
  %49 = call i32 %47(i32 %48)
  br label %73

50:                                               ; preds = %39
  %51 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %52 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %57 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %60 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @gpiod_set_value(i64 %58, i32 %64)
  br label %73

66:                                               ; preds = %50
  %67 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %68 = call i64 @is_lpss_ssp(%struct.driver_data* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %72 = call i32 @lpss_ssp_cs_control(%struct.spi_device* %71, i32 0)
  br label %73

73:                                               ; preds = %17, %44, %55, %70, %66
  ret void
}

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.driver_data* @spi_controller_get_devdata(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i64 @is_lpss_ssp(%struct.driver_data*) #1

declare dso_local i32 @lpss_ssp_cs_control(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
