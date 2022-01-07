; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_update_bl_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_update_bl_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.asus_wmi = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_BACKLIGHT = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @update_bl_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_bl_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.asus_wmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.asus_wmi* @bl_get_data(%struct.backlight_device* %8)
  store %struct.asus_wmi* %9, %struct.asus_wmi** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %11 = call i32 @read_backlight_power(%struct.asus_wmi* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %1
  %17 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ASUS_WMI_DEVID_BACKLIGHT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @asus_wmi_set_devstate(i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %37 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %23
  %45 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %46 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %50 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  br label %53

53:                                               ; preds = %44, %23
  %54 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %55 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %16, %1
  %66 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %67 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %76 = call i32 @get_scalar_command(%struct.backlight_device* %75)
  store i32 %76, i32* %5, align 4
  br label %82

77:                                               ; preds = %65
  %78 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %79 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* @ASUS_WMI_DEVID_BRIGHTNESS, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @asus_wmi_set_devstate(i32 %83, i32 %84, i32* null)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %62
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.asus_wmi* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @read_backlight_power(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_set_devstate(i32, i32, i32*) #1

declare dso_local i32 @get_scalar_command(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
