; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_start_nopin_response_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_start_nopin_response_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_node_attrib = type { i32 }

@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Started NOPIN Response Timer on CID: %d to %u seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_start_nopin_response_timer(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 4
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
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_bh(i32* %21)
  br label %56

23:                                               ; preds = %1
  %24 = load i32, i32* @ISCSI_TF_STOP, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 3
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = call i32 @mod_timer(i32* %36, i64 %44)
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  br label %56

56:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
