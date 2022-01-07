; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.davinci_spi = type { i64 }

@SPI_NO_CS = common dso_local global i32 0, align 4
@SPIPC0 = common dso_local global i64 0, align 8
@SPI_READY = common dso_local global i32 0, align 4
@SPIPC0_SPIENA_MASK = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPIGCR1 = common dso_local global i64 0, align 8
@SPIGCR1_LOOPBACK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @davinci_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.davinci_spi*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  store i32 1, i32* %5, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.davinci_spi* @spi_master_get_devdata(i32 %12)
  store %struct.davinci_spi* %13, %struct.davinci_spi** %3, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SPI_NO_CS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %23, %20
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %34 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPIPC0, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @set_io_bits(i64 %37, i32 %41)
  br label %43

43:                                               ; preds = %32, %29
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SPI_READY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %53 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SPIPC0, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @SPIPC0_SPIENA_MASK, align 4
  %58 = call i32 @set_io_bits(i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %44
  %60 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SPI_LOOP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %68 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SPIGCR1, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* @SPIGCR1_LOOPBACK_MASK, align 4
  %73 = call i32 @set_io_bits(i64 %71, i32 %72)
  br label %82

74:                                               ; preds = %59
  %75 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %76 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SPIGCR1, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* @SPIGCR1_LOOPBACK_MASK, align 4
  %81 = call i32 @clear_io_bits(i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %84 = call i32 @davinci_spi_of_setup(%struct.spi_device* %83)
  ret i32 %84
}

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @set_io_bits(i64, i32) #1

declare dso_local i32 @clear_io_bits(i64, i32) #1

declare dso_local i32 @davinci_spi_of_setup(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
