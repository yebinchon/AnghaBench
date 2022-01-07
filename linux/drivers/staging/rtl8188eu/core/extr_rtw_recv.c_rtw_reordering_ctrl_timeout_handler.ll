; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_rtw_reordering_ctrl_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_rtw_reordering_ctrl_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_reorder_ctrl = type { i32, %struct.__queue, %struct.adapter* }
%struct.__queue = type { i32 }
%struct.adapter = type { i64, i64 }
%struct.timer_list = type { i32 }

@reordering_ctrl_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@REORDER_WAIT_TIME = common dso_local global i32 0, align 4
@preorder_ctrl = common dso_local global %struct.recv_reorder_ctrl* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_reordering_ctrl_timeout_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.recv_reorder_ctrl*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.__queue*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %3, align 8
  %7 = ptrtoint %struct.recv_reorder_ctrl* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @reordering_ctrl_timer, align 4
  %10 = call %struct.recv_reorder_ctrl* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.recv_reorder_ctrl* %10, %struct.recv_reorder_ctrl** %3, align 8
  %11 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %11, i32 0, i32 2
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %4, align 8
  %14 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %14, i32 0, i32 1
  store %struct.__queue* %15, %struct.__queue** %5, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %1
  br label %46

26:                                               ; preds = %20
  %27 = load %struct.__queue*, %struct.__queue** %5, align 8
  %28 = getelementptr inbounds %struct.__queue, %struct.__queue* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %3, align 8
  %32 = call i64 @recv_indicatepkts_in_order(%struct.adapter* %30, %struct.recv_reorder_ctrl* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %35, i32 0, i32 0
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i32, i32* @REORDER_WAIT_TIME, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @mod_timer(i32* %36, i64 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.__queue*, %struct.__queue** %5, align 8
  %44 = getelementptr inbounds %struct.__queue, %struct.__queue* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %46

46:                                               ; preds = %42, %25
  ret void
}

declare dso_local %struct.recv_reorder_ctrl* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @recv_indicatepkts_in_order(%struct.adapter*, %struct.recv_reorder_ctrl*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
