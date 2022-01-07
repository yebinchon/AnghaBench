; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_alloc_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_alloc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, i32 }

@sas_task_cache = common dso_local global i32 0, align 4
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_task* @sas_alloc_task(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @sas_task_cache, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.sas_task* @kmem_cache_zalloc(i32 %4, i32 %5)
  store %struct.sas_task* %6, %struct.sas_task** %3, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %8 = icmp ne %struct.sas_task* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %11 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %14 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %15 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  ret %struct.sas_task* %17
}

declare dso_local %struct.sas_task* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
