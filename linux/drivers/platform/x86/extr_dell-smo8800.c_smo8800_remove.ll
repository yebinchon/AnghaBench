; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smo8800.c_smo8800_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smo8800.c_smo8800_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.smo8800_device* }
%struct.smo8800_device = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"device /dev/freefall unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @smo8800_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smo8800_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.smo8800_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1
  %6 = load %struct.smo8800_device*, %struct.smo8800_device** %5, align 8
  store %struct.smo8800_device* %6, %struct.smo8800_device** %3, align 8
  %7 = load %struct.smo8800_device*, %struct.smo8800_device** %3, align 8
  %8 = getelementptr inbounds %struct.smo8800_device, %struct.smo8800_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smo8800_device*, %struct.smo8800_device** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.smo8800_device* %10)
  %12 = load %struct.smo8800_device*, %struct.smo8800_device** %3, align 8
  %13 = getelementptr inbounds %struct.smo8800_device, %struct.smo8800_device* %12, i32 0, i32 0
  %14 = call i32 @misc_deregister(i32* %13)
  %15 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @free_irq(i32, %struct.smo8800_device*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
