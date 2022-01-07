; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.rbtn_data* }
%struct.rbtn_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @rbtn_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtn_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.rbtn_data*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 0
  %6 = load %struct.rbtn_data*, %struct.rbtn_data** %5, align 8
  store %struct.rbtn_data* %6, %struct.rbtn_data** %3, align 8
  %7 = load %struct.rbtn_data*, %struct.rbtn_data** %3, align 8
  %8 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 128, label %10
    i32 129, label %13
  ]

10:                                               ; preds = %1
  %11 = load %struct.rbtn_data*, %struct.rbtn_data** %3, align 8
  %12 = call i32 @rbtn_input_exit(%struct.rbtn_data* %11)
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %15 = call i32 @rbtn_rfkill_exit(%struct.acpi_device* %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13, %10
  %18 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %19 = call i32 @rbtn_acquire(%struct.acpi_device* %18, i32 0)
  %20 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  store %struct.rbtn_data* null, %struct.rbtn_data** %21, align 8
  ret i32 0
}

declare dso_local i32 @rbtn_input_exit(%struct.rbtn_data*) #1

declare dso_local i32 @rbtn_rfkill_exit(%struct.acpi_device*) #1

declare dso_local i32 @rbtn_acquire(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
