; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_run_enqueue_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_run_enqueue_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@hdm_enqueue_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hdm_fifo_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_channel*, i32)* @run_enqueue_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_enqueue_thread(%struct.most_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  store %struct.most_channel* %0, %struct.most_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @hdm_enqueue_thread, align 4
  %8 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.task_struct* @kthread_run(i32 %7, %struct.most_channel* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = call i64 @IS_ERR(%struct.task_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.task_struct* %15)
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %20 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %19, i32 0, i32 0
  store %struct.task_struct* %18, %struct.task_struct** %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.most_channel*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
