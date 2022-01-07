; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_battery_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_battery_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"BAT0\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dev_attr_charge_control_end_threshold = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_RSOC = common dso_local global i32 0, align 4
@charge_end_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @asus_wmi_battery_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_battery_add(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strcmp(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %16 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 0
  %17 = call i64 @device_create_file(i32* %16, i32* @dev_attr_charge_control_end_threshold)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @ASUS_WMI_DEVID_RSOC, align 4
  %24 = call i32 @asus_wmi_set_devstate(i32 %23, i32 100, i32* null)
  store i32 100, i32* @charge_end_threshold, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %19, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @asus_wmi_set_devstate(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
