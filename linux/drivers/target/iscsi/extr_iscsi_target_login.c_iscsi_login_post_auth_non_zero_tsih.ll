; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_post_auth_non_zero_tsih.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_post_auth_non_zero_tsih.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.iscsi_conn_recovery = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"Connection exists with CID %hu for %s, performing connection reinstatement.\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Performing implicit logout for connection recovery on CID: %hu\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Adding CID %hu to existing session for %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"Adding additional connection to this session would exceed MaxConnections %d, login failed.\0A\00", align 1
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_ISID_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_login_post_auth_non_zero_tsih(%struct.iscsi_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_conn_recovery*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn_recovery* null, %struct.iscsi_conn_recovery** %9, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  store %struct.iscsi_session* %13, %struct.iscsi_session** %10, align 8
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.iscsi_conn* @iscsit_get_conn_from_cid_rcfr(%struct.iscsi_session* %14, i32 %15)
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %8, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %18 = icmp ne %struct.iscsi_conn* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %28)
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %31 = call i32 @iscsit_connection_reinstatement_rcfr(%struct.iscsi_conn* %30)
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %33 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %32)
  br label %34

34:                                               ; preds = %19, %3
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.iscsi_conn_recovery* @iscsit_get_inactive_connection_recovery_entry(%struct.iscsi_session* %42, i32 %43)
  store %struct.iscsi_conn_recovery* %44, %struct.iscsi_conn_recovery** %9, align 8
  %45 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %9, align 8
  %46 = icmp ne %struct.iscsi_conn_recovery* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @iscsit_discard_cr_cmds_by_expstatsn(%struct.iscsi_conn_recovery* %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %62)
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 1
  %66 = call i64 @atomic_read(i32* %65)
  %67 = add nsw i64 %66, 1
  %68 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %69 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %67, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %56
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %76 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %82 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %83 = load i32, i32* @ISCSI_LOGIN_STATUS_ISID_ERROR, align 4
  %84 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %81, i32 %82, i32 %83)
  store i32 -1, i32* %4, align 4
  br label %86

85:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.iscsi_conn* @iscsit_get_conn_from_cid_rcfr(%struct.iscsi_session*, i32) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @iscsit_connection_reinstatement_rcfr(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local %struct.iscsi_conn_recovery* @iscsit_get_inactive_connection_recovery_entry(%struct.iscsi_session*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @iscsit_discard_cr_cmds_by_expstatsn(%struct.iscsi_conn_recovery*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
