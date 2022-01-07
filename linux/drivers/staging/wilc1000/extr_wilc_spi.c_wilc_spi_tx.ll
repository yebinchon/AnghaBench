; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32, %struct.spi_device* }
%struct.spi_transfer = type { i8*, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Request writing %d bytes\0A\00", align 1
@USE_SPI_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SPI transaction failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"can't write data with the following length: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*, i32)* @wilc_spi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_tx(%struct.wilc* %0, i32* %1, i32 %2) #0 {
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
  br i1 %18, label %19, label %62

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 3
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %71

37:                                               ; preds = %22
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @memset(%struct.spi_message* %10, i32 0, i32 16)
  %45 = call i32 @spi_message_init(%struct.spi_message* %10)
  %46 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %47 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 1
  store %struct.spi_device* %46, %struct.spi_device** %47, align 8
  %48 = load i32, i32* @USE_SPI_DMA, align 4
  %49 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %10)
  %51 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %52 = call i32 @spi_sync(%struct.spi_device* %51, %struct.spi_message* %10)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %37
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @kfree(i8* %60)
  br label %69

62:                                               ; preds = %19, %3
  %63 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %34
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

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
