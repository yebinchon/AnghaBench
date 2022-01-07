; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_fifo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { i32, i32* }

@A3700_SPI_DATA_IN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a3700_spi*)* @a3700_spi_fifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_fifo_read(%struct.a3700_spi* %0) #0 {
  %2 = alloca %struct.a3700_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %2, align 8
  br label %4

4:                                                ; preds = %59, %1
  %5 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %6 = call i32 @a3700_is_rfifo_empty(%struct.a3700_spi* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %10 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i1 [ false, %4 ], [ %12, %8 ]
  br i1 %14, label %15, label %60

15:                                               ; preds = %13
  %16 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %17 = load i32, i32* @A3700_SPI_DATA_IN_REG, align 4
  %18 = call i32 @spireg_read(%struct.a3700_spi* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %20 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %25 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @memcpy(i32* %26, i32* %3, i32 4)
  %28 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %29 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 4
  store i32 %31, i32* %29, align 8
  %32 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %33 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %33, align 8
  br label %59

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %42, %36
  %38 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %39 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 255
  %45 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %46 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 8
  store i32 %49, i32* %3, align 4
  %50 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %51 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %55 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %55, align 8
  br label %37

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %23
  br label %4

60:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @a3700_is_rfifo_empty(%struct.a3700_spi*) #1

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
