; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_qspi = type { i64, i32 }

@QSPI_CR_SWRST = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@QSPI_MR_SMM = common dso_local global i32 0, align 4
@QSPI_MR = common dso_local global i64 0, align 8
@QSPI_CR_QSPIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_qspi*)* @atmel_qspi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_qspi_init(%struct.atmel_qspi* %0) #0 {
  %2 = alloca %struct.atmel_qspi*, align 8
  store %struct.atmel_qspi* %0, %struct.atmel_qspi** %2, align 8
  %3 = load i32, i32* @QSPI_CR_SWRST, align 4
  %4 = load %struct.atmel_qspi*, %struct.atmel_qspi** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @QSPI_CR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel_relaxed(i32 %3, i64 %8)
  %10 = load i32, i32* @QSPI_MR_SMM, align 4
  %11 = load %struct.atmel_qspi*, %struct.atmel_qspi** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QSPI_MR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 %10, i64 %15)
  %17 = load i32, i32* @QSPI_MR_SMM, align 4
  %18 = load %struct.atmel_qspi*, %struct.atmel_qspi** %2, align 8
  %19 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @QSPI_CR_QSPIEN, align 4
  %21 = load %struct.atmel_qspi*, %struct.atmel_qspi** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QSPI_CR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 %20, i64 %25)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
