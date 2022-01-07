; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_mod_nopin_response_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_mod_nopin_response_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_node_attrib = type { i32 }

@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_mod_nopin_response_timer(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 3
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  store %struct.iscsi_session* %7, %struct.iscsi_session** %3, align 8
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %9 = call %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session* %8)
  store %struct.iscsi_node_attrib* %9, %struct.iscsi_node_attrib** %4, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_bh(i32* %21)
  br label %38

23:                                               ; preds = %1
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 2
  %26 = call i64 (...) @get_jiffies_64()
  %27 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = call i32 @mod_timer(i32* %25, i64 %33)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_bh(i32* %36)
  br label %38

38:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @get_jiffies_64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
