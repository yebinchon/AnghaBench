; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_closeconnection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_closeconnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32 }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"Received logout request CLOSECONNECTION for CID: %hu on CID: %hu.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Moving to TARG_CONN_STATE_IN_LOGOUT.\0A\00", align 1
@TARG_CONN_STATE_IN_LOGOUT = common dso_local global i32 0, align 4
@ISCSI_LOGOUT_REASON_CLOSE_CONNECTION = common dso_local global i32 0, align 4
@ISCSI_LOGOUT_CID_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_logout_closeconnection(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 5
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  store %struct.iscsi_session* %10, %struct.iscsi_session** %7, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @TARG_CONN_STATE_IN_LOGOUT, align 4
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 2
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  %36 = load i32, i32* @ISCSI_LOGOUT_REASON_CLOSE_CONNECTION, align 4
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %38 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = call i32 @iscsit_inc_conn_usage_count(%struct.iscsi_conn* %39)
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %65

44:                                               ; preds = %2
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %7, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.iscsi_conn* @iscsit_get_conn_from_cid(%struct.iscsi_session* %45, i32 %48)
  store %struct.iscsi_conn* %49, %struct.iscsi_conn** %6, align 8
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %51 = icmp ne %struct.iscsi_conn* %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ISCSI_LOGOUT_CID_NOT_FOUND, align 4
  %54 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %56, %struct.iscsi_conn* %57, i32 %60)
  store i32 0, i32* %3, align 4
  br label %72

62:                                               ; preds = %44
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %64 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %63)
  br label %65

65:                                               ; preds = %62, %25
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %68 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %66, %struct.iscsi_conn* %67, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %52
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iscsit_inc_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.iscsi_conn* @iscsit_get_conn_from_cid(%struct.iscsi_session*, i32) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
