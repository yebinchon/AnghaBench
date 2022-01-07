; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, %struct.spi_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.corgi_lcd_platform_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"platform data not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"corgi_lcd\00", align 1
@corgi_lcd_ops = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@CORGI_LCD_MODE_VGA = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"corgi_bl\00", align 1
@corgi_bl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@the_corgi_lcd = common dso_local global %struct.corgi_lcd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @corgi_lcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgi_lcd_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.corgi_lcd_platform_data*, align 8
  %6 = alloca %struct.corgi_lcd*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.corgi_lcd_platform_data* @dev_get_platdata(i32* %9)
  store %struct.corgi_lcd_platform_data* %10, %struct.corgi_lcd_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %12 = icmp eq %struct.corgi_lcd_platform_data* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.corgi_lcd* @devm_kzalloc(i32* %21, i32 48, i32 %22)
  store %struct.corgi_lcd* %23, %struct.corgi_lcd** %6, align 8
  %24 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %25 = icmp ne %struct.corgi_lcd* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %19
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %32 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %31, i32 0, i32 6
  store %struct.spi_device* %30, %struct.spi_device** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %38 = call %struct.TYPE_9__* @devm_lcd_device_register(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %36, %struct.corgi_lcd* %37, i32* @corgi_lcd_ops)
  %39 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %40 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %39, i32 0, i32 2
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %40, align 8
  %41 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %42 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i64 @IS_ERR(%struct.TYPE_9__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %48 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.TYPE_9__* %49)
  store i32 %50, i32* %2, align 4
  br label %138

51:                                               ; preds = %29
  %52 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %53 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %54 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %56 = icmp ne %struct.corgi_lcd_platform_data* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @CORGI_LCD_MODE_VGA, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %60, %57 ], [ %62, %61 ]
  %65 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %66 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %68 = load i32, i32* @BACKLIGHT_RAW, align 4
  %69 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %71 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %79 = call %struct.TYPE_9__* @devm_backlight_device_register(i32* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %77, %struct.corgi_lcd* %78, i32* @corgi_bl_ops, %struct.backlight_properties* %4)
  %80 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %81 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %80, i32 0, i32 1
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  %82 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %83 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i64 @IS_ERR(%struct.TYPE_9__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %63
  %88 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %89 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.TYPE_9__* %90)
  store i32 %91, i32* %2, align 4
  br label %138

92:                                               ; preds = %63
  %93 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %94 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %97 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 %95, i32* %100, align 4
  %101 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %102 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %103 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  %107 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %108 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %109 = call i32 @setup_gpio_backlight(%struct.corgi_lcd* %107, %struct.corgi_lcd_platform_data* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %92
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %138

114:                                              ; preds = %92
  %115 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %116 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %119 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %122 = call i32 @spi_set_drvdata(%struct.spi_device* %120, %struct.corgi_lcd* %121)
  %123 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %124 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %123, i32 0, i32 2
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %127 = call i32 @corgi_lcd_set_power(%struct.TYPE_9__* %125, i32 %126)
  %128 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %129 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = call i32 @backlight_update_status(%struct.TYPE_9__* %130)
  %132 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %133 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %136 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  store %struct.corgi_lcd* %137, %struct.corgi_lcd** @the_corgi_lcd, align 8
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %114, %112, %87, %46, %26, %13
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.corgi_lcd_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.corgi_lcd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_lcd_device_register(i32*, i8*, i32*, %struct.corgi_lcd*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_backlight_device_register(i32*, i8*, i32*, %struct.corgi_lcd*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @setup_gpio_backlight(%struct.corgi_lcd*, %struct.corgi_lcd_platform_data*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.corgi_lcd*) #1

declare dso_local i32 @corgi_lcd_set_power(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
