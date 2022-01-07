; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qspi = type { i64 }

@QUADSPI_MCR = common dso_local global i64 0, align 8
@QUADSPI_MCR_SWRSTHD_MASK = common dso_local global i32 0, align 4
@QUADSPI_MCR_SWRSTSD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_qspi*)* @fsl_qspi_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_qspi_invalidate(%struct.fsl_qspi* %0) #0 {
  %2 = alloca %struct.fsl_qspi*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_qspi* %0, %struct.fsl_qspi** %2, align 8
  %4 = load %struct.fsl_qspi*, %struct.fsl_qspi** %2, align 8
  %5 = load %struct.fsl_qspi*, %struct.fsl_qspi** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QUADSPI_MCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @qspi_readl(%struct.fsl_qspi* %4, i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @QUADSPI_MCR_SWRSTHD_MASK, align 4
  %12 = load i32, i32* @QUADSPI_MCR_SWRSTSD_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.fsl_qspi*, %struct.fsl_qspi** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.fsl_qspi*, %struct.fsl_qspi** %2, align 8
  %19 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QUADSPI_MCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @qspi_writel(%struct.fsl_qspi* %16, i32 %17, i64 %22)
  %24 = call i32 @udelay(i32 1)
  %25 = load i32, i32* @QUADSPI_MCR_SWRSTHD_MASK, align 4
  %26 = load i32, i32* @QUADSPI_MCR_SWRSTSD_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.fsl_qspi*, %struct.fsl_qspi** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.fsl_qspi*, %struct.fsl_qspi** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QUADSPI_MCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @qspi_writel(%struct.fsl_qspi* %31, i32 %32, i64 %37)
  ret void
}

declare dso_local i32 @qspi_readl(%struct.fsl_qspi*, i64) #1

declare dso_local i32 @qspi_writel(%struct.fsl_qspi*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
