; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_get_acpi_device_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_get_acpi_device_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wmi_get_acpi_device_uid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wmi_block*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wmi_block* null, %struct.wmi_block** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @find_guid(i8* %5, %struct.wmi_block** %4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %11 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @acpi_device_uid(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #1

declare dso_local i8* @acpi_device_uid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
