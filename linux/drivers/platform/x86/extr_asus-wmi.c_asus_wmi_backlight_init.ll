; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { %struct.TYPE_7__*, %struct.backlight_device*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.backlight_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@asus_wmi_bl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not register backlight device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_backlight_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.backlight_properties, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  %8 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %9 = call i32 @read_brightness_max(%struct.asus_wmi* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %16 = call i32 @read_backlight_power(%struct.asus_wmi* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %91

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %21
  %30 = call i32 @memset(%struct.backlight_properties* %5, i32 0, i32 8)
  %31 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %32 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %36 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %41 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %45 = call %struct.backlight_device* @backlight_device_register(i32 %39, i32* %43, %struct.asus_wmi* %44, i32* @asus_wmi_bl_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %45, %struct.backlight_device** %4, align 8
  %46 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %47 = call i64 @IS_ERR(%struct.backlight_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %52 = call i32 @PTR_ERR(%struct.backlight_device* %51)
  store i32 %52, i32* %2, align 4
  br label %91

53:                                               ; preds = %29
  %54 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %55 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %56 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %55, i32 0, i32 1
  store %struct.backlight_device* %54, %struct.backlight_device** %56, align 8
  %57 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %58 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %68 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %73 = call i32 @read_brightness(%struct.backlight_device* %72)
  %74 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %75 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %79 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %82 = call i32 @backlight_update_status(%struct.backlight_device* %81)
  %83 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %84 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %88 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %71, %49, %26, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @read_brightness_max(%struct.asus_wmi*) #1

declare dso_local i32 @read_backlight_power(%struct.asus_wmi*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, i32*, %struct.asus_wmi*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @read_brightness(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
