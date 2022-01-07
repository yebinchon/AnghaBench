; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_wait_for_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_wait_for_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { %struct.sbitmap_queue }
%struct.sbitmap_queue = type { %struct.sbq_wait_state* }
%struct.sbq_wait_state = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_session*, i32, i32*)* @iscsit_wait_for_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_wait_for_tag(%struct.se_session* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbq_wait_state*, align 8
  %10 = alloca %struct.sbitmap_queue*, align 8
  store %struct.se_session* %0, %struct.se_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_SBQ_WAIT(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TASK_RUNNING, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.se_session*, %struct.se_session** %5, align 8
  %20 = getelementptr inbounds %struct.se_session, %struct.se_session* %19, i32 0, i32 0
  store %struct.sbitmap_queue* %20, %struct.sbitmap_queue** %10, align 8
  %21 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %10, align 8
  %22 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %21, i32 0, i32 0
  %23 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %22, align 8
  %24 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %23, i64 0
  store %struct.sbq_wait_state* %24, %struct.sbq_wait_state** %9, align 8
  br label %25

25:                                               ; preds = %42, %18
  %26 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %10, align 8
  %27 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sbitmap_prepare_to_wait(%struct.sbitmap_queue* %26, %struct.sbq_wait_state* %27, i32* @wait, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @current, align 4
  %32 = call i64 @signal_pending_state(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %10, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @sbitmap_queue_get(%struct.sbitmap_queue* %36, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %44

42:                                               ; preds = %35
  %43 = call i32 (...) @schedule()
  br label %25

44:                                               ; preds = %41, %34
  %45 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %10, align 8
  %46 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %9, align 8
  %47 = call i32 @sbitmap_finish_wait(%struct.sbitmap_queue* %45, %struct.sbq_wait_state* %46, i32* @wait)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @DEFINE_SBQ_WAIT(i32) #1

declare dso_local i32 @sbitmap_prepare_to_wait(%struct.sbitmap_queue*, %struct.sbq_wait_state*, i32*, i32) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i32 @sbitmap_queue_get(%struct.sbitmap_queue*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @sbitmap_finish_wait(%struct.sbitmap_queue*, %struct.sbq_wait_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
