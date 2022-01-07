; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_start_dataout_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_start_dataout_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32 }
%struct.iscsi_conn = type { i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_node_attrib = type { i32 }

@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Starting DataOUT timer for ITT: 0x%08x on CID: %hu.\0A\00", align 1
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_start_dataout_timer(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 1
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  store %struct.iscsi_session* %9, %struct.iscsi_session** %5, align 8
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %11 = call %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session* %10)
  store %struct.iscsi_node_attrib* %11, %struct.iscsi_node_attrib** %6, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 3
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @ISCSI_TF_STOP, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 1
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %6, align 8
  %45 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %43, %49
  %51 = call i32 @mod_timer(i32* %42, i64 %50)
  br label %52

52:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
