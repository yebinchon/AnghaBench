; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_handle_nopin_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_handle_nopin_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32 }
%struct.timer_list = type { i32 }

@nopin_timer = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@conn = common dso_local global %struct.iscsi_conn* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_handle_nopin_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %5 = ptrtoint %struct.iscsi_conn* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @nopin_timer, align 4
  %8 = call %struct.iscsi_conn* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = call i32 @iscsit_inc_conn_usage_count(%struct.iscsi_conn* %9)
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISCSI_TF_STOP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %25 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %24)
  br label %40

26:                                               ; preds = %1
  %27 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %37 = call i32 @iscsit_add_nopin(%struct.iscsi_conn* %36, i32 1)
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %39 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %38)
  br label %40

40:                                               ; preds = %26, %20
  ret void
}

declare dso_local %struct.iscsi_conn* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @iscsit_inc_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_add_nopin(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
