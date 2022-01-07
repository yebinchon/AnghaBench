; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.eeepc_laptop = type { i32, i32* }

@ACPI_MAX_SYS_NOTIFY = common dso_local global i32 0, align 4
@NOTIFY_BRN_MIN = common dso_local global i32 0, align 4
@NOTIFY_BRN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @eeepc_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_acpi_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeepc_laptop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call %struct.eeepc_laptop* @acpi_driver_data(%struct.acpi_device* %9)
  store %struct.eeepc_laptop* %10, %struct.eeepc_laptop** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ACPI_MAX_SYS_NOTIFY, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %17 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 128
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  store i64 %25, i64* %8, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  %32 = call i32 @dev_name(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @acpi_bus_generate_netlink_event(i32 %29, i32 %32, i32 %33, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NOTIFY_BRN_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %15
  %44 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @eeepc_input_notify(%struct.eeepc_laptop* %44, i32 %45)
  br label %76

47:                                               ; preds = %39
  %48 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %49 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %76

53:                                               ; preds = %47
  %54 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %55 = call i32 @eeepc_backlight_notify(%struct.eeepc_laptop* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  store i32 %63, i32* %4, align 4
  br label %72

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @NOTIFY_BRN_MAX, align 4
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %68
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @eeepc_input_notify(%struct.eeepc_laptop* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %52, %43, %14
  ret void
}

declare dso_local %struct.eeepc_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @eeepc_input_notify(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @eeepc_backlight_notify(%struct.eeepc_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
