; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { i32 }
%struct.ep93xx_spi = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@SPI_TIMEOUT = common dso_local global i32 0, align 4
@SSPSR = common dso_local global i64 0, align 8
@SSPSR_RNE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout while flushing RX FIFO\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SSPDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @ep93xx_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.ep93xx_spi*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.ep93xx_spi* %9, %struct.ep93xx_spi** %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* @SPI_TIMEOUT, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %35, %2
  %15 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %16 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SSPSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @SSPSR_RNE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @time_after(i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %24
  %36 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %37 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SSPDR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  br label %14

42:                                               ; preds = %14
  %43 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %44 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
