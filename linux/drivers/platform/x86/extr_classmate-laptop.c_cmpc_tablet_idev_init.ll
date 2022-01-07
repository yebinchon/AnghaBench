; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_tablet_idev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_tablet_idev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }

@EV_SW = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @cmpc_tablet_idev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpc_tablet_idev_init(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* @EV_SW, align 4
  %6 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_bit(i32 %5, i32 %8)
  %10 = load i32, i32* @SW_TABLET_MODE, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_bit(i32 %10, i32 %13)
  %15 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.acpi_device* @to_acpi_device(i32 %18)
  store %struct.acpi_device* %19, %struct.acpi_device** %4, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cmpc_get_tablet(i32 %22, i64* %3)
  %24 = call i64 @ACPI_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %28 = load i32, i32* @SW_TABLET_MODE, align 4
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @input_report_switch(%struct.input_dev* %27, i32 %28, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %35 = call i32 @input_sync(%struct.input_dev* %34)
  br label %36

36:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local %struct.acpi_device* @to_acpi_device(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @cmpc_get_tablet(i32, i64*) #1

declare dso_local i32 @input_report_switch(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
