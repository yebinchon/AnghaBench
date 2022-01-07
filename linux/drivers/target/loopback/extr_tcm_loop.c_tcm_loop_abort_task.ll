; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_abort_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_abort_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.tcm_loop_hba = type { %struct.tcm_loop_tpg* }
%struct.tcm_loop_tpg = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@TMR_ABORT_TASK = common dso_local global i32 0, align 4
@TMR_FUNCTION_COMPLETE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @tcm_loop_abort_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_abort_task(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.tcm_loop_hba*, align 8
  %4 = alloca %struct.tcm_loop_tpg*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load i32, i32* @FAILED, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @shost_priv(i32 %11)
  %13 = inttoptr i64 %12 to %struct.tcm_loop_hba**
  %14 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %13, align 8
  store %struct.tcm_loop_hba* %14, %struct.tcm_loop_hba** %3, align 8
  %15 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %3, align 8
  %16 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %15, i32 0, i32 0
  %17 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %16, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %17, i64 %22
  store %struct.tcm_loop_tpg* %23, %struct.tcm_loop_tpg** %4, align 8
  %24 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %4, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TMR_ABORT_TASK, align 4
  %36 = call i32 @tcm_loop_issue_tmr(%struct.tcm_loop_tpg* %24, i32 %29, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TMR_FUNCTION_COMPLETE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @SUCCESS, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @FAILED, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

declare dso_local i64 @shost_priv(i32) #1

declare dso_local i32 @tcm_loop_issue_tmr(%struct.tcm_loop_tpg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
