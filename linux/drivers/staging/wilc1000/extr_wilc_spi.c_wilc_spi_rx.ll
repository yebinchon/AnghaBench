; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32, %struct.spi_device* }
%struct.spi_transfer = type { i8*, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USE_SPI_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SPI transaction failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"can't read data with the following length: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*, i32)* @wilc_spi_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_rx(%struct.wilc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 8
  %11 = alloca %struct.spi_transfer, align 8
  %12 = alloca i8*, align 8
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.wilc*, %struct.wilc** %5, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.spi_device* @to_spi_device(i32 %15)
  store %struct.spi_device* %16, %struct.spi_device** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 3
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 %26, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %19
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = call i32 @memset(%struct.spi_message* %10, i32 0, i32 16)
  %38 = call i32 @spi_message_init(%struct.spi_message* %10)
  %39 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %40 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 1
  store %struct.spi_device* %39, %struct.spi_device** %40, align 8
  %41 = load i32, i32* @USE_SPI_DMA, align 4
  %42 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %10)
  %44 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %45 = call i32 @spi_sync(%struct.spi_device* %44, %struct.spi_message* %10)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %34
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @kfree(i8* %53)
  br label %62

55:                                               ; preds = %3
  %56 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %31
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.spi_message*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
