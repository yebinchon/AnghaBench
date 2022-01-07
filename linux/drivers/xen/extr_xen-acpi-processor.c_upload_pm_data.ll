; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-processor.c_upload_pm_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-processor.c_upload_pm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@acpi_ids_mutex = common dso_local global i32 0, align 4
@acpi_ids_done = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @upload_pm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_pm_data(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @acpi_ids_mutex)
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @acpi_ids_done, align 4
  %10 = call i64 @__test_and_set_bit(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @mutex_unlock(i32* @acpi_ids_mutex)
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %24 = call i32 @push_cxx_to_hypervisor(%struct.acpi_processor* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = call i32 @push_pxx_to_hypervisor(%struct.acpi_processor* %38)
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %30, %25
  %43 = call i32 @mutex_unlock(i32* @acpi_ids_mutex)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @push_cxx_to_hypervisor(%struct.acpi_processor*) #1

declare dso_local i32 @push_pxx_to_hypervisor(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
