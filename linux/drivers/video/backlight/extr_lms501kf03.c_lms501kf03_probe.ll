; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.lms501kf03 = type { i32, %struct.TYPE_2__*, %struct.lcd_device*, i32*, %struct.spi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.lcd_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"platform data is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"lms501kf03\00", align 1
@lms501kf03_lcd_ops = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"lms501kf03 panel driver has been probed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lms501kf03_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lms501kf03_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.lms501kf03*, align 8
  %5 = alloca %struct.lcd_device*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.lms501kf03* null, %struct.lms501kf03** %4, align 8
  store %struct.lcd_device* null, %struct.lcd_device** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lms501kf03* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.lms501kf03* %10, %struct.lms501kf03** %4, align 8
  %11 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %12 = icmp ne %struct.lms501kf03* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  store i32 9, i32* %18, align 4
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = call i32 @spi_setup(%struct.spi_device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 1
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %92

28:                                               ; preds = %16
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %31 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %30, i32 0, i32 4
  store %struct.spi_device* %29, %struct.spi_device** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %35 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 1
  %38 = call %struct.TYPE_2__* @dev_get_platdata(i32* %37)
  %39 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %40 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %39, i32 0, i32 1
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %42 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %28
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 1
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %28
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 1
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 1
  %56 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %57 = call %struct.lcd_device* @devm_lcd_device_register(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %55, %struct.lms501kf03* %56, i32* @lms501kf03_lcd_ops)
  store %struct.lcd_device* %57, %struct.lcd_device** %5, align 8
  %58 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %59 = call i64 @IS_ERR(%struct.lcd_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %63 = call i32 @PTR_ERR(%struct.lcd_device* %62)
  store i32 %63, i32* %2, align 4
  br label %92

64:                                               ; preds = %51
  %65 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %66 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %67 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %66, i32 0, i32 2
  store %struct.lcd_device* %65, %struct.lcd_device** %67, align 8
  %68 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %69 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %76 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %77 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %79 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %80 = call i32 @lms501kf03_power(%struct.lms501kf03* %78, i32 %79)
  br label %85

81:                                               ; preds = %64
  %82 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %83 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %84 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = load %struct.lms501kf03*, %struct.lms501kf03** %4, align 8
  %88 = call i32 @spi_set_drvdata(%struct.spi_device* %86, %struct.lms501kf03* %87)
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 1
  %91 = call i32 @dev_info(i32* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %61, %45, %23, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.lms501kf03* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @dev_get_platdata(i32*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(i32*, i8*, i32*, %struct.lms501kf03*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @lms501kf03_power(%struct.lms501kf03*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.lms501kf03*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
