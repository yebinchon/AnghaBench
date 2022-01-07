; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_wait_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_wait_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.a3700_spi = type { i32, i32 }

@A3700_SPI_IF_CTRL_REG = common dso_local global i32 0, align 4
@A3700_SPI_INT_MASK_REG = common dso_local global i32 0, align 4
@A3700_SPI_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @a3700_spi_wait_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_wait_completion(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.a3700_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.a3700_spi* @spi_master_get_devdata(i32 %10)
  store %struct.a3700_spi* %11, %struct.a3700_spi** %4, align 8
  %12 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %13 = load i32, i32* @A3700_SPI_IF_CTRL_REG, align 4
  %14 = call i32 @spireg_read(%struct.a3700_spi* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %16 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %24 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %23, i32 0, i32 1
  %25 = call i32 @reinit_completion(i32* %24)
  %26 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %27 = load i32, i32* @A3700_SPI_INT_MASK_REG, align 4
  %28 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %29 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @spireg_write(%struct.a3700_spi* %26, i32 %27, i32 %30)
  %32 = load i32, i32* @A3700_SPI_TIMEOUT, align 4
  %33 = call i64 @msecs_to_jiffies(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %35 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %34, i32 0, i32 1
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @wait_for_completion_timeout(i32* %35, i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %39 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %58

43:                                               ; preds = %22
  %44 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %45 = load i32, i32* @A3700_SPI_IF_CTRL_REG, align 4
  %46 = call i32 @spireg_read(%struct.a3700_spi* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %48 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.a3700_spi*, %struct.a3700_spi** %4, align 8
  %56 = load i32, i32* @A3700_SPI_INT_MASK_REG, align 4
  %57 = call i32 @spireg_write(%struct.a3700_spi* %55, i32 %56, i32 0)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %53, %42, %21
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.a3700_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
