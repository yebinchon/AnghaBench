; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.dw_spi_chip* }
%struct.dw_spi_chip = type { i32, i32, i64 }
%struct.chip_data = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_TMOD_TR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dw_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.dw_spi_chip*, align 8
  %5 = alloca %struct.chip_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.dw_spi_chip* null, %struct.dw_spi_chip** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %6)
  store %struct.chip_data* %7, %struct.chip_data** %5, align 8
  %8 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %9 = icmp ne %struct.chip_data* %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.chip_data* @kzalloc(i32 24, i32 %11)
  store %struct.chip_data* %12, %struct.chip_data** %5, align 8
  %13 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %14 = icmp ne %struct.chip_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %10
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %21 = call i32 @spi_set_ctldata(%struct.spi_device* %19, %struct.chip_data* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load %struct.dw_spi_chip*, %struct.dw_spi_chip** %24, align 8
  store %struct.dw_spi_chip* %25, %struct.dw_spi_chip** %4, align 8
  %26 = load %struct.dw_spi_chip*, %struct.dw_spi_chip** %4, align 8
  %27 = icmp ne %struct.dw_spi_chip* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.dw_spi_chip*, %struct.dw_spi_chip** %4, align 8
  %30 = getelementptr inbounds %struct.dw_spi_chip, %struct.dw_spi_chip* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.dw_spi_chip*, %struct.dw_spi_chip** %4, align 8
  %35 = getelementptr inbounds %struct.dw_spi_chip, %struct.dw_spi_chip* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %38 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.dw_spi_chip*, %struct.dw_spi_chip** %4, align 8
  %41 = getelementptr inbounds %struct.dw_spi_chip, %struct.dw_spi_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %44 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dw_spi_chip*, %struct.dw_spi_chip** %4, align 8
  %46 = getelementptr inbounds %struct.dw_spi_chip, %struct.dw_spi_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %49 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %22
  %51 = load i32, i32* @SPI_TMOD_TR, align 4
  %52 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %53 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
