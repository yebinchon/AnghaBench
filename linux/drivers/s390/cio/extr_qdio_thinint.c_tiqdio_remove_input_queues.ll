; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_remove_input_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_remove_input_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.qdio_q** }
%struct.qdio_q = type { i32 }

@tiq_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tiqdio_remove_input_queues(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  %4 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %5 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %4, i32 0, i32 0
  %6 = load %struct.qdio_q**, %struct.qdio_q*** %5, align 8
  %7 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %6, i64 0
  %8 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  store %struct.qdio_q* %8, %struct.qdio_q** %3, align 8
  %9 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %10 = icmp ne %struct.qdio_q* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = call i32 @mutex_lock(i32* @tiq_list_lock)
  %14 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %15 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %14, i32 0, i32 0
  %16 = call i32 @list_del_rcu(i32* %15)
  %17 = call i32 @mutex_unlock(i32* @tiq_list_lock)
  %18 = call i32 (...) @synchronize_rcu()
  %19 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %20 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
