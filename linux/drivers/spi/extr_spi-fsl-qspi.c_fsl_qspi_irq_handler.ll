; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qspi = type { i32, i32, i64 }

@QUADSPI_FR = common dso_local global i64 0, align 8
@QUADSPI_FR_TFF_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QUADSPI_FR : 0x%.8x:0x%.8x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_qspi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qspi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_qspi*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fsl_qspi*
  store %struct.fsl_qspi* %8, %struct.fsl_qspi** %5, align 8
  %9 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %10 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QUADSPI_FR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @qspi_readl(%struct.fsl_qspi* %9, i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QUADSPI_FR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @qspi_writel(%struct.fsl_qspi* %16, i32 %17, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @QUADSPI_FR_TFF_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %30 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %29, i32 0, i32 1
  %31 = call i32 @complete(i32* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %34 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0, i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @qspi_readl(%struct.fsl_qspi*, i64) #1

declare dso_local i32 @qspi_writel(%struct.fsl_qspi*, i32, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
