; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.spi_device = type { i32 }

@CMD_DMA_EXT_WRITE = common dso_local global i32 0, align 4
@N_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed cmd, write block (%08x)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed block data write...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32, i32*, i32)* @wilc_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_write(%struct.wilc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.wilc*, %struct.wilc** %6, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.spi_device* @to_spi_device(i32 %14)
  store %struct.spi_device* %15, %struct.spi_device** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.wilc*, %struct.wilc** %6, align 8
  %21 = load i32, i32* @CMD_DMA_EXT_WRITE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @spi_cmd_complete(%struct.wilc* %20, i32 %21, i32 %22, i32* null, i32 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @N_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %5, align 4
  br label %46

33:                                               ; preds = %19
  %34 = load %struct.wilc*, %struct.wilc** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @spi_data_write(%struct.wilc* %34, i32* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @N_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %33
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %28, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @spi_cmd_complete(%struct.wilc*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_data_write(%struct.wilc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
