; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_hwmon_temp1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_hwmon_temp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asus_wmi = type { i32 }

@ASUS_WMI_DEVID_THERMAL_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @asus_hwmon_temp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_hwmon_temp1(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.asus_wmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.asus_wmi* @dev_get_drvdata(%struct.device* %11)
  store %struct.asus_wmi* %12, %struct.asus_wmi** %8, align 8
  %13 = load %struct.asus_wmi*, %struct.asus_wmi** %8, align 8
  %14 = load i32, i32* @ASUS_WMI_DEVID_THERMAL_CTRL, align 4
  %15 = call i32 @asus_wmi_get_devstate(%struct.asus_wmi* %13, i32 %14, i32* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 65535
  %23 = call i32 @DECI_KELVIN_TO_CELSIUS(i32 %22)
  %24 = mul nsw i32 %23, 1000
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.asus_wmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @asus_wmi_get_devstate(%struct.asus_wmi*, i32, i32*) #1

declare dso_local i32 @DECI_KELVIN_TO_CELSIUS(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
