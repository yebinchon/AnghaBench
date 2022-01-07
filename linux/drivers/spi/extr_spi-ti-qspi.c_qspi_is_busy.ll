; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_is_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_qspi = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@QSPI_COMPLETION_TIMEOUT = common dso_local global i64 0, align 8
@QSPI_SPI_STATUS_REG = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"qspi busy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_qspi*)* @qspi_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_is_busy(%struct.ti_qspi* %0) #0 {
  %2 = alloca %struct.ti_qspi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ti_qspi* %0, %struct.ti_qspi** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @QSPI_COMPLETION_TIMEOUT, align 8
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  %8 = load %struct.ti_qspi*, %struct.ti_qspi** %2, align 8
  %9 = load i32, i32* @QSPI_SPI_STATUS_REG, align 4
  %10 = call i32 @ti_qspi_read(%struct.ti_qspi* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i64 @time_after(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = call i32 (...) @cpu_relax()
  %25 = load %struct.ti_qspi*, %struct.ti_qspi** %2, align 8
  %26 = load i32, i32* @QSPI_SPI_STATUS_REG, align 4
  %27 = call i32 @ti_qspi_read(%struct.ti_qspi* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %11

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @BUSY, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @WARN(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @BUSY, align 4
  %35 = and i32 %33, %34
  ret i32 %35
}

declare dso_local i32 @ti_qspi_read(%struct.ti_qspi*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
