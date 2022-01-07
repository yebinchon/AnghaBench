; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_alloc_irq_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_alloc_irq_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MR_BALANCED_PERF_MODE = common dso_local global i64 0, align 8
@MR_LATENCY_PERF_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"requested/available msix %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_alloc_irq_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_alloc_irq_vectors(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %6 = call i32 @__megasas_alloc_irq_vectors(%struct.megasas_instance* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MR_BALANCED_PERF_MODE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @pci_free_irq_vectors(%struct.TYPE_2__* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i64, i64* @MR_LATENCY_PERF_MODE, align 8
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %31 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = call i32 (...) @num_online_cpus()
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @min(i32 %39, i32 %42)
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %47 = call i32 @__megasas_alloc_irq_vectors(%struct.megasas_instance* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %28, %12, %1
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %50 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %54 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %63 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %67

64:                                               ; preds = %48
  %65 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %66 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %69 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %74 = call i32 @megasas_set_high_iops_queue_affinity_hint(%struct.megasas_instance* %73)
  br label %75

75:                                               ; preds = %72, %67
  ret void
}

declare dso_local i32 @__megasas_alloc_irq_vectors(%struct.megasas_instance*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.TYPE_2__*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @megasas_set_high_iops_queue_affinity_hint(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
