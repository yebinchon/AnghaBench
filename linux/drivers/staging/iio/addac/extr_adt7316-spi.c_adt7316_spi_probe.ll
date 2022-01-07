; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316-spi.c_adt7316_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316-spi.c_adt7316_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, i32, i32 }
%struct.adt7316_bus = type { i32, i32, i32 (%struct.spi_device*, i32, i32)*, i32, i32, %struct.spi_device* }

@adt7316_spi_multi_write = common dso_local global i32 0, align 4
@adt7316_spi_multi_read = common dso_local global i32 0, align 4
@adt7316_spi_read = common dso_local global i32 0, align 4
@ADT7316_SPI_MAX_FREQ_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"SPI CLK %d Hz?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adt7316_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.adt7316_bus, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %4, i32 0, i32 0
  %6 = load i32, i32* @adt7316_spi_multi_write, align 4
  store i32 %6, i32* %5, align 8
  %7 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %4, i32 0, i32 1
  %8 = load i32, i32* @adt7316_spi_multi_read, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %4, i32 0, i32 2
  store i32 (%struct.spi_device*, i32, i32)* @adt7316_spi_write, i32 (%struct.spi_device*, i32, i32)** %9, align 8
  %10 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %4, i32 0, i32 3
  %11 = load i32, i32* @adt7316_spi_read, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %4, i32 0, i32 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %4, i32 0, i32 5
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  store %struct.spi_device* %17, %struct.spi_device** %16, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ADT7316_SPI_MAX_FREQ_HZ, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 2
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = call i32 @adt7316_spi_write(%struct.spi_device* %33, i32 0, i32 0)
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = call i32 @adt7316_spi_write(%struct.spi_device* %35, i32 0, i32 0)
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = call i32 @adt7316_spi_write(%struct.spi_device* %37, i32 0, i32 0)
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 2
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @adt7316_probe(i32* %40, %struct.adt7316_bus* %4, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %32, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @adt7316_spi_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @adt7316_probe(i32*, %struct.adt7316_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
