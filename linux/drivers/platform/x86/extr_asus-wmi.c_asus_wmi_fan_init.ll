; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_fan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_fan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i64, i32, i32 }

@FAN_TYPE_NONE = common dso_local global i64 0, align 8
@ASUS_WMI_DEVID_CPU_FAN_CTRL = common dso_local global i32 0, align 4
@FAN_TYPE_SPEC83 = common dso_local global i64 0, align 8
@FAN_TYPE_AGFN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ASUS_FAN_CTRL_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_fan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_fan_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  %4 = load i64, i64* @FAN_TYPE_NONE, align 8
  %5 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %6 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 1
  store i32 -1, i32* %8, align 8
  %9 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %10 = load i32, i32* @ASUS_WMI_DEVID_CPU_FAN_CTRL, align 4
  %11 = call i64 @asus_wmi_dev_is_present(%struct.asus_wmi* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i64, i64* @FAN_TYPE_SPEC83, align 8
  %15 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %16 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %19 = call i64 @asus_wmi_has_agfn_fan(%struct.asus_wmi* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @FAN_TYPE_AGFN, align 8
  %23 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %24 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %28 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FAN_TYPE_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %26
  %36 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %37 = call i32 @asus_fan_set_auto(%struct.asus_wmi* %36)
  %38 = load i32, i32* @ASUS_FAN_CTRL_AUTO, align 4
  %39 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %40 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @asus_wmi_dev_is_present(%struct.asus_wmi*, i32) #1

declare dso_local i64 @asus_wmi_has_agfn_fan(%struct.asus_wmi*) #1

declare dso_local i32 @asus_fan_set_auto(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
