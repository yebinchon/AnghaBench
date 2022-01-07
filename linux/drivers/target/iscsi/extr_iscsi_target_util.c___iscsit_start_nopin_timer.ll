; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c___iscsit_start_nopin_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c___iscsit_start_nopin_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_node_attrib = type { i32 }

@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Started NOPIN Timer on CID: %d at %u second interval\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__iscsit_start_nopin_timer(%struct.iscsi_conn* %0) #0 {
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
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %56

26:                                               ; preds = %18
  %27 = load i32, i32* @ISCSI_TF_STOP, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 2
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = call i32 @mod_timer(i32* %39, i64 %47)
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %26, %25, %17
  ret void
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
