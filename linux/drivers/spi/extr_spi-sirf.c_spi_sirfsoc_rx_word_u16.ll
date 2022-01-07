; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_rx_word_u16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_rx_word_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_spi = type { i32, i64*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_spi*)* @spi_sirfsoc_rx_word_u16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sirfsoc_rx_word_u16(%struct.sirfsoc_spi* %0) #0 {
  %2 = alloca %struct.sirfsoc_spi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store %struct.sirfsoc_spi* %0, %struct.sirfsoc_spi** %2, align 8
  %5 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %6 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %5, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %4, align 8
  %8 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %12 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %10, %15
  %17 = call i64 @readl(i64 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %4, align 8
  store i64 %21, i64* %22, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %26 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %25, i32 0, i32 1
  store i64* %24, i64** %26, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %29 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  ret void
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
