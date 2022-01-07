; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl2.c_iscsit_remove_cmd_from_connection_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl2.c_iscsit_remove_cmd_from_connection_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, %struct.iscsi_conn_recovery*, i32 }
%struct.iscsi_conn_recovery = type { i32 }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"struct iscsi_conn_recovery pointer for ITT: 0x%08x is NULL!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_remove_cmd_from_connection_recovery(%struct.iscsi_cmd* %0, %struct.iscsi_session* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_conn_recovery*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %4, align 8
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 1
  %8 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %7, align 8
  %9 = icmp ne %struct.iscsi_conn_recovery* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @BUG()
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 1
  %19 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %18, align 8
  store %struct.iscsi_conn_recovery* %19, %struct.iscsi_conn_recovery** %5, align 8
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.iscsi_conn_recovery*, %struct.iscsi_conn_recovery** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn_recovery, %struct.iscsi_conn_recovery* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  ret i32 %26
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
