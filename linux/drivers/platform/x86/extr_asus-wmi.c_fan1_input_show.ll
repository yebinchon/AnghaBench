; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asus_wmi = type { i32, i32 }

@ASUS_WMI_DEVID_CPU_FAN_CTRL = common dso_local global i32 0, align 4
@ASUS_FAN_CTRL_MANUAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reading fan speed failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %14 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %47 [
    i32 128, label %16
    i32 129, label %27
  ]

16:                                               ; preds = %3
  %17 = load %struct.asus_wmi*, %struct.asus_wmi** %8, align 8
  %18 = load i32, i32* @ASUS_WMI_DEVID_CPU_FAN_CTRL, align 4
  %19 = call i32 @asus_wmi_get_devstate(%struct.asus_wmi* %17, i32 %18, i32* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 65535
  store i32 %26, i32* %9, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load %struct.asus_wmi*, %struct.asus_wmi** %8, align 8
  %29 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ASUS_FAN_CTRL_MANUAL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %27
  %37 = load %struct.asus_wmi*, %struct.asus_wmi** %8, align 8
  %38 = call i32 @asus_agfn_fan_speed_read(%struct.asus_wmi* %37, i32 1, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %61

46:                                               ; preds = %36
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %46, %24
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 100
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i32 [ -1, %54 ], [ %57, %55 ]
  %60 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %47, %41, %33, %22
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.asus_wmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @asus_wmi_get_devstate(%struct.asus_wmi*, i32, i32*) #1

declare dso_local i32 @asus_agfn_fan_speed_read(%struct.asus_wmi*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
