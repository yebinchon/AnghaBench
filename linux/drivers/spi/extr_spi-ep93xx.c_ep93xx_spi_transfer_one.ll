; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.spi_transfer* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.ep93xx_spi = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"failed to setup chip for transfer\0A\00", align 1
@SPI_FIFO_SIZE = common dso_local global i64 0, align 8
@SSPCR1 = common dso_local global i64 0, align 8
@SSPCR1_RORIE = common dso_local global i32 0, align 4
@SSPCR1_TIE = common dso_local global i32 0, align 4
@SSPCR1_RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @ep93xx_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.ep93xx_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.ep93xx_spi* %12, %struct.ep93xx_spi** %8, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %16 = call i32 @ep93xx_spi_chip_setup(%struct.spi_master* %13, %struct.spi_device* %14, %struct.spi_transfer* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %20, i32 0, i32 1
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %26 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.spi_transfer* %25, %struct.spi_transfer** %29, align 8
  %30 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %31 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %33 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %35 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %24
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPI_FIFO_SIZE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %46 = call i32 @ep93xx_spi_dma_transfer(%struct.spi_master* %45)
  store i32 %46, i32* %4, align 4
  br label %70

47:                                               ; preds = %38, %24
  %48 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %49 = call i32 @ep93xx_spi_read_write(%struct.spi_master* %48)
  %50 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %51 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SSPCR1, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @SSPCR1_RORIE, align 4
  %57 = load i32, i32* @SSPCR1_TIE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SSPCR1_RIE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %65 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SSPCR1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %47, %44, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @ep93xx_spi_chip_setup(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ep93xx_spi_dma_transfer(%struct.spi_master*) #1

declare dso_local i32 @ep93xx_spi_read_write(%struct.spi_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
