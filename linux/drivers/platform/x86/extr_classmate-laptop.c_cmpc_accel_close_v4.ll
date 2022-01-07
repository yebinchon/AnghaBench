; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_close_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_close_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.cmpc_accel = type { i32 }

@CMPC_ACCEL_DEV_STATE_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @cmpc_accel_close_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpc_accel_close_v4(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.cmpc_accel*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.acpi_device* @to_acpi_device(i32 %8)
  store %struct.acpi_device* %9, %struct.acpi_device** %3, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0
  %12 = call %struct.cmpc_accel* @dev_get_drvdata(%struct.TYPE_2__* %11)
  store %struct.cmpc_accel* %12, %struct.cmpc_accel** %4, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cmpc_stop_accel_v4(i32 %15)
  %17 = load i32, i32* @CMPC_ACCEL_DEV_STATE_CLOSED, align 4
  %18 = load %struct.cmpc_accel*, %struct.cmpc_accel** %4, align 8
  %19 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local %struct.acpi_device* @to_acpi_device(i32) #1

declare dso_local %struct.cmpc_accel* @dev_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @cmpc_stop_accel_v4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
