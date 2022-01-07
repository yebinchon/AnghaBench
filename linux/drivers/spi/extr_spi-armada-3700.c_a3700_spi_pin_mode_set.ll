; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_pin_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_pin_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@A3700_SPI_IF_CFG_REG = common dso_local global i32 0, align 4
@A3700_SPI_INST_PIN = common dso_local global i32 0, align 4
@A3700_SPI_ADDR_PIN = common dso_local global i32 0, align 4
@A3700_SPI_DATA_PIN0 = common dso_local global i32 0, align 4
@A3700_SPI_DATA_PIN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong pin mode %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a3700_spi*, i32, i32)* @a3700_spi_pin_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_pin_mode_set(%struct.a3700_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.a3700_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %10 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %11 = call i32 @spireg_read(%struct.a3700_spi* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @A3700_SPI_INST_PIN, align 4
  %13 = load i32, i32* @A3700_SPI_ADDR_PIN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @A3700_SPI_DATA_PIN0, align 4
  %19 = load i32, i32* @A3700_SPI_DATA_PIN1, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 130, label %26
    i32 129, label %30
  ]

25:                                               ; preds = %3
  br label %50

26:                                               ; preds = %3
  %27 = load i32, i32* @A3700_SPI_DATA_PIN0, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load i32, i32* @A3700_SPI_DATA_PIN1, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @A3700_SPI_ADDR_PIN, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %30
  br label %50

41:                                               ; preds = %3
  %42 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %43 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %40, %26, %25
  %51 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %52 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @spireg_write(%struct.a3700_spi* %51, i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %41
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
