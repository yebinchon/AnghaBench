; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_tx_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_tx_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_spi = type { i32*, i32, i64, i64 }

@ALTERA_SPI_TXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_spi*)* @altera_spi_tx_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_spi_tx_word(%struct.altera_spi* %0) #0 {
  %2 = alloca %struct.altera_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.altera_spi* %0, %struct.altera_spi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %5 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %10 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %43 [
    i32 1, label %12
    i32 2, label %21
  ]

12:                                               ; preds = %8
  %13 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %14 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %17 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %8
  %22 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %23 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %26 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %27, 2
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %32 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %35 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 %36, 2
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %30, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %8, %21, %12
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.altera_spi*, %struct.altera_spi** %2, align 8
  %47 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ALTERA_SPI_TXDATA, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
