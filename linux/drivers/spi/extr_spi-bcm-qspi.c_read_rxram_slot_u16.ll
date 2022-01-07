; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_read_rxram_slot_u16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_read_rxram_slot_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32 }

@MSPI_RXRAM = common dso_local global i64 0, align 8
@MSPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, i32)* @read_rxram_slot_u16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rxram_slot_u16(%struct.bcm_qspi* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @MSPI_RXRAM, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = add nsw i64 %13, 4
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %21 = load i32, i32* @MSPI, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %20, i32 %21, i64 %22)
  %24 = and i32 %23, 255
  %25 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %26 = load i32, i32* @MSPI, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %25, i32 %26, i64 %27)
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = or i32 %24, %30
  ret i32 %31
}

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
