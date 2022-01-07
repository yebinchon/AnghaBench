; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_remove_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_remove_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32 }
%struct.iscsi_conn_recovery = type { i32, i32 }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"iSCSI connection recovery successful for CID: %hu on SID: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cmd*, %struct.iscsi_conn_recovery*, %struct.iscsi_session*)* @iscsit_task_reassign_remove_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_task_reassign_remove_cmd(%struct.iscsi_cmd* %0, %struct.iscsi_conn_recovery* %1, %struct.iscsi_session* %2) #0 {
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn_recovery*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn_recovery* %1, %struct.iscsi_conn_recovery** %5, align 8
  store %struct.iscsi_session* %2, %struct.iscsi_session** %6, align 8
  %8 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %5, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn_recovery, %struct.iscsi_conn_recovery* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %13 = call i32 @iscsit_remove_cmd_from_connection_recovery(%struct.iscsi_cmd* %11, %struct.iscsi_session* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn_recovery, %struct.iscsi_conn_recovery* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn_recovery, %struct.iscsi_conn_recovery* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %5, align 8
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %29 = call i32 @iscsit_remove_active_connection_recovery_entry(%struct.iscsi_conn_recovery* %27, %struct.iscsi_session* %28)
  br label %30

30:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iscsit_remove_cmd_from_connection_recovery(%struct.iscsi_cmd*, %struct.iscsi_session*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iscsit_remove_active_connection_recovery_entry(%struct.iscsi_conn_recovery*, %struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
