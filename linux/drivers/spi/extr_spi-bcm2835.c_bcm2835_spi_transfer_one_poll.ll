; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.bcm2835_spi = type { i32, i64, i32, i32 }

@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_TA = common dso_local global i32 0, align 4
@BCM2835_SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@polling_limit_us = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32)* @bcm2835_spi_transfer_one_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_transfer_one_poll(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm2835_spi*, align 8
  %11 = alloca i64, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %13 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %12)
  store %struct.bcm2835_spi* %13, %struct.bcm2835_spi** %10, align 8
  %14 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %15 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %19 = load i32, i32* @BCM2835_SPI_CS, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BCM2835_SPI_CS_TA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %18, i32 %19, i32 %22)
  %24 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %25 = load i32, i32* @BCM2835_SPI_FIFO_SIZE, align 4
  %26 = call i32 @bcm2835_wr_fifo_blind(%struct.bcm2835_spi* %24, i32 %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = add nsw i32 %27, 2
  %29 = load i32, i32* @HZ, align 4
  %30 = load i32, i32* @polling_limit_us, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 1000000
  %33 = add nsw i32 %28, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %78, %4
  %36 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %37 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %35
  %41 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %42 = call i32 @bcm2835_wr_fifo(%struct.bcm2835_spi* %41)
  %43 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %44 = call i32 @bcm2835_rd_fifo(%struct.bcm2835_spi* %43)
  %45 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %46 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %40
  %50 = load i32, i32* @jiffies, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @time_after(i32 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = load i32, i32* @jiffies, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %63 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %66 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dev_dbg_ratelimited(i32* %56, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i64 %67)
  %69 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %70 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %74 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %75 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @bcm2835_spi_transfer_one_irq(%struct.spi_controller* %73, %struct.spi_device* %74, %struct.spi_transfer* %75, i32 %76, i32 0)
  store i32 %77, i32* %5, align 4
  br label %82

78:                                               ; preds = %49, %40
  br label %35

79:                                               ; preds = %35
  %80 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %81 = call i32 @bcm2835_spi_reset_hw(%struct.spi_controller* %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %54
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

declare dso_local i32 @bcm2835_wr_fifo_blind(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_wr_fifo(%struct.bcm2835_spi*) #1

declare dso_local i32 @bcm2835_rd_fifo(%struct.bcm2835_spi*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_dbg_ratelimited(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @bcm2835_spi_transfer_one_irq(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @bcm2835_spi_reset_hw(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
