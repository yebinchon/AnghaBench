; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smo8800.c_smo8800_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smo8800.c_smo8800_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }

@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@smo8800_get_resource = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"acpi_walk_resources failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @smo8800_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smo8800_get_irq(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @METHOD_NAME__CRS, align 4
  %10 = load i32, i32* @smo8800_get_resource, align 4
  %11 = call i32 @acpi_walk_resources(i32 %8, i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
