; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_tx_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_tx_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_spi = type { i32, i32, i32, i32, i32, i32 }

@DW_SPI_TXFLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_spi*)* @tx_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_max(%struct.dw_spi* %0) #0 {
  %2 = alloca %struct.dw_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_spi* %0, %struct.dw_spi** %2, align 8
  %6 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %7 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %10 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  %13 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %14 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %12, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %18 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %21 = load i32, i32* @DW_SPI_TXFLR, align 4
  %22 = call i32 @dw_readl(%struct.dw_spi* %20, i32 %21)
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %25 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %28 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %32 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %35 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = sub nsw i32 %30, %37
  %39 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %40 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %46 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @min3(i32 %43, i32 %44, i32 %49)
  ret i32 %50
}

declare dso_local i32 @dw_readl(%struct.dw_spi*, i32) #1

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
