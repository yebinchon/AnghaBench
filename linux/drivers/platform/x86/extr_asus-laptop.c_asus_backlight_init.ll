; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { %struct.backlight_device*, %struct.TYPE_3__*, i32 }
%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@METHOD_BRIGHTNESS_GET = common dso_local global i32 0, align 4
@METHOD_BRIGHTNESS_SET = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@ASUS_LAPTOP_FILE = common dso_local global i32 0, align 4
@asusbl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not register asus backlight device\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @asus_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_backlight_init(%struct.asus_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.backlight_properties, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  %6 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %7 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @METHOD_BRIGHTNESS_GET, align 4
  %10 = call i64 @acpi_check_handle(i32 %8, i32 %9, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %14 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @METHOD_BRIGHTNESS_SET, align 4
  %17 = call i64 @acpi_check_handle(i32 %15, i32 %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %56

20:                                               ; preds = %12
  %21 = call i32 @memset(%struct.backlight_properties* %5, i32 0, i32 8)
  %22 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i32 15, i32* %22, align 4
  %23 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %24 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ASUS_LAPTOP_FILE, align 4
  %26 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %27 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %31 = call %struct.backlight_device* @backlight_device_register(i32 %25, i32* %29, %struct.asus_laptop* %30, i32* @asusbl_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %31, %struct.backlight_device** %4, align 8
  %32 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %33 = call i64 @IS_ERR(%struct.backlight_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %38 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %37, i32 0, i32 0
  store %struct.backlight_device* null, %struct.backlight_device** %38, align 8
  %39 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %40 = call i32 @PTR_ERR(%struct.backlight_device* %39)
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %20
  %42 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %43 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %44 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %43, i32 0, i32 0
  store %struct.backlight_device* %42, %struct.backlight_device** %44, align 8
  %45 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %46 = call i32 @asus_read_brightness(%struct.backlight_device* %45)
  %47 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %48 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %51 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %52 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %55 = call i32 @backlight_update_status(%struct.backlight_device* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %35, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @acpi_check_handle(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, i32*, %struct.asus_laptop*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @asus_read_brightness(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
