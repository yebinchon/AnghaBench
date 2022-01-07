; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_transfer_abort_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_transfer_abort_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { i32 }

@A3700_SPI_TIMEOUT = common dso_local global i32 0, align 4
@A3700_SPI_IF_CFG_REG = common dso_local global i32 0, align 4
@A3700_SPI_XFER_STOP = common dso_local global i32 0, align 4
@A3700_SPI_XFER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a3700_spi*)* @a3700_spi_transfer_abort_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3700_spi_transfer_abort_fifo(%struct.a3700_spi* %0) #0 {
  %2 = alloca %struct.a3700_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %2, align 8
  %5 = load i32, i32* @A3700_SPI_TIMEOUT, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %7 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %8 = call i32 @spireg_read(%struct.a3700_spi* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @A3700_SPI_XFER_STOP, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %13 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @spireg_write(%struct.a3700_spi* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %29, %1
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %22 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %23 = call i32 @spireg_read(%struct.a3700_spi* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @A3700_SPI_XFER_START, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %31

29:                                               ; preds = %20
  %30 = call i32 @udelay(i32 1)
  br label %16

31:                                               ; preds = %28, %16
  %32 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %33 = call i32 @a3700_spi_fifo_flush(%struct.a3700_spi* %32)
  %34 = load i32, i32* @A3700_SPI_XFER_STOP, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %39 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @spireg_write(%struct.a3700_spi* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @a3700_spi_fifo_flush(%struct.a3700_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
