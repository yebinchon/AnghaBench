; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_header_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_header_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { i32*, i32 }

@A3700_SPI_IF_INST_REG = common dso_local global i32 0, align 4
@A3700_SPI_IF_ADDR_REG = common dso_local global i32 0, align 4
@A3700_SPI_IF_RMODE_REG = common dso_local global i32 0, align 4
@A3700_SPI_IF_HDR_CNT_REG = common dso_local global i32 0, align 4
@A3700_SPI_ADDR_CNT_MASK = common dso_local global i32 0, align 4
@A3700_SPI_ADDR_CNT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a3700_spi*)* @a3700_spi_header_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3700_spi_header_set(%struct.a3700_spi* %0) #0 {
  %2 = alloca %struct.a3700_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %6 = load i32, i32* @A3700_SPI_IF_INST_REG, align 4
  %7 = call i32 @spireg_write(%struct.a3700_spi* %5, i32 %6, i32 0)
  %8 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %9 = load i32, i32* @A3700_SPI_IF_ADDR_REG, align 4
  %10 = call i32 @spireg_write(%struct.a3700_spi* %8, i32 %9, i32 0)
  %11 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %12 = load i32, i32* @A3700_SPI_IF_RMODE_REG, align 4
  %13 = call i32 @spireg_write(%struct.a3700_spi* %11, i32 %12, i32 0)
  %14 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %15 = load i32, i32* @A3700_SPI_IF_HDR_CNT_REG, align 4
  %16 = call i32 @spireg_write(%struct.a3700_spi* %14, i32 %15, i32 0)
  %17 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %18 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %1
  %22 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %23 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %24, 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @A3700_SPI_ADDR_CNT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @A3700_SPI_ADDR_CNT_BIT, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %35 = load i32, i32* @A3700_SPI_IF_HDR_CNT_REG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @spireg_write(%struct.a3700_spi* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %40 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub i32 %41, %38
  store i32 %42, i32* %40, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %47, %28
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 8
  %50 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %51 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %49, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %57 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %57, align 8
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %62 = load i32, i32* @A3700_SPI_IF_ADDR_REG, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @spireg_write(%struct.a3700_spi* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %21
  br label %66

66:                                               ; preds = %65, %1
  ret void
}

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
