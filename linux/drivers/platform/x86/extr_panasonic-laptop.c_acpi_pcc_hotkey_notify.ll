; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_hotkey_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_hotkey_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.pcc_acpi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_pcc_hotkey_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pcc_hotkey_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcc_acpi*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.pcc_acpi* %7, %struct.pcc_acpi** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %12 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.pcc_acpi*, %struct.pcc_acpi** %5, align 8
  %11 = call i32 @acpi_pcc_generate_keyinput(%struct.pcc_acpi* %10)
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_pcc_generate_keyinput(%struct.pcc_acpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
