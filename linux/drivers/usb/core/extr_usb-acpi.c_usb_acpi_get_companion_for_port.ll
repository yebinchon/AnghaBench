; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_get_companion_for_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_get_companion_for_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.usb_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (%struct.usb_port*)* @usb_acpi_get_companion_for_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @usb_acpi_get_companion_for_port(%struct.usb_port* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.usb_port*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_port* %0, %struct.usb_port** %3, align 8
  %8 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %9 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.usb_device* @to_usb_device(i32 %13)
  store %struct.usb_device* %14, %struct.usb_device** %4, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 3
  %22 = call %struct.acpi_device* @ACPI_COMPANION(i32* %21)
  store %struct.acpi_device* %22, %struct.acpi_device** %5, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_to_hcd(i32 %25)
  %27 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %28 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_hcd_find_raw_port_number(i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %48

31:                                               ; preds = %1
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @usb_get_hub_port_acpi_handle(i32 %34, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  br label %52

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @acpi_bus_get_device(i32* %43, %struct.acpi_device** %5)
  %45 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %46 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %19
  %49 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.acpi_device* @usb_acpi_find_port(%struct.acpi_device* %49, i32 %50)
  store %struct.acpi_device* %51, %struct.acpi_device** %2, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %53
}

declare dso_local %struct.usb_device* @to_usb_device(i32) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @usb_hcd_find_raw_port_number(i32, i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local i32* @usb_get_hub_port_acpi_handle(i32, i32) #1

declare dso_local i32 @acpi_bus_get_device(i32*, %struct.acpi_device**) #1

declare dso_local %struct.acpi_device* @usb_acpi_find_port(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
