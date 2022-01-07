; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_fifo_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_fifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { i32 }

@A3700_SPI_TIMEOUT = common dso_local global i32 0, align 4
@A3700_SPI_IF_CFG_REG = common dso_local global i32 0, align 4
@A3700_SPI_FIFO_FLUSH = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a3700_spi*)* @a3700_spi_fifo_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_fifo_flush(%struct.a3700_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a3700_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %3, align 8
  %6 = load i32, i32* @A3700_SPI_TIMEOUT, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %8 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %9 = call i32 @spireg_read(%struct.a3700_spi* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @A3700_SPI_FIFO_FLUSH, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %14 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @spireg_write(%struct.a3700_spi* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %23 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %24 = call i32 @spireg_read(%struct.a3700_spi* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @A3700_SPI_FIFO_FLUSH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %21
  %31 = call i32 @udelay(i32 1)
  br label %17

32:                                               ; preds = %17
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
