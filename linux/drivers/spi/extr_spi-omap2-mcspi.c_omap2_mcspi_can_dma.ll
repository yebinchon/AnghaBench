; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_can_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_can_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i64, i32 }
%struct.spi_transfer = type { i64 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32, i32 }

@DMA_MIN_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @omap2_mcspi_can_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_can_dma(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.omap2_mcspi*, align 8
  %9 = alloca %struct.omap2_mcspi_dma*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %12)
  store %struct.omap2_mcspi* %13, %struct.omap2_mcspi** %8, align 8
  %14 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %8, align 8
  %15 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %14, i32 0, i32 0
  %16 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %15, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %16, i64 %19
  store %struct.omap2_mcspi_dma* %20, %struct.omap2_mcspi_dma** %9, align 8
  %21 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %9, align 8
  %22 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %9, align 8
  %27 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %43

31:                                               ; preds = %25
  %32 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %33 = call i64 @spi_controller_is_slave(%struct.spi_master* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %43

36:                                               ; preds = %31
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DMA_MIN_BYTES, align 8
  %41 = icmp sge i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %35, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i64 @spi_controller_is_slave(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
