; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_find_companion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_find_companion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (%struct.device*)* @usb_acpi_find_companion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @usb_acpi_find_companion(%struct.device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %4 = load %struct.device*, %struct.device** %3, align 8
  %5 = call i64 @is_usb_device(%struct.device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @to_usb_device(%struct.device* %8)
  %10 = call %struct.acpi_device* @usb_acpi_find_companion_for_device(i32 %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i64 @is_usb_port(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @to_usb_port(%struct.device* %16)
  %18 = call %struct.acpi_device* @usb_acpi_find_companion_for_port(i32 %17)
  store %struct.acpi_device* %18, %struct.acpi_device** %2, align 8
  br label %21

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  br label %21

21:                                               ; preds = %20, %15, %7
  %22 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %22
}

declare dso_local i64 @is_usb_device(%struct.device*) #1

declare dso_local %struct.acpi_device* @usb_acpi_find_companion_for_device(i32) #1

declare dso_local i32 @to_usb_device(%struct.device*) #1

declare dso_local i64 @is_usb_port(%struct.device*) #1

declare dso_local %struct.acpi_device* @usb_acpi_find_companion_for_port(i32) #1

declare dso_local i32 @to_usb_port(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
