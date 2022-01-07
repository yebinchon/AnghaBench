; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_sq_spi_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_sq_spi_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_spi = type { i64, i32, i64 }

@SYNQUACER_HSSPI_REG_RXF = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_RXF_SLAVE_RELEASED = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_RXF_FIFO_MORE_THAN_THRESHOLD = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_REG_RXE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sq_spi_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_spi_rx_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.synquacer_spi*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.synquacer_spi*
  store %struct.synquacer_spi* %9, %struct.synquacer_spi** %7, align 8
  %10 = load %struct.synquacer_spi*, %struct.synquacer_spi** %7, align 8
  %11 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SYNQUACER_HSSPI_REG_RXF, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SYNQUACER_HSSPI_RXF_SLAVE_RELEASED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SYNQUACER_HSSPI_RXF_FIFO_MORE_THAN_THRESHOLD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20, %2
  %26 = load %struct.synquacer_spi*, %struct.synquacer_spi** %7, align 8
  %27 = call i32 @read_fifo(%struct.synquacer_spi* %26)
  %28 = load %struct.synquacer_spi*, %struct.synquacer_spi** %7, align 8
  %29 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.synquacer_spi*, %struct.synquacer_spi** %7, align 8
  %34 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SYNQUACER_HSSPI_REG_RXE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 0, i64 %37)
  %39 = load %struct.synquacer_spi*, %struct.synquacer_spi** %7, align 8
  %40 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %39, i32 0, i32 1
  %41 = call i32 @complete(i32* %40)
  br label %42

42:                                               ; preds = %32, %25
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %20
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @read_fifo(%struct.synquacer_spi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
