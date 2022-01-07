; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_aborted_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_aborted_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CMD_T_FABRIC_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_aborted_task(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %4, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %8, i32 0, i32 0
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CMD_T_FABRIC_STOP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 0
  %23 = call i32 @list_del_init(i32* %22)
  br label %24

24:                                               ; preds = %20, %12, %2
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %29 = call i32 @__iscsit_free_cmd(%struct.iscsi_cmd* %28, i32 1)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
