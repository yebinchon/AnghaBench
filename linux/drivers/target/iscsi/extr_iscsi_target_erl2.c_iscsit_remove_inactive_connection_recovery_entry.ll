; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl2.c_iscsit_remove_inactive_connection_recovery_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl2.c_iscsit_remove_inactive_connection_recovery_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn_recovery = type { i32 }
%struct.iscsi_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn_recovery*, %struct.iscsi_session*)* @iscsit_remove_inactive_connection_recovery_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_remove_inactive_connection_recovery_entry(%struct.iscsi_conn_recovery* %0, %struct.iscsi_session* %1) #0 {
  %3 = alloca %struct.iscsi_conn_recovery*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_conn_recovery* %0, %struct.iscsi_conn_recovery** %3, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %4, align 8
  %5 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %6 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn_recovery, %struct.iscsi_conn_recovery* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock(i32* %12)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
