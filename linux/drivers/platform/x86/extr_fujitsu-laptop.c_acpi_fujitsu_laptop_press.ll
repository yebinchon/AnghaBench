; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_laptop_press.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_laptop_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_laptop = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not push scancode [0x%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Push scancode into ringbuffer [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_fujitsu_laptop_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_fujitsu_laptop_press(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fujitsu_laptop*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.fujitsu_laptop* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.fujitsu_laptop* %8, %struct.fujitsu_laptop** %5, align 8
  %9 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %5, align 8
  %10 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %9, i32 0, i32 2
  %11 = bitcast i32* %4 to i8*
  %12 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %5, align 8
  %13 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %12, i32 0, i32 1
  %14 = call i32 @kfifo_in_locked(i32* %10, i8* %11, i32 4, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %5, align 8
  %20 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %5, align 8
  %27 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @sparse_keymap_report_event(%struct.TYPE_2__* %28, i32 %29, i32 1, i32 0)
  %31 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %5, align 8
  %32 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %25, %18
  ret void
}

declare dso_local %struct.fujitsu_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @sparse_keymap_report_event(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
