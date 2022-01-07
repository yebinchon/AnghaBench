; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { i32, i64 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_ADISC = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue ADISC:     did:x%x\00", align 1
@lpfc_cmpl_els_adisc = common dso_local global i32 0, align 4
@NLP_ADISC_SND = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %9, align 8
  store i32 20, i32* %13, align 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ELS_CMD_ADISC, align 4
  %27 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %19, i32 1, i32 %20, i32 %21, %struct.lpfc_nodelist* %22, i32 %25, i32 %26)
  store %struct.lpfc_iocbq* %27, %struct.lpfc_iocbq** %11, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %29 = icmp ne %struct.lpfc_iocbq* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %118

31:                                               ; preds = %3
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_dmabuf*
  %36 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %12, align 8
  %39 = load i32, i32* @ELS_CMD_ADISC, align 4
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %10, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %52, i32 0, i32 2
  %54 = call i32 @memcpy(i32* %51, i32* %53, i32 4)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %57, i32 0, i32 1
  %59 = call i32 @memcpy(i32* %56, i32* %58, i32 4)
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @be32_to_cpu(i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %67 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %66, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70, i32 0, i32 0)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @lpfc_cmpl_els_adisc, align 4
  %78 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %79 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @spin_lock_irq(i32 %82)
  %84 = load i32, i32* @NLP_ADISC_SND, align 4
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %86 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @spin_unlock_irq(i32 %91)
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %94 = load i32, i32* @LPFC_ELS_RING, align 4
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %96 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %93, i32 %94, %struct.lpfc_iocbq* %95, i32 0)
  %97 = load i64, i64* @IOCB_ERROR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %31
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @spin_lock_irq(i32 %102)
  %104 = load i32, i32* @NLP_ADISC_SND, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %107 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %111 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @spin_unlock_irq(i32 %112)
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %116 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %114, %struct.lpfc_iocbq* %115)
  store i32 1, i32* %4, align 4
  br label %118

117:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %99, %30
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

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
