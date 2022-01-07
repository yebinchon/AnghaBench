; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_npiv_logo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_npiv_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32, i64 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_LOGO = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Issue LOGO npiv  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_npiv_logo = common dso_local global i32 0, align 4
@NLP_LOGO_SND = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_npiv_logo(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 2
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %7, align 8
  store i32 12, i32* %10, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ELS_CMD_LOGO, align 4
  %23 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %16, i32 1, i32 %17, i32 0, %struct.lpfc_nodelist* %18, i32 %21, i32 %22)
  store %struct.lpfc_iocbq* %23, %struct.lpfc_iocbq** %8, align 8
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %25 = icmp ne %struct.lpfc_iocbq* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %100

27:                                               ; preds = %2
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.lpfc_dmabuf*
  %32 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* @ELS_CMD_LOGO, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32* %38, i32** %9, align 8
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %47, i32 0, i32 0
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 4)
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %51 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %50, i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 0)
  %59 = load i32, i32* @lpfc_cmpl_els_npiv_logo, align 4
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @spin_lock_irq(i32 %64)
  %66 = load i32, i32* @NLP_LOGO_SND, align 4
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_unlock_irq(i32 %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %76 = load i32, i32* @LPFC_ELS_RING, align 4
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %78 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %75, i32 %76, %struct.lpfc_iocbq* %77, i32 0)
  %79 = load i64, i64* @IOCB_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %27
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_lock_irq(i32 %84)
  %86 = load i32, i32* @NLP_LOGO_SND, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @spin_unlock_irq(i32 %94)
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %98 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %96, %struct.lpfc_iocbq* %97)
  store i32 1, i32* %3, align 4
  br label %100

99:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %81, %26
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
