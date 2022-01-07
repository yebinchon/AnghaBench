; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_add_nopin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_add_nopin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32 }
%struct.iscsi_cmd = type { i32, i32, i32, i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@ISCSI_OP_NOOP_IN = common dso_local global i32 0, align 4
@ISTATE_SEND_NOPIN_WANT_RESPONSE = common dso_local global i32 0, align 4
@ISTATE_SEND_NOPIN_NO_RESPONSE = common dso_local global i32 0, align 4
@RESERVED_ITT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i32)* @iscsit_add_nopin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_add_nopin(%struct.iscsi_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %9 = load i32, i32* @TASK_RUNNING, align 4
  %10 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %8, i32 %9)
  store %struct.iscsi_cmd* %10, %struct.iscsi_cmd** %7, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %12 = icmp ne %struct.iscsi_cmd* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* @ISCSI_OP_NOOP_IN, align 4
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ISTATE_SEND_NOPIN_WANT_RESPONSE, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @ISTATE_SEND_NOPIN_NO_RESPONSE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @RESERVED_ITT, align 4
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @session_get_next_ttt(i32 %34)
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %35, %31 ], [ -1, %36 ]
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %44, i32 0, i32 1
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 1
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %56 = call i32 @iscsit_start_nopin_response_timer(%struct.iscsi_conn* %55)
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %58, %struct.iscsi_conn* %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @session_get_next_ttt(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_start_nopin_response_timer(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
