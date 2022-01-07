; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_process_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_process_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32 }
%struct.kfifo = type { i32 }
%struct.ab_task = type { i32, i32 (%struct.anybuss_host*, %struct.ab_task*)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anybuss_host*, %struct.kfifo*)* @process_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_q(%struct.anybuss_host* %0, %struct.kfifo* %1) #0 {
  %3 = alloca %struct.anybuss_host*, align 8
  %4 = alloca %struct.kfifo*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %3, align 8
  store %struct.kfifo* %1, %struct.kfifo** %4, align 8
  %7 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %8 = call i32 @kfifo_out_peek(%struct.kfifo* %7, %struct.ab_task** %5, i32 8)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %14 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %13, i32 0, i32 1
  %15 = load i32 (%struct.anybuss_host*, %struct.ab_task*)*, i32 (%struct.anybuss_host*, %struct.ab_task*)** %14, align 8
  %16 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %17 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %18 = call i32 %15(%struct.anybuss_host* %16, %struct.ab_task* %17)
  %19 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %20 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %22 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EINPROGRESS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %29 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %30 = call i32 @ab_task_dequeue_finish_put(%struct.kfifo* %28, %struct.anybuss_host* %29)
  br label %31

31:                                               ; preds = %11, %27, %12
  ret void
}

declare dso_local i32 @kfifo_out_peek(%struct.kfifo*, %struct.ab_task**, i32) #1

declare dso_local i32 @ab_task_dequeue_finish_put(%struct.kfifo*, %struct.anybuss_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
