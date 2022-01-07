; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hub = type { %struct.usb_port** }
%struct.usb_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i8 0, align 1
@ACPI_STATE_D3_COLD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"acpi: power was set to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"acpi: power failed to be set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_acpi_set_power_state(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hub*, align 8
  %9 = alloca %struct.usb_port*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %14)
  store %struct.usb_hub* %15, %struct.usb_hub** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %21 = icmp ne %struct.usb_hub* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %27 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 0
  %28 = load %struct.usb_port**, %struct.usb_port*** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %28, i64 %31
  %33 = load %struct.usb_port*, %struct.usb_port** %32, align 8
  store %struct.usb_port* %33, %struct.usb_port** %9, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @usb_get_hub_port_acpi_handle(%struct.usb_device* %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8, i8* @ACPI_STATE_D0, align 1
  store i8 %45, i8* %11, align 1
  br label %48

46:                                               ; preds = %41
  %47 = load i8, i8* @ACPI_STATE_D3_COLD, align 1
  store i8 %47, i8* %11, align 1
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i64, i64* %10, align 8
  %50 = load i8, i8* %11, align 1
  %51 = call i32 @acpi_bus_set_power(i64 %49, i8 zeroext %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %56 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %61 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %39, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

declare dso_local i64 @usb_get_hub_port_acpi_handle(%struct.usb_device*, i32) #1

declare dso_local i32 @acpi_bus_set_power(i64, i8 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
