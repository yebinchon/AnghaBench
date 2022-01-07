; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xiaomi-wmi.c_xiaomi_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xiaomi-wmi.c_xiaomi_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%union.acpi_object = type { i32 }
%struct.xiaomi_wmi = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xiaomi_wmi_notify(%struct.wmi_device* %0, %union.acpi_object* %1) #0 {
  %3 = alloca %struct.wmi_device*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.xiaomi_wmi*, align 8
  store %struct.wmi_device* %0, %struct.wmi_device** %3, align 8
  store %union.acpi_object* %1, %union.acpi_object** %4, align 8
  %6 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %7 = icmp eq %struct.wmi_device* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %39

9:                                                ; preds = %2
  %10 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %11 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %10, i32 0, i32 0
  %12 = call %struct.xiaomi_wmi* @dev_get_drvdata(i32* %11)
  store %struct.xiaomi_wmi* %12, %struct.xiaomi_wmi** %5, align 8
  %13 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %14 = icmp eq %struct.xiaomi_wmi* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %39

16:                                               ; preds = %9
  %17 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %18 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %21 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @input_report_key(i32 %19, i32 %22, i32 1)
  %24 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %25 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @input_sync(i32 %26)
  %28 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %29 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %32 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_report_key(i32 %30, i32 %33, i32 0)
  %35 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %5, align 8
  %36 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @input_sync(i32 %37)
  br label %39

39:                                               ; preds = %16, %15, %8
  ret void
}

declare dso_local %struct.xiaomi_wmi* @dev_get_drvdata(i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
