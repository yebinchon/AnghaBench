; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_toshiba_bt_rfkill_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_toshiba_bt_rfkill_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.toshiba_bluetooth_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @toshiba_bt_rfkill_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_bt_rfkill_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.toshiba_bluetooth_dev*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.toshiba_bluetooth_dev* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.toshiba_bluetooth_dev* %7, %struct.toshiba_bluetooth_dev** %5, align 8
  %8 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %5, align 8
  %9 = call i64 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %5, align 8
  %14 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %5, align 8
  %17 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @rfkill_set_hw_state(i32 %15, i32 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.toshiba_bluetooth_dev* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i64 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev*) #1

declare dso_local i32 @rfkill_set_hw_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
