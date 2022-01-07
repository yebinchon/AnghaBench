; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i32, i32 }
%struct.rtc_device = type { i32 }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unable to setup SPI\0A\00", align 1
@MCP795_24_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rtc-mcp795\00", align 1
@mcp795_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Alarm support enabled\0A\00", align 1
@MCP795_REG_ALM0_DAY = common dso_local global i32 0, align 4
@MCP795_ALM0IF_BIT = common dso_local global i32 0, align 4
@mcp795_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to request IRQ: %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp795_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load i32, i32* @SPI_MODE_0, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call i32 @spi_setup(%struct.spi_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 2
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 2
  %23 = call i32 @mcp795_start_oscillator(i32* %22, i32* null)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 2
  %26 = load i32, i32* @MCP795_24_BIT, align 4
  %27 = call i32 @mcp795_rtcc_set_bits(i32* %25, i32 3, i32 %26, i32 0)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 2
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = call %struct.rtc_device* @devm_rtc_device_register(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @mcp795_rtc_ops, i32 %30)
  store %struct.rtc_device* %31, %struct.rtc_device** %4, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %33 = call i64 @IS_ERR(%struct.rtc_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.rtc_device* %36)
  store i32 %37, i32* %2, align 4
  br label %85

38:                                               ; preds = %20
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = call i32 @spi_set_drvdata(%struct.spi_device* %39, %struct.rtc_device* %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %38
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 2
  %49 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 2
  %52 = load i32, i32* @MCP795_REG_ALM0_DAY, align 4
  %53 = load i32, i32* @MCP795_ALM0IF_BIT, align 4
  %54 = call i32 @mcp795_rtcc_set_bits(i32* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 2
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @mcp795_irq, align 4
  %61 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %62 = load i32, i32* @IRQF_ONESHOT, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %64, i32 0, i32 0
  %66 = call i32 @dev_name(i32* %65)
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = call i32 @devm_request_threaded_irq(i32* %56, i64 %59, i32* null, i32 %60, i32 %63, i32 %66, %struct.spi_device* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %46
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %76, i32 %77)
  br label %83

79:                                               ; preds = %46
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 2
  %82 = call i32 @device_init_wakeup(i32* %81, i32 1)
  br label %83

83:                                               ; preds = %79, %71
  br label %84

84:                                               ; preds = %83, %38
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %35, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mcp795_start_oscillator(i32*, i32*) #1

declare dso_local i32 @mcp795_rtcc_set_bits(i32*, i32, i32, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rtc_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i32, %struct.spi_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
