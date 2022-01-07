; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_can_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_can_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { %struct.davinci_spi_config* }
%struct.davinci_spi_config = type { i64 }
%struct.spi_transfer = type { i64, i32, i32 }

@SPI_IO_TYPE_DMA = common dso_local global i64 0, align 8
@DMA_MIN_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @davinci_spi_can_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_can_dma(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.davinci_spi_config*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %10, align 8
  store %struct.davinci_spi_config* %11, %struct.davinci_spi_config** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %13 = icmp ne %struct.davinci_spi_config* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %16 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPI_IO_TYPE_DMA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_MIN_BYTES, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @is_vmalloc_addr(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @is_vmalloc_addr(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %32, %26, %20, %14
  %40 = phi i1 [ false, %26 ], [ false, %20 ], [ false, %14 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %3
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @is_vmalloc_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
