; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_take_action_for_connection_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_take_action_for_connection_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32, i32 }

@TARG_CONN_STATE_IN_LOGOUT = common dso_local global i64 0, align 8
@TARG_CONN_STATE_CLEANUP_WAIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Moving to TARG_CONN_STATE_CLEANUP_WAIT.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_take_action_for_connection_exit(%struct.iscsi_conn* %0, i32* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca i32*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 2
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock_bh(i32* %15)
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 2
  %20 = call i32 @atomic_set(i32* %19, i32 1)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TARG_CONN_STATE_IN_LOGOUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %31 = call i32 @iscsit_close_connection(%struct.iscsi_conn* %30)
  %32 = load i32*, i32** %4, align 8
  store i32 1, i32* %32, align 4
  br label %54

33:                                               ; preds = %17
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TARG_CONN_STATE_CLEANUP_WAIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %54

43:                                               ; preds = %33
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @TARG_CONN_STATE_CLEANUP_WAIT, align 8
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %52 = call i32 @iscsit_handle_connection_cleanup(%struct.iscsi_conn* %51)
  %53 = load i32*, i32** %4, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %39, %26, %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iscsit_close_connection(%struct.iscsi_conn*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @iscsit_handle_connection_cleanup(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
