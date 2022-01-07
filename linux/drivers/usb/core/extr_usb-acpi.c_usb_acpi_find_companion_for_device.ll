; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_find_companion_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_find_companion_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.usb_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_port = type { i32 }
%struct.usb_hub = type { %struct.usb_port** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (%struct.usb_device*)* @usb_acpi_find_companion_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @usb_acpi_find_companion_for_device(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.usb_port*, align 8
  %6 = alloca %struct.usb_hub*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.acpi_device* @ACPI_COMPANION(i32 %15)
  store %struct.acpi_device* %16, %struct.acpi_device** %4, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %18 = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %17, i32 0, i32 0)
  store %struct.acpi_device* %18, %struct.acpi_device** %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.usb_hub* @usb_hub_to_struct_hub(i32 %22)
  store %struct.usb_hub* %23, %struct.usb_hub** %6, align 8
  %24 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %25 = icmp ne %struct.usb_hub* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %29 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %28, i32 0, i32 0
  %30 = load %struct.usb_port**, %struct.usb_port*** %29, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %30, i64 %35
  %37 = load %struct.usb_port*, %struct.usb_port** %36, align 8
  store %struct.usb_port* %37, %struct.usb_port** %5, align 8
  %38 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %39 = call %struct.acpi_device* @usb_acpi_get_companion_for_port(%struct.usb_port* %38)
  store %struct.acpi_device* %39, %struct.acpi_device** %2, align 8
  br label %40

40:                                               ; preds = %27, %26, %11
  %41 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %41
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32) #1

declare dso_local %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device*, i32, i32) #1

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(i32) #1

declare dso_local %struct.acpi_device* @usb_acpi_get_companion_for_port(%struct.usb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
