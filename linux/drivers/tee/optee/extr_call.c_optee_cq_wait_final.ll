; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_cq_wait_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_cq_wait_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_call_queue = type { i32 }
%struct.optee_call_waiter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optee_call_queue*, %struct.optee_call_waiter*)* @optee_cq_wait_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optee_cq_wait_final(%struct.optee_call_queue* %0, %struct.optee_call_waiter* %1) #0 {
  %3 = alloca %struct.optee_call_queue*, align 8
  %4 = alloca %struct.optee_call_waiter*, align 8
  store %struct.optee_call_queue* %0, %struct.optee_call_queue** %3, align 8
  store %struct.optee_call_waiter* %1, %struct.optee_call_waiter** %4, align 8
  %5 = load %struct.optee_call_queue*, %struct.optee_call_queue** %3, align 8
  %6 = getelementptr inbounds %struct.optee_call_queue, %struct.optee_call_queue* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.optee_call_waiter*, %struct.optee_call_waiter** %4, align 8
  %9 = getelementptr inbounds %struct.optee_call_waiter, %struct.optee_call_waiter* %8, i32 0, i32 1
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.optee_call_queue*, %struct.optee_call_queue** %3, align 8
  %12 = call i32 @optee_cq_complete_one(%struct.optee_call_queue* %11)
  %13 = load %struct.optee_call_waiter*, %struct.optee_call_waiter** %4, align 8
  %14 = getelementptr inbounds %struct.optee_call_waiter, %struct.optee_call_waiter* %13, i32 0, i32 0
  %15 = call i64 @completion_done(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.optee_call_queue*, %struct.optee_call_queue** %3, align 8
  %19 = call i32 @optee_cq_complete_one(%struct.optee_call_queue* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.optee_call_queue*, %struct.optee_call_queue** %3, align 8
  %22 = getelementptr inbounds %struct.optee_call_queue, %struct.optee_call_queue* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @optee_cq_complete_one(%struct.optee_call_queue*) #1

declare dso_local i64 @completion_done(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
