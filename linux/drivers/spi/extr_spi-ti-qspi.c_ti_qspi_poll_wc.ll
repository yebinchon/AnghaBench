; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_poll_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_poll_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_qspi = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@QSPI_COMPLETION_TIMEOUT = common dso_local global i64 0, align 8
@QSPI_SPI_STATUS_REG = common dso_local global i32 0, align 4
@WC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_qspi*)* @ti_qspi_poll_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_qspi_poll_wc(%struct.ti_qspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ti_qspi* %0, %struct.ti_qspi** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @QSPI_COMPLETION_TIMEOUT, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %11 = load i32, i32* @QSPI_SPI_STATUS_REG, align 4
  %12 = call i32 @ti_qspi_read(%struct.ti_qspi* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %37

18:                                               ; preds = %9
  %19 = call i32 (...) @cpu_relax()
  br label %20

20:                                               ; preds = %18
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i64 @time_after(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %9, label %25

25:                                               ; preds = %20
  %26 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %27 = load i32, i32* @QSPI_SPI_STATUS_REG, align 4
  %28 = call i32 @ti_qspi_read(%struct.ti_qspi* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @WC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %33, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ti_qspi_read(%struct.ti_qspi*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
