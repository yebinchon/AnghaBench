; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_tx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_tx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32, %struct.spi_device* }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@USE_SPI_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SPI transaction failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"can't read data with the following length: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*, i32*, i32)* @wilc_spi_tx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_tx_rx(%struct.wilc* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.spi_message, align 8
  %12 = alloca %struct.spi_transfer, align 8
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wilc*, %struct.wilc** %5, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.spi_device* @to_spi_device(i32 %15)
  store %struct.spi_device* %16, %struct.spi_device** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 4
  %27 = load i32*, i32** %7, align 8
  store i32* %27, i32** %26, align 8
  %28 = call i32 @memset(%struct.spi_message* %11, i32 0, i32 16)
  %29 = call i32 @spi_message_init(%struct.spi_message* %11)
  %30 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %31 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 1
  store %struct.spi_device* %30, %struct.spi_device** %31, align 8
  %32 = load i32, i32* @USE_SPI_DMA, align 4
  %33 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = call i32 @spi_message_add_tail(%struct.spi_transfer* %12, %struct.spi_message* %11)
  %35 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %36 = call i32 @spi_sync(%struct.spi_device* %35, %struct.spi_message* %11)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %19
  br label %51

44:                                               ; preds = %4
  %45 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %43
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @memset(%struct.spi_message*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
