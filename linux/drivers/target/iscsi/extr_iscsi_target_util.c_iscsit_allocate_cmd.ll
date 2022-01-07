; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_allocate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_allocate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.iscsi_conn*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.se_session* }
%struct.se_session = type { i64, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@iscsit_handle_dataout_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.se_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.se_session*, %struct.se_session** %14, align 8
  store %struct.se_session* %15, %struct.se_session** %7, align 8
  %16 = load %struct.se_session*, %struct.se_session** %7, align 8
  %17 = getelementptr inbounds %struct.se_session, %struct.se_session* %16, i32 0, i32 1
  %18 = call i32 @sbitmap_queue_get(i32* %17, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.se_session*, %struct.se_session** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @iscsit_wait_for_tag(%struct.se_session* %22, i32 %23, i32* %10)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %3, align 8
  br label %93

29:                                               ; preds = %25
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 56, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.se_session*, %struct.se_session** %7, align 8
  %39 = getelementptr inbounds %struct.se_session, %struct.se_session* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = inttoptr i64 %45 to %struct.iscsi_cmd*
  store %struct.iscsi_cmd* %46, %struct.iscsi_cmd** %6, align 8
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @memset(%struct.iscsi_cmd* %47, i32 0, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %59 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %59, i32 0, i32 10
  store %struct.iscsi_conn* %58, %struct.iscsi_conn** %60, align 8
  %61 = load i32, i32* @DMA_NONE, align 4
  %62 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %64, i32 0, i32 8
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %67, i32 0, i32 7
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 6
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %73, i32 0, i32 5
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %76, i32 0, i32 4
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %79, i32 0, i32 3
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %82, i32 0, i32 2
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 1
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %88, i32 0, i32 0
  %90 = load i32, i32* @iscsit_handle_dataout_timeout, align 4
  %91 = call i32 @timer_setup(i32* %89, i32 %90, i32 0)
  %92 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_cmd* %92, %struct.iscsi_cmd** %3, align 8
  br label %93

93:                                               ; preds = %29, %28
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  ret %struct.iscsi_cmd* %94
}

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local i32 @iscsit_wait_for_tag(%struct.se_session*, i32, i32*) #1

declare dso_local i32 @memset(%struct.iscsi_cmd*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
