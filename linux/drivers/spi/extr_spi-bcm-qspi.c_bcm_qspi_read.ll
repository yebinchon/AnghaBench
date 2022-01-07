; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, i32, i32)* @bcm_qspi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_read(%struct.bcm_qspi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_qspi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @bcm_qspi_readl(i32 %9, i64 %19)
  ret i32 %20
}

declare dso_local i32 @bcm_qspi_readl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
