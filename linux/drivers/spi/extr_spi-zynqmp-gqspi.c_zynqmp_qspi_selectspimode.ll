; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_selectspimode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_selectspimode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_qspi = type { i32 }

@GQSPI_GENFIFO_MODE_DUALSPI = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_MODE_QUADSPI = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_MODE_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid SPI mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zynqmp_qspi*, i32)* @zynqmp_qspi_selectspimode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_qspi_selectspimode(%struct.zynqmp_qspi* %0, i32 %1) #0 {
  %3 = alloca %struct.zynqmp_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zynqmp_qspi* %0, %struct.zynqmp_qspi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 129, label %9
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @GQSPI_GENFIFO_MODE_DUALSPI, align 4
  store i32 %8, i32* %5, align 4
  br label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @GQSPI_GENFIFO_MODE_QUADSPI, align 4
  store i32 %10, i32* %5, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @GQSPI_GENFIFO_MODE_SPI, align 4
  store i32 %12, i32* %5, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %3, align 8
  %15 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %11, %9, %7
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
