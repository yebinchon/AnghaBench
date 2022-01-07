; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_reg_vpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_reg_vpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_6__ = type { %struct.lpfc_vport*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_reg_vpi = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_issue_reg_vpi(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_6__* @mempool_alloc(i32 %8, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @lpfc_reg_vpi(%struct.lpfc_vport* %14, %struct.TYPE_6__* %15)
  %17 = load i32, i32* @lpfc_mbx_cmpl_reg_vpi, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %22, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* @MBX_NOWAIT, align 4
  %26 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %23, %struct.TYPE_6__* %24, i32 %25)
  %27 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %13
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mempool_free(%struct.TYPE_6__* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %13
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_reg_vpi(%struct.lpfc_vport*, %struct.TYPE_6__*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
