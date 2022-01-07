; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_destroy_deferred_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_destroy_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.task_struct*, i32*, i32, i32, i32, i32*, i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_destroy_deferred_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_destroy_deferred_work(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %4 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %4, i32 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 6
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @destroy_workqueue(i32* %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 4
  %26 = call i32 @cancel_work_sync(i32* %25)
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 3
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 2
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @destroy_workqueue(i32* %35)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %23, %18
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 0
  %42 = load %struct.task_struct*, %struct.task_struct** %41, align 8
  %43 = icmp ne %struct.task_struct* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load %struct.task_struct*, %struct.task_struct** %46, align 8
  store %struct.task_struct* %47, %struct.task_struct** %3, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %49, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = call i32 @kthread_stop(%struct.task_struct* %50)
  br label %52

52:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
