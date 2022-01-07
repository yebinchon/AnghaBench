; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_mod_dataout_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_mod_dataout_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_node_attrib = type { i32 }

@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Updated DataOUT timer for ITT: 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_mod_dataout_timer(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 4
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  store %struct.iscsi_session* %11, %struct.iscsi_session** %4, align 8
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %13 = call %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session* %12)
  store %struct.iscsi_node_attrib* %13, %struct.iscsi_node_attrib** %5, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_bh(i32* %25)
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 3
  %30 = call i64 (...) @get_jiffies_64()
  %31 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = call i32 @mod_timer(i32* %29, i64 %37)
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %46

46:                                               ; preds = %27, %23
  ret void
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
