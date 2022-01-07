; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ltv350qv = type { %struct.lcd_device*, i8*, i32, %struct.spi_device* }
%struct.lcd_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ltv350qv\00", align 1
@ltv_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ltv350qv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltv350qv_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ltv350qv*, align 8
  %5 = alloca %struct.lcd_device*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  %11 = bitcast i8* %10 to %struct.ltv350qv*
  store %struct.ltv350qv* %11, %struct.ltv350qv** %4, align 8
  %12 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %13 = icmp ne %struct.ltv350qv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %20 = getelementptr inbounds %struct.ltv350qv, %struct.ltv350qv* %19, i32 0, i32 3
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %22 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %23 = getelementptr inbounds %struct.ltv350qv, %struct.ltv350qv* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(i32* %25, i32 8, i32 %26)
  %28 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %29 = getelementptr inbounds %struct.ltv350qv, %struct.ltv350qv* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %31 = getelementptr inbounds %struct.ltv350qv, %struct.ltv350qv* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %17
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %43 = call %struct.lcd_device* @devm_lcd_device_register(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %41, %struct.ltv350qv* %42, i32* @ltv_ops)
  store %struct.lcd_device* %43, %struct.lcd_device** %5, align 8
  %44 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %45 = call i64 @IS_ERR(%struct.lcd_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.lcd_device* %48)
  store i32 %49, i32* %2, align 4
  br label %65

50:                                               ; preds = %37
  %51 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %52 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %53 = getelementptr inbounds %struct.ltv350qv, %struct.ltv350qv* %52, i32 0, i32 0
  store %struct.lcd_device* %51, %struct.lcd_device** %53, align 8
  %54 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %55 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %56 = call i32 @ltv350qv_power(%struct.ltv350qv* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = load %struct.ltv350qv*, %struct.ltv350qv** %4, align 8
  %64 = call i32 @spi_set_drvdata(%struct.spi_device* %62, %struct.ltv350qv* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %47, %34, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(i32*, i8*, i32*, %struct.ltv350qv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @ltv350qv_power(%struct.ltv350qv*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ltv350qv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
