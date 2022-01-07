; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_handle_nopin_response_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_handle_nopin_response_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@nopin_response_timer = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"Did not receive response to NOPIN on CID: %hu, failing connection for I_T Nexus %s,i,0x%6phN,%s,t,0x%02x\0A\00", align 1
@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@conn = common dso_local global %struct.iscsi_conn* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_handle_nopin_response_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %6 = ptrtoint %struct.iscsi_conn* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @nopin_response_timer, align 4
  %9 = call %struct.iscsi_conn* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 3
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %4, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = call i32 @iscsit_inc_conn_usage_count(%struct.iscsi_conn* %13)
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ISCSI_TF_STOP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %29 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %28)
  br label %71

30:                                               ; preds = %1
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %41, i32 %48, i32 %54)
  %56 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %59 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %66 = call i32 @iscsit_fill_cxn_timeout_err_stats(%struct.iscsi_session* %65)
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %68 = call i32 @iscsit_cause_connection_reinstatement(%struct.iscsi_conn* %67, i32 0)
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %70 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %69)
  br label %71

71:                                               ; preds = %30, %24
  ret void
}

declare dso_local %struct.iscsi_conn* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @iscsit_inc_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iscsit_fill_cxn_timeout_err_stats(%struct.iscsi_session*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
