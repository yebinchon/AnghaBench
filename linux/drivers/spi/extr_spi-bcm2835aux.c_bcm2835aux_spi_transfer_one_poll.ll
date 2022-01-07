; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_transfer_one_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_transfer_one_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.bcm2835aux_spi = type { i32, i64, i32, i32*, i32 }

@BCM2835_AUX_SPI_CNTL1 = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@polling_limit_us = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @bcm2835aux_spi_transfer_one_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_spi_transfer_one_poll(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.bcm2835aux_spi*, align 8
  %9 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.bcm2835aux_spi* %11, %struct.bcm2835aux_spi** %8, align 8
  %12 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %13 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %17 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %18 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %19 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %16, i32 %17, i32 %22)
  %24 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %25 = load i32, i32* @BCM2835_AUX_SPI_CNTL0, align 4
  %26 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %27 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %24, i32 %25, i32 %30)
  %32 = load i32, i32* @jiffies, align 4
  %33 = add nsw i32 %32, 2
  %34 = load i32, i32* @HZ, align 4
  %35 = load i32, i32* @polling_limit_us, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 1000000
  %38 = add nsw i32 %33, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %80, %3
  %41 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %42 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %40
  %46 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %47 = call i32 @bcm2835aux_spi_transfer_helper(%struct.bcm2835aux_spi* %46)
  %48 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %49 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %45
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @time_after(i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load i32, i32* @jiffies, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %66 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %69 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dev_dbg_ratelimited(i32* %59, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i64 %70)
  %72 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %73 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %77 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %78 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %79 = call i32 @__bcm2835aux_spi_transfer_one_irq(%struct.spi_master* %76, %struct.spi_device* %77, %struct.spi_transfer* %78)
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %52, %45
  br label %40

81:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @bcm2835aux_wr(%struct.bcm2835aux_spi*, i32, i32) #1

declare dso_local i32 @bcm2835aux_spi_transfer_helper(%struct.bcm2835aux_spi*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_dbg_ratelimited(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @__bcm2835aux_spi_transfer_one_irq(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
