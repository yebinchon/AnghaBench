; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_l2_rcv_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_l2_rcv_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_percpu_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@current = common dso_local global i32 0, align 4
@MIN_NICE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bnx2fc_l2_rcv_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_l2_rcv_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fcoe_percpu_s*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fcoe_percpu_s*
  store %struct.fcoe_percpu_s* %6, %struct.fcoe_percpu_s** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = load i32, i32* @MIN_NICE, align 4
  %9 = call i32 @set_user_nice(i32 %7, i32 %8)
  %10 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %11 = call i32 @set_current_state(i32 %10)
  br label %12

12:                                               ; preds = %38, %1
  %13 = call i32 (...) @kthread_should_stop()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = call i32 (...) @schedule()
  %18 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %19 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  br label %22

22:                                               ; preds = %27, %16
  %23 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %24 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %23, i32 0, i32 0
  %25 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_2__* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %29 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @bnx2fc_recv_frame(%struct.sk_buff* %32)
  %34 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %35 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %40 = call i32 @__set_current_state(i32 %39)
  %41 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %42 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* @TASK_RUNNING, align 4
  %47 = call i32 @__set_current_state(i32 %46)
  ret i32 0
}

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2fc_recv_frame(%struct.sk_buff*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
