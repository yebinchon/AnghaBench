; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { i32, i32, i32, %struct.knav_queue_inst* }
%struct.knav_queue_inst = type { %struct.TYPE_4__*, %struct.knav_range_info* }
%struct.TYPE_4__ = type { i32 }
%struct.knav_range_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)* }

@knav_dev_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knav_queue_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.knav_queue*, align 8
  %4 = alloca %struct.knav_queue_inst*, align 8
  %5 = alloca %struct.knav_range_info*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.knav_queue*
  store %struct.knav_queue* %7, %struct.knav_queue** %3, align 8
  %8 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %9 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %8, i32 0, i32 3
  %10 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %9, align 8
  store %struct.knav_queue_inst* %10, %struct.knav_queue_inst** %4, align 8
  br label %11

11:                                               ; preds = %16, %1
  %12 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %13 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %12, i32 0, i32 2
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %18 = call i32 @knav_queue_disable_notifier(%struct.knav_queue* %17)
  br label %11

19:                                               ; preds = %11
  %20 = call i32 @mutex_lock(i32* @knav_dev_lock)
  %21 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %22 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %21, i32 0, i32 1
  %23 = call i32 @list_del_rcu(i32* %22)
  %24 = call i32 @mutex_unlock(i32* @knav_dev_lock)
  %25 = call i32 (...) @synchronize_rcu()
  %26 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %27 = call i32 @knav_queue_is_busy(%struct.knav_queue_inst* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %19
  %30 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %31 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %30, i32 0, i32 1
  %32 = load %struct.knav_range_info*, %struct.knav_range_info** %31, align 8
  store %struct.knav_range_info* %32, %struct.knav_range_info** %5, align 8
  %33 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %34 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %39 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)*, i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)** %41, align 8
  %43 = icmp ne i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %46 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)*, i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)** %48, align 8
  %50 = load %struct.knav_range_info*, %struct.knav_range_info** %5, align 8
  %51 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %52 = call i32 %49(%struct.knav_range_info* %50, %struct.knav_queue_inst* %51)
  br label %53

53:                                               ; preds = %44, %37, %29
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %56 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @free_percpu(i32 %57)
  %59 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %60 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %65 = call i32 @devm_kfree(i32 %63, %struct.knav_queue* %64)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @knav_queue_disable_notifier(%struct.knav_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @knav_queue_is_busy(%struct.knav_queue_inst*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.knav_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
