; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_percpu_s = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@qedi_percpu = common dso_local global i32 0, align 4
@qedi_percpu_io_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"qedi_thread/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qedi_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_percpu_s*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.qedi_percpu_s* @this_cpu_ptr(i32* @qedi_percpu)
  store %struct.qedi_percpu_s* %6, %struct.qedi_percpu_s** %4, align 8
  %7 = load i32, i32* @qedi_percpu_io_thread, align 4
  %8 = load %struct.qedi_percpu_s*, %struct.qedi_percpu_s** %4, align 8
  %9 = bitcast %struct.qedi_percpu_s* %8 to i8*
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cpu_to_node(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.task_struct* @kthread_create_on_node(i32 %7, i8* %9, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  store %struct.task_struct* %13, %struct.task_struct** %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = call i64 @IS_ERR(%struct.task_struct* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.task_struct* %18)
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @kthread_bind(%struct.task_struct* %21, i32 %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = load %struct.qedi_percpu_s*, %struct.qedi_percpu_s** %4, align 8
  %26 = getelementptr inbounds %struct.qedi_percpu_s, %struct.qedi_percpu_s* %25, i32 0, i32 0
  store %struct.task_struct* %24, %struct.task_struct** %26, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = call i32 @wake_up_process(%struct.task_struct* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.qedi_percpu_s* @this_cpu_ptr(i32*) #1

declare dso_local %struct.task_struct* @kthread_create_on_node(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @kthread_bind(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
