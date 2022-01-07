; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_tmr_post_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_tmr_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.TYPE_2__, %struct.iscsi_tmr_req* }
%struct.TYPE_2__ = type { %struct.se_tmr_req* }
%struct.se_tmr_req = type { i64 }
%struct.iscsi_tmr_req = type { i64 }
%struct.iscsi_conn = type { i32 }

@ISCSI_TMF_RSP_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tmr_post_handler(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_tmr_req*, align 8
  %7 = alloca %struct.se_tmr_req*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %8, i32 0, i32 1
  %10 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %9, align 8
  store %struct.iscsi_tmr_req* %10, %struct.iscsi_tmr_req** %6, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.se_tmr_req*, %struct.se_tmr_req** %13, align 8
  store %struct.se_tmr_req* %14, %struct.se_tmr_req** %7, align 8
  %15 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.se_tmr_req*, %struct.se_tmr_req** %7, align 8
  %21 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ISCSI_TMF_RSP_COMPLETE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %6, align 8
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %28 = call i32 @iscsit_task_reassign_complete(%struct.iscsi_tmr_req* %26, %struct.iscsi_conn* %27)
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @iscsit_task_reassign_complete(%struct.iscsi_tmr_req*, %struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
