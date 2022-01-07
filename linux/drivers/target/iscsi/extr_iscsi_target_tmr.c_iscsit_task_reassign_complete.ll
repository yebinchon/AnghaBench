; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tmr_req = type { %struct.iscsi_cmd* }
%struct.iscsi_cmd = type { i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"TMR Request is missing a RefCmd struct iscsi_cmd.\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Illegal iSCSI Opcode 0x%02x during command reallegiance\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Completed connection reallegiance for Opcode: 0x%02x, ITT: 0x%08x to CID: %hu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tmr_req*, %struct.iscsi_conn*)* @iscsit_task_reassign_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_task_reassign_complete(%struct.iscsi_tmr_req* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tmr_req*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_tmr_req* %0, %struct.iscsi_tmr_req** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %8, i32 0, i32 0
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %11 = icmp ne %struct.iscsi_cmd* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %15, i32 0, i32 0
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  store %struct.iscsi_cmd* %17, %struct.iscsi_cmd** %6, align 8
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %19, i32 0, i32 2
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %20, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %14
  %25 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %27 = call i32 @iscsit_task_reassign_complete_nop_out(%struct.iscsi_tmr_req* %25, %struct.iscsi_conn* %26)
  store i32 %27, i32* %7, align 4
  br label %37

28:                                               ; preds = %14
  %29 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = call i32 @iscsit_task_reassign_complete_scsi_cmnd(%struct.iscsi_tmr_req* %29, %struct.iscsi_conn* %30)
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %14
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %53

37:                                               ; preds = %28, %24
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %37
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %40, %32, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_task_reassign_complete_nop_out(%struct.iscsi_tmr_req*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_task_reassign_complete_scsi_cmnd(%struct.iscsi_tmr_req*, %struct.iscsi_conn*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
