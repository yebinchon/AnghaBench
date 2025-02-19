; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_wq_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_rpc.c_wq_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_wait_queue = type { i32 }
%struct.wq_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optee_wait_queue*, i32)* @wq_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_sleep(%struct.optee_wait_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.optee_wait_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wq_entry*, align 8
  store %struct.optee_wait_queue* %0, %struct.optee_wait_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.optee_wait_queue*, %struct.optee_wait_queue** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.wq_entry* @wq_entry_get(%struct.optee_wait_queue* %6, i32 %7)
  store %struct.wq_entry* %8, %struct.wq_entry** %5, align 8
  %9 = load %struct.wq_entry*, %struct.wq_entry** %5, align 8
  %10 = icmp ne %struct.wq_entry* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.wq_entry*, %struct.wq_entry** %5, align 8
  %13 = getelementptr inbounds %struct.wq_entry, %struct.wq_entry* %12, i32 0, i32 1
  %14 = call i32 @wait_for_completion(i32* %13)
  %15 = load %struct.optee_wait_queue*, %struct.optee_wait_queue** %3, align 8
  %16 = getelementptr inbounds %struct.optee_wait_queue, %struct.optee_wait_queue* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.wq_entry*, %struct.wq_entry** %5, align 8
  %19 = getelementptr inbounds %struct.wq_entry, %struct.wq_entry* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.optee_wait_queue*, %struct.optee_wait_queue** %3, align 8
  %22 = getelementptr inbounds %struct.optee_wait_queue, %struct.optee_wait_queue* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.wq_entry*, %struct.wq_entry** %5, align 8
  %25 = call i32 @kfree(%struct.wq_entry* %24)
  br label %26

26:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.wq_entry* @wq_entry_get(%struct.optee_wait_queue*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.wq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
