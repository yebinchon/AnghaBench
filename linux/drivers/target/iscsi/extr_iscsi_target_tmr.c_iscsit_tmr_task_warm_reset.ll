; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_tmr_task_warm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_tmr_task_warm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_tmr_req = type { i32 }
%struct.iscsi_node_attrib = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"TMR Opcode TARGET_WARM_RESET authorization failed for Initiator Node: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tmr_task_warm_reset(%struct.iscsi_conn* %0, %struct.iscsi_tmr_req* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_tmr_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_tmr_req* %1, %struct.iscsi_tmr_req** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %8, align 8
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %14 = call %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session* %13)
  store %struct.iscsi_node_attrib* %14, %struct.iscsi_node_attrib** %9, align 8
  %15 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %9, align 8
  %16 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %4, align 4
  br label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
