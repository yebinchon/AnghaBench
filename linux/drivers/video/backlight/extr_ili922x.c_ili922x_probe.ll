; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.ili922x = type { %struct.lcd_device*, i32, %struct.spi_device* }
%struct.lcd_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_DRIVER_CODE_READ = common dso_local global i32 0, align 4
@ILITEK_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@ILITEK_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no LCD found: Chip ID 0x%x, ret %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ILI%x found, SPI freq %d, mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"reading RS failed...\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"status: 0x%x\0A\00", align 1
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ili922xlcd\00", align 1
@ili922x_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot register LCD\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ili922x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili922x_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ili922x*, align 8
  %5 = alloca %struct.lcd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ili922x* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.ili922x* %11, %struct.ili922x** %4, align 8
  %12 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %13 = icmp ne %struct.ili922x* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %20 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %19, i32 0, i32 2
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %23 = call i32 @spi_set_drvdata(%struct.spi_device* %21, %struct.ili922x* %22)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load i32, i32* @REG_DRIVER_CODE_READ, align 4
  %26 = call i32 @ili922x_read(%struct.spi_device* %24, i32 %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ILITEK_DEVICE_ID_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @ILITEK_DEVICE_ID, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29, %17
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %29
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49, i32 %52)
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = call i32 @ili922x_read_status(%struct.spi_device* %54, i32* %7)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %98

63:                                               ; preds = %43
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = call i32 @ili922x_display_init(%struct.spi_device* %68)
  %70 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %71 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %72 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %78 = call %struct.lcd_device* @devm_lcd_device_register(i32* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %76, %struct.ili922x* %77, i32* @ili922x_ops)
  store %struct.lcd_device* %78, %struct.lcd_device** %5, align 8
  %79 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %80 = call i64 @IS_ERR(%struct.lcd_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %63
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %87 = call i32 @PTR_ERR(%struct.lcd_device* %86)
  store i32 %87, i32* %2, align 4
  br label %98

88:                                               ; preds = %63
  %89 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %90 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %91 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %90, i32 0, i32 0
  store %struct.lcd_device* %89, %struct.lcd_device** %91, align 8
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %94 = call i32 @spi_set_drvdata(%struct.spi_device* %92, %struct.ili922x* %93)
  %95 = load %struct.ili922x*, %struct.ili922x** %4, align 8
  %96 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %97 = call i32 @ili922x_lcd_power(%struct.ili922x* %95, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %88, %82, %58, %35, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.ili922x* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ili922x*) #1

declare dso_local i32 @ili922x_read(%struct.spi_device*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ili922x_read_status(%struct.spi_device*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ili922x_display_init(%struct.spi_device*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(i32*, i8*, i32*, %struct.ili922x*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @ili922x_lcd_power(%struct.ili922x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
