; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_probe_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_probe_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ili9320_client = type { i32 }
%struct.ili9320_platdata = type { i64, i64, i32* }
%struct.ili9320 = type { %struct.lcd_device*, %struct.ili9320_platdata*, i32, %struct.ili9320_client*, %struct.device*, %struct.TYPE_4__ }
%struct.lcd_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid platform data supplied\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ILI9320_SPI_IDCODE = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ili9320\00", align 1
@ili9320_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to register lcd device\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"initialising %s\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to set lcd power state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ili9320_probe_spi(%struct.spi_device* %0, %struct.ili9320_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.ili9320_client*, align 8
  %6 = alloca %struct.ili9320_platdata*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ili9320*, align 8
  %9 = alloca %struct.lcd_device*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.ili9320_client* %1, %struct.ili9320_client** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call %struct.ili9320_platdata* @dev_get_platdata(%struct.device* %12)
  store %struct.ili9320_platdata* %13, %struct.ili9320_platdata** %6, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %6, align 8
  %17 = icmp eq %struct.ili9320_platdata* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %111

23:                                               ; preds = %2
  %24 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %6, align 8
  %25 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %6, align 8
  %30 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %6, align 8
  %35 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %28, %23
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %111

43:                                               ; preds = %33
  %44 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.ili9320* @devm_kzalloc(%struct.device* %45, i32 48, i32 %46)
  store %struct.ili9320* %47, %struct.ili9320** %8, align 8
  %48 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %49 = icmp eq %struct.ili9320* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %111

53:                                               ; preds = %43
  %54 = load i32, i32* @ILI9320_SPI_IDCODE, align 4
  %55 = call i32 @ILI9320_SPI_ID(i32 1)
  %56 = or i32 %54, %55
  %57 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %58 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %63 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %62, i32 0, i32 4
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = load %struct.ili9320_client*, %struct.ili9320_client** %5, align 8
  %65 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %66 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %65, i32 0, i32 3
  store %struct.ili9320_client* %64, %struct.ili9320_client** %66, align 8
  %67 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %68 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %69 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %6, align 8
  %71 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %72 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %71, i32 0, i32 1
  store %struct.ili9320_platdata* %70, %struct.ili9320_platdata** %72, align 8
  %73 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %74 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %75 = call i32 @spi_set_drvdata(%struct.spi_device* %73, %struct.ili9320* %74)
  %76 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %77 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %78 = call i32 @ili9320_setup_spi(%struct.ili9320* %76, %struct.spi_device* %77)
  %79 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %83 = call %struct.lcd_device* @devm_lcd_device_register(%struct.device* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.device* %81, %struct.ili9320* %82, i32* @ili9320_ops)
  store %struct.lcd_device* %83, %struct.lcd_device** %9, align 8
  %84 = load %struct.lcd_device*, %struct.lcd_device** %9, align 8
  %85 = call i64 @IS_ERR(%struct.lcd_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %53
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.lcd_device*, %struct.lcd_device** %9, align 8
  %91 = call i32 @PTR_ERR(%struct.lcd_device* %90)
  store i32 %91, i32* %3, align 4
  br label %111

92:                                               ; preds = %53
  %93 = load %struct.lcd_device*, %struct.lcd_device** %9, align 8
  %94 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %95 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %94, i32 0, i32 0
  store %struct.lcd_device* %93, %struct.lcd_device** %95, align 8
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = load %struct.ili9320_client*, %struct.ili9320_client** %5, align 8
  %98 = getelementptr inbounds %struct.ili9320_client, %struct.ili9320_client* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_info(%struct.device* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.ili9320*, %struct.ili9320** %8, align 8
  %102 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %103 = call i32 @ili9320_power(%struct.ili9320* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %111

110:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106, %87, %50, %38, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.ili9320_platdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.ili9320* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ILI9320_SPI_ID(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ili9320*) #1

declare dso_local i32 @ili9320_setup_spi(%struct.ili9320*, %struct.spi_device*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(%struct.device*, i8*, %struct.device*, %struct.ili9320*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @ili9320_power(%struct.ili9320*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
