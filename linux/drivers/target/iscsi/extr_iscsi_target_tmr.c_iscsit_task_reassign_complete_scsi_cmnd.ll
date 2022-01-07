; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete_scsi_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete_scsi_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tmr_req = type { %struct.iscsi_cmd* }
%struct.iscsi_cmd = type { i32, i32, i32, %struct.TYPE_2__, i32, i64, i64, %struct.iscsi_conn_recovery* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_conn_recovery = type { i32 }
%struct.iscsi_conn = type { i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"struct iscsi_conn_recovery pointer for ITT: 0x%08x is NULL!\0A\00", align 1
@SCF_SENT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ISTATE_SEND_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unknown cmd->data_direction: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tmr_req*, %struct.iscsi_conn*)* @iscsit_task_reassign_complete_scsi_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_task_reassign_complete_scsi_cmnd(%struct.iscsi_tmr_req* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tmr_req*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_conn_recovery*, align 8
  store %struct.iscsi_tmr_req* %0, %struct.iscsi_tmr_req** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %8 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %8, i32 0, i32 0
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  store %struct.iscsi_cmd* %10, %struct.iscsi_cmd** %6, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 7
  %13 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %12, align 8
  %14 = icmp ne %struct.iscsi_conn_recovery* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 7
  %23 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %22, align 8
  store %struct.iscsi_conn_recovery* %23, %struct.iscsi_conn_recovery** %7, align 8
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %29 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %7, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iscsit_task_reassign_remove_cmd(%struct.iscsi_cmd* %28, %struct.iscsi_conn_recovery* %29, i32 %32)
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SCF_SENT_CHECK_CONDITION, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %20
  %53 = load i32, i32* @ISTATE_SEND_STATUS, align 4
  %54 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %56, %struct.iscsi_conn* %57, i32 %60)
  store i32 0, i32* %3, align 4
  br label %83

62:                                               ; preds = %20
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %78 [
    i32 128, label %66
    i32 130, label %70
    i32 129, label %74
  ]

66:                                               ; preds = %62
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %68 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %69 = call i32 @iscsit_task_reassign_complete_write(%struct.iscsi_cmd* %67, %struct.iscsi_tmr_req* %68)
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %62
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %72 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %73 = call i32 @iscsit_task_reassign_complete_read(%struct.iscsi_cmd* %71, %struct.iscsi_tmr_req* %72)
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %62
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %76 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %77 = call i32 @iscsit_task_reassign_complete_none(%struct.iscsi_cmd* %75, %struct.iscsi_tmr_req* %76)
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %62
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %74, %70, %66, %52, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @iscsit_task_reassign_remove_cmd(%struct.iscsi_cmd*, %struct.iscsi_conn_recovery*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_task_reassign_complete_write(%struct.iscsi_cmd*, %struct.iscsi_tmr_req*) #1

declare dso_local i32 @iscsit_task_reassign_complete_read(%struct.iscsi_cmd*, %struct.iscsi_tmr_req*) #1

declare dso_local i32 @iscsit_task_reassign_complete_none(%struct.iscsi_cmd*, %struct.iscsi_tmr_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
