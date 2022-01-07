; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_need_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_need_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.acpi_device = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ACPI_STATE_S0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @acpi_pci_need_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_need_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = call %struct.acpi_device* @ACPI_COMPANION(i32* %6)
  store %struct.acpi_device* %7, %struct.acpi_device** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i64 @pci_is_bridge(%struct.pci_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call i64 (...) @acpi_target_system_state()
  %13 = load i64, i64* @ACPI_STATE_S0, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %60

16:                                               ; preds = %11, %1
  %17 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %18 = icmp ne %struct.acpi_device* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = call i32 @acpi_device_power_manageable(%struct.acpi_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %16
  store i32 0, i32* %2, align 4
  br label %60

24:                                               ; preds = %19
  %25 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @device_may_wakeup(i32* %33)
  %35 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = icmp ne i32 %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %60

45:                                               ; preds = %31, %24
  %46 = call i64 (...) @acpi_target_system_state()
  %47 = load i64, i64* @ACPI_STATE_S0, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %60

50:                                               ; preds = %45
  %51 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %50, %49, %44, %23, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i64 @pci_is_bridge(%struct.pci_dev*) #1

declare dso_local i64 @acpi_target_system_state(...) #1

declare dso_local i32 @acpi_device_power_manageable(%struct.acpi_device*) #1

declare dso_local i32 @device_may_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
