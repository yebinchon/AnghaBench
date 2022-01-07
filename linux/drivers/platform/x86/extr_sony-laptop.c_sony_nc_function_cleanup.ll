; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_function_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_function_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.platform_device = type { i32 }

@handles = common dso_local global %struct.TYPE_2__* null, align 8
@sony_nc_acpi_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SN01\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SN03\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @sony_nc_function_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_nc_function_cleanup(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %82

10:                                               ; preds = %1
  %11 = load i32, i32* @sony_nc_acpi_handle, align 4
  %12 = call i32 @sony_nc_int_call(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* %5)
  %13 = load i32, i32* @sony_nc_acpi_handle, align 4
  %14 = call i32 @sony_nc_int_call(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %4)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %76, %10
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %79

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %76

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %74 [
    i32 261, label %35
    i32 328, label %35
    i32 277, label %38
    i32 310, label %38
    i32 319, label %38
    i32 281, label %41
    i32 349, label %41
    i32 290, label %44
    i32 296, label %47
    i32 326, label %47
    i32 347, label %47
    i32 305, label %50
    i32 292, label %53
    i32 309, label %53
    i32 311, label %55
    i32 323, label %55
    i32 331, label %55
    i32 332, label %55
    i32 339, label %55
    i32 355, label %55
    i32 289, label %59
    i32 329, label %62
    i32 341, label %65
    i32 285, label %68
    i32 360, label %71
  ]

35:                                               ; preds = %33, %33
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = call i32 @sony_nc_touchpad_cleanup(%struct.platform_device* %36)
  br label %75

38:                                               ; preds = %33, %33, %33
  %39 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %40 = call i32 @sony_nc_battery_care_cleanup(%struct.platform_device* %39)
  br label %75

41:                                               ; preds = %33, %33
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = call i32 @sony_nc_lid_resume_cleanup(%struct.platform_device* %42)
  br label %75

44:                                               ; preds = %33
  %45 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %46 = call i32 @sony_nc_thermal_cleanup(%struct.platform_device* %45)
  br label %75

47:                                               ; preds = %33, %33, %33
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = call i32 @sony_nc_gfx_switch_cleanup(%struct.platform_device* %48)
  br label %75

50:                                               ; preds = %33
  %51 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %52 = call i32 @sony_nc_highspeed_charging_cleanup(%struct.platform_device* %51)
  br label %75

53:                                               ; preds = %33, %33
  %54 = call i32 (...) @sony_nc_rfkill_cleanup()
  br label %75

55:                                               ; preds = %33, %33, %33, %33, %33, %33
  %56 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @sony_nc_kbd_backlight_cleanup(%struct.platform_device* %56, i32 %57)
  br label %75

59:                                               ; preds = %33
  %60 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %61 = call i32 @sony_nc_lowbatt_cleanup(%struct.platform_device* %60)
  br label %75

62:                                               ; preds = %33
  %63 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %64 = call i32 @sony_nc_fanspeed_cleanup(%struct.platform_device* %63)
  br label %75

65:                                               ; preds = %33
  %66 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %67 = call i32 @sony_nc_usb_charge_cleanup(%struct.platform_device* %66)
  br label %75

68:                                               ; preds = %33
  %69 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %70 = call i32 @sony_nc_panelid_cleanup(%struct.platform_device* %69)
  br label %75

71:                                               ; preds = %33
  %72 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %73 = call i32 @sony_nc_smart_conn_cleanup(%struct.platform_device* %72)
  br label %75

74:                                               ; preds = %33
  br label %76

75:                                               ; preds = %71, %68, %65, %62, %59, %55, %53, %50, %47, %44, %41, %38, %35
  br label %76

76:                                               ; preds = %75, %74, %32
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %15

79:                                               ; preds = %15
  %80 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %81 = call i32 @sony_nc_handles_cleanup(%struct.platform_device* %80)
  br label %82

82:                                               ; preds = %79, %9
  ret void
}

declare dso_local i32 @sony_nc_int_call(i32, i8*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sony_nc_touchpad_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_battery_care_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_lid_resume_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_thermal_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_gfx_switch_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_highspeed_charging_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_rfkill_cleanup(...) #1

declare dso_local i32 @sony_nc_kbd_backlight_cleanup(%struct.platform_device*, i32) #1

declare dso_local i32 @sony_nc_lowbatt_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_fanspeed_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_usb_charge_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_panelid_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_smart_conn_cleanup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_handles_cleanup(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
