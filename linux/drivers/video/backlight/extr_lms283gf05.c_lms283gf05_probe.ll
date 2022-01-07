; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms283gf05.c_lms283gf05_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms283gf05.c_lms283gf05_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.lms283gf05_state = type { %struct.lcd_device*, %struct.spi_device* }
%struct.lcd_device = type { i32 }
%struct.lms283gf05_pdata = type { i32, i32 }

@GPIOF_DIR_OUT = common dso_local global i32 0, align 4
@GPIOF_INIT_HIGH = common dso_local global i32 0, align 4
@GPIOF_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"LMS283GF05 RESET\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"lms283gf05\00", align 1
@lms_ops = common dso_local global i32 0, align 4
@disp_initseq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lms283gf05_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lms283gf05_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.lms283gf05_state*, align 8
  %5 = alloca %struct.lms283gf05_pdata*, align 8
  %6 = alloca %struct.lcd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.lms283gf05_pdata* @dev_get_platdata(i32* %9)
  store %struct.lms283gf05_pdata* %10, %struct.lms283gf05_pdata** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %5, align 8
  %12 = icmp ne %struct.lms283gf05_pdata* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %5, align 8
  %17 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GPIOF_DIR_OUT, align 4
  %20 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %5, align 8
  %21 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @GPIOF_INIT_HIGH, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @GPIOF_INIT_LOW, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = or i32 %19, %29
  %31 = call i32 @devm_gpio_request_one(i32* %15, i32 %18, i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %86

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.lms283gf05_state* @devm_kzalloc(i32* %39, i32 16, i32 %40)
  store %struct.lms283gf05_state* %41, %struct.lms283gf05_state** %4, align 8
  %42 = load %struct.lms283gf05_state*, %struct.lms283gf05_state** %4, align 8
  %43 = icmp eq %struct.lms283gf05_state* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %37
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = load %struct.lms283gf05_state*, %struct.lms283gf05_state** %4, align 8
  %53 = call %struct.lcd_device* @devm_lcd_device_register(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %51, %struct.lms283gf05_state* %52, i32* @lms_ops)
  store %struct.lcd_device* %53, %struct.lcd_device** %6, align 8
  %54 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %55 = call i64 @IS_ERR(%struct.lcd_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %59 = call i32 @PTR_ERR(%struct.lcd_device* %58)
  store i32 %59, i32* %2, align 4
  br label %86

60:                                               ; preds = %47
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = load %struct.lms283gf05_state*, %struct.lms283gf05_state** %4, align 8
  %63 = getelementptr inbounds %struct.lms283gf05_state, %struct.lms283gf05_state* %62, i32 0, i32 1
  store %struct.spi_device* %61, %struct.spi_device** %63, align 8
  %64 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %65 = load %struct.lms283gf05_state*, %struct.lms283gf05_state** %4, align 8
  %66 = getelementptr inbounds %struct.lms283gf05_state, %struct.lms283gf05_state* %65, i32 0, i32 0
  store %struct.lcd_device* %64, %struct.lcd_device** %66, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = load %struct.lms283gf05_state*, %struct.lms283gf05_state** %4, align 8
  %69 = call i32 @spi_set_drvdata(%struct.spi_device* %67, %struct.lms283gf05_state* %68)
  %70 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %5, align 8
  %71 = icmp ne %struct.lms283gf05_pdata* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %5, align 8
  %74 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.lms283gf05_pdata*, %struct.lms283gf05_pdata** %5, align 8
  %77 = getelementptr inbounds %struct.lms283gf05_pdata, %struct.lms283gf05_pdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lms283gf05_reset(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %60
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = load i32, i32* @disp_initseq, align 4
  %83 = load i32, i32* @disp_initseq, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @lms283gf05_toggle(%struct.spi_device* %81, i32 %82, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %57, %44, %34
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.lms283gf05_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local %struct.lms283gf05_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(i32*, i8*, i32*, %struct.lms283gf05_state*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.lms283gf05_state*) #1

declare dso_local i32 @lms283gf05_reset(i32, i32) #1

declare dso_local i32 @lms283gf05_toggle(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
