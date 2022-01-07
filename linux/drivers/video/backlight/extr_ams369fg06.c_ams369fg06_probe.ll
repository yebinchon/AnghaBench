; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ams369fg06 = type { i32, %struct.TYPE_4__*, %struct.lcd_device*, %struct.lcd_device*, i32*, %struct.spi_device* }
%struct.TYPE_4__ = type { i32 }
%struct.lcd_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.backlight_properties = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"platform data is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ams369fg06\00", align 1
@ams369fg06_lcd_ops = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ams369fg06-bl\00", align 1
@ams369fg06_backlight_ops = common dso_local global i32 0, align 4
@DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ams369fg06 panel driver has been probed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ams369fg06_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams369fg06_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ams369fg06*, align 8
  %6 = alloca %struct.lcd_device*, align 8
  %7 = alloca %struct.backlight_device*, align 8
  %8 = alloca %struct.backlight_properties, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.ams369fg06* null, %struct.ams369fg06** %5, align 8
  store %struct.lcd_device* null, %struct.lcd_device** %6, align 8
  store %struct.backlight_device* null, %struct.backlight_device** %7, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ams369fg06* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.ams369fg06* %12, %struct.ams369fg06** %5, align 8
  %13 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %14 = icmp ne %struct.ams369fg06* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %123

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  store i32 16, i32* %20, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = call i32 @spi_setup(%struct.spi_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 1
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %123

30:                                               ; preds = %18
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %33 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %32, i32 0, i32 5
  store %struct.spi_device* %31, %struct.spi_device** %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %37 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = call %struct.TYPE_4__* @dev_get_platdata(i32* %39)
  %41 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %42 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %41, i32 0, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %44 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %30
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %123

53:                                               ; preds = %30
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 1
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 1
  %58 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %59 = call %struct.lcd_device* @devm_lcd_device_register(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %57, %struct.ams369fg06* %58, i32* @ams369fg06_lcd_ops)
  store %struct.lcd_device* %59, %struct.lcd_device** %6, align 8
  %60 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %61 = call i64 @IS_ERR(%struct.lcd_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %65 = call i32 @PTR_ERR(%struct.lcd_device* %64)
  store i32 %65, i32* %2, align 4
  br label %123

66:                                               ; preds = %53
  %67 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %68 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %69 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %68, i32 0, i32 3
  store %struct.lcd_device* %67, %struct.lcd_device** %69, align 8
  %70 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 8)
  %71 = load i32, i32* @BACKLIGHT_RAW, align 4
  %72 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %74 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 1
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 1
  %79 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %80 = call %struct.lcd_device* @devm_backlight_device_register(i32* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %78, %struct.ams369fg06* %79, i32* @ams369fg06_backlight_ops, %struct.backlight_properties* %8)
  %81 = bitcast %struct.lcd_device* %80 to %struct.backlight_device*
  store %struct.backlight_device* %81, %struct.backlight_device** %7, align 8
  %82 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %83 = bitcast %struct.backlight_device* %82 to %struct.lcd_device*
  %84 = call i64 @IS_ERR(%struct.lcd_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %66
  %87 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %88 = bitcast %struct.backlight_device* %87 to %struct.lcd_device*
  %89 = call i32 @PTR_ERR(%struct.lcd_device* %88)
  store i32 %89, i32* %2, align 4
  br label %123

90:                                               ; preds = %66
  %91 = load i32, i32* @DEFAULT_BRIGHTNESS, align 4
  %92 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %93 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %96 = bitcast %struct.backlight_device* %95 to %struct.lcd_device*
  %97 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %98 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %97, i32 0, i32 2
  store %struct.lcd_device* %96, %struct.lcd_device** %98, align 8
  %99 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %100 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %107 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %108 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %110 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %111 = call i32 @ams369fg06_power(%struct.ams369fg06* %109, i32 %110)
  br label %116

112:                                              ; preds = %90
  %113 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %114 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %115 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %105
  %117 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %118 = load %struct.ams369fg06*, %struct.ams369fg06** %5, align 8
  %119 = call i32 @spi_set_drvdata(%struct.spi_device* %117, %struct.ams369fg06* %118)
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 1
  %122 = call i32 @dev_info(i32* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %116, %86, %63, %47, %25, %15
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.ams369fg06* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @dev_get_platdata(i32*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(i32*, i8*, i32*, %struct.ams369fg06*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.lcd_device* @devm_backlight_device_register(i32*, i8*, i32*, %struct.ams369fg06*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @ams369fg06_power(%struct.ams369fg06*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ams369fg06*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
