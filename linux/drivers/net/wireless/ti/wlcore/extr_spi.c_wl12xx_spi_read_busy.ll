; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl12xx_spi_read_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl12xx_spi_read_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.wl12xx_spi_glue = type { i32 }
%struct.wl1271 = type { i32* }
%struct.spi_transfer = type { i32*, i32, i32 }
%struct.spi_message = type { i32 }

@WL1271_BUSY_WORD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SPI read busy-word timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wl12xx_spi_read_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_spi_read_busy(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wl12xx_spi_glue*, align 8
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca [1 x %struct.spi_transfer], align 16
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  %13 = call i8* @dev_get_drvdata(%struct.device* %12)
  %14 = bitcast i8* %13 to %struct.wl12xx_spi_glue*
  store %struct.wl12xx_spi_glue* %14, %struct.wl12xx_spi_glue** %4, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i8* @dev_get_drvdata(%struct.device* %15)
  %17 = bitcast i8* %16 to %struct.wl1271*
  store %struct.wl1271* %17, %struct.wl1271** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @WL1271_BUSY_WORD_TIMEOUT, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = call i32 @spi_message_init(%struct.spi_message* %7)
  %29 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %6, i64 0, i64 0
  %30 = call i32 @memset(%struct.spi_transfer* %29, i32 0, i32 16)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %6, i64 0, i64 0
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 16
  %34 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  store i32 4, i32* %35, align 8
  %36 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %6, i64 0, i64 0
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds [1 x %struct.spi_transfer], [1 x %struct.spi_transfer]* %6, i64 0, i64 0
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %38, %struct.spi_message* %7)
  %40 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %41 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_spi_device(i32 %42)
  %44 = call i32 @spi_sync(i32 %43, %struct.spi_message* %7)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %58

50:                                               ; preds = %25
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %49
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @to_spi_device(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
