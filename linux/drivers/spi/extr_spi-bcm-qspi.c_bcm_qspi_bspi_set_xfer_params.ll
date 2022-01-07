; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_xfer_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_set_xfer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32 }

@BSPI = common dso_local global i32 0, align 4
@BSPI_FLEX_MODE_ENABLE = common dso_local global i32 0, align 4
@BSPI_BITS_PER_CYCLE = common dso_local global i32 0, align 4
@BSPI_BITS_PER_PHASE = common dso_local global i32 0, align 4
@BSPI_CMD_AND_MODE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*, i32, i32, i32, i32)* @bcm_qspi_bspi_set_xfer_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_bspi_set_xfer_params(%struct.bcm_qspi* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcm_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %12 = load i32, i32* @BSPI, align 4
  %13 = load i32, i32* @BSPI_FLEX_MODE_ENABLE, align 4
  %14 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %16 = load i32, i32* @BSPI, align 4
  %17 = load i32, i32* @BSPI_BITS_PER_CYCLE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %21 = load i32, i32* @BSPI, align 4
  %22 = load i32, i32* @BSPI_BITS_PER_PHASE, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %26 = load i32, i32* @BSPI, align 4
  %27 = load i32, i32* @BSPI_CMD_AND_MODE_BYTE, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %31 = load i32, i32* @BSPI, align 4
  %32 = load i32, i32* @BSPI_FLEX_MODE_ENABLE, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %30, i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
