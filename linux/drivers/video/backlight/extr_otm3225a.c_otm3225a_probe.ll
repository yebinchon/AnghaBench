; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_otm3225a.c_otm3225a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_otm3225a.c_otm3225a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.otm3225a_data = type { %struct.lcd_device*, %struct.spi_device* }
%struct.lcd_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@otm3225a_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Initializing and switching to RGB interface\00", align 1
@display_init = common dso_local global i32 0, align 4
@display_enable_rgb_interface = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @otm3225a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm3225a_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.otm3225a_data*, align 8
  %5 = alloca %struct.lcd_device*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.otm3225a_data* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.otm3225a_data* %11, %struct.otm3225a_data** %4, align 8
  %12 = load %struct.otm3225a_data*, %struct.otm3225a_data** %4, align 8
  %13 = icmp eq %struct.otm3225a_data* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_name(%struct.device* %19)
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.otm3225a_data*, %struct.otm3225a_data** %4, align 8
  %23 = call %struct.lcd_device* @devm_lcd_device_register(%struct.device* %18, i32 %20, %struct.device* %21, %struct.otm3225a_data* %22, i32* @otm3225a_ops)
  store %struct.lcd_device* %23, %struct.lcd_device** %5, align 8
  %24 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %25 = call i64 @IS_ERR(%struct.lcd_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.lcd_device* %28)
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %17
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.otm3225a_data*, %struct.otm3225a_data** %4, align 8
  %33 = getelementptr inbounds %struct.otm3225a_data, %struct.otm3225a_data* %32, i32 0, i32 1
  store %struct.spi_device* %31, %struct.spi_device** %33, align 8
  %34 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  %35 = load %struct.otm3225a_data*, %struct.otm3225a_data** %4, align 8
  %36 = getelementptr inbounds %struct.otm3225a_data, %struct.otm3225a_data* %35, i32 0, i32 0
  store %struct.lcd_device* %34, %struct.lcd_device** %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.otm3225a_data*, %struct.otm3225a_data** %4, align 8
  %39 = call i32 @dev_set_drvdata(%struct.device* %37, %struct.otm3225a_data* %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_info(%struct.device* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = load i32, i32* @display_init, align 4
  %44 = load i32, i32* @display_init, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @otm3225a_write(%struct.spi_device* %42, i32 %43, i32 %45)
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = load i32, i32* @display_enable_rgb_interface, align 4
  %49 = load i32, i32* @display_enable_rgb_interface, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @otm3225a_write(%struct.spi_device* %47, i32 %48, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %30, %27, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.otm3225a_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(%struct.device*, i32, %struct.device*, %struct.otm3225a_data*, i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.otm3225a_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @otm3225a_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
