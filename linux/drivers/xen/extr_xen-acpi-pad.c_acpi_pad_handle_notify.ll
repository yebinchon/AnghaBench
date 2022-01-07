; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-pad.c_acpi_pad_handle_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-pad.c_acpi_pad_handle_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8* }

@xen_cpu_lock = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_AGGREGATOR_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_pad_handle_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pad_handle_notify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  store i32 4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  %7 = bitcast i32* %3 to i8*
  store i8* %7, i8** %6, align 8
  %8 = call i32 @mutex_lock(i32* @xen_cpu_lock)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @acpi_pad_pur(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @mutex_unlock(i32* @xen_cpu_lock)
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @xen_acpi_pad_idle_cpus(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %23

20:                                               ; preds = %15
  %21 = call i32 (...) @xen_acpi_pad_idle_cpus_num()
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i64 [ %17, %19 ], [ %22, %20 ]
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @ACPI_PROCESSOR_AGGREGATOR_NOTIFY, align 4
  %31 = call i32 @acpi_evaluate_ost(i32 %29, i32 %30, i32 0, %struct.acpi_buffer* %4)
  br label %32

32:                                               ; preds = %28, %23
  %33 = call i32 @mutex_unlock(i32* @xen_cpu_lock)
  br label %34

34:                                               ; preds = %32, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_pad_pur(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @xen_acpi_pad_idle_cpus(i32) #1

declare dso_local i32 @xen_acpi_pad_idle_cpus_num(...) #1

declare dso_local i32 @acpi_evaluate_ost(i32, i32, i32, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
