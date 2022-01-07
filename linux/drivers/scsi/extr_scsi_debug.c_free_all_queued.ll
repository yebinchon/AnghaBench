; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_free_all_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_free_all_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { %struct.sdebug_queued_cmd* }
%struct.sdebug_queued_cmd = type { i32* }

@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@submit_queues = common dso_local global i32 0, align 4
@SDEBUG_CANQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_all_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_queued() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdebug_queue*, align 8
  %4 = alloca %struct.sdebug_queued_cmd*, align 8
  store i32 0, i32* %1, align 4
  %5 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  store %struct.sdebug_queue* %5, %struct.sdebug_queue** %3, align 8
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @submit_queues, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SDEBUG_CANQUEUE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.sdebug_queue*, %struct.sdebug_queue** %3, align 8
  %17 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %16, i32 0, i32 0
  %18 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %18, i64 %20
  store %struct.sdebug_queued_cmd* %21, %struct.sdebug_queued_cmd** %4, align 8
  %22 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %11

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  %35 = load %struct.sdebug_queue*, %struct.sdebug_queue** %3, align 8
  %36 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %35, i32 1
  store %struct.sdebug_queue* %36, %struct.sdebug_queue** %3, align 8
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
