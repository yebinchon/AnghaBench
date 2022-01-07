; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_mbx_cmpl_resume_rpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_mbx_cmpl_resume_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_4__ = type { %struct.lpfc_vport*, i64, i64 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.lpfc_nodelist = type { i32 }

@ELS_CMD_ADISC = common dso_local global i64 0, align 8
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_4__*)* @lpfc_mbx_cmpl_resume_rpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_resume_rpi(%struct.lpfc_hba* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %12, %struct.lpfc_iocbq** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %16, %struct.lpfc_nodelist** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %18, align 8
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %5, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ELS_CMD_ADISC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %30 = call i32 @lpfc_els_rsp_adisc_acc(%struct.lpfc_vport* %27, %struct.lpfc_iocbq* %28, %struct.lpfc_nodelist* %29)
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %36 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %32, i32 %33, %struct.lpfc_iocbq* %34, %struct.lpfc_nodelist* %35, i32* null)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %39 = call i32 @kfree(%struct.lpfc_iocbq* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mempool_free(%struct.TYPE_4__* %40, i32 %43)
  ret void
}

declare dso_local i32 @lpfc_els_rsp_adisc_acc(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_iocbq*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
