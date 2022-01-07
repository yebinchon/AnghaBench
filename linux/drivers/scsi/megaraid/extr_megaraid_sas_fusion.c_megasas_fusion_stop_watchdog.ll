; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_fusion_stop_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_fusion_stop_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_fusion_stop_watchdog(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.workqueue_struct*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 1
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %7 = icmp ne %struct.workqueue_struct* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 1
  %11 = load %struct.workqueue_struct*, %struct.workqueue_struct** %10, align 8
  store %struct.workqueue_struct* %11, %struct.workqueue_struct** %3, align 8
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 1
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %13, align 8
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 0
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %20 = call i32 @flush_workqueue(%struct.workqueue_struct* %19)
  br label %21

21:                                               ; preds = %18, %8
  %22 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %23 = call i32 @destroy_workqueue(%struct.workqueue_struct* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
