; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_rx_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_rx_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_spi = type { i32*, i32, i64, i64 }

@ALTERA_SPI_RXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_spi*)* @altera_spi_rx_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_spi_rx_word(%struct.altera_spi* %0) #0 {
  %2 = alloca %struct.altera_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.altera_spi* %0, %struct.altera_spi** %2, align 8
  %4 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %5 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ALTERA_SPI_RXDATA, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %11 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %16 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %48 [
    i32 1, label %18
    i32 2, label %27
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %21 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %24 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %19, i32* %26, align 4
  br label %48

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %30 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %33 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %34, 2
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32 %28, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = lshr i32 %37, 8
  %39 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %40 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %43 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = mul i64 %44, 2
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32 %38, i32* %47, align 4
  br label %48

48:                                               ; preds = %14, %27, %18
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %51 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
