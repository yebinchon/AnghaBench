; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_logo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32, i64 }
%struct.lpfc_dmabuf = type { i64 }

@NLP_LOGO_SND = common dso_local global i32 0, align 4
@ELS_CMD_LOGO = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue LOGO:      did:x%x\00", align 1
@lpfc_cmpl_els_logo = common dso_local global i32 0, align 4
@NLP_ISSUE_LOGO = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@NLP_STE_LOGO_ISSUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %9, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spin_lock_irq(i32 %21)
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NLP_LOGO_SND, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_unlock_irq(i32 %32)
  store i32 0, i32* %4, align 4
  br label %150

34:                                               ; preds = %3
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @spin_unlock_irq(i32 %37)
  store i32 12, i32* %12, align 4
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ELS_CMD_LOGO, align 4
  %47 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %39, i32 1, i32 %40, i32 %41, %struct.lpfc_nodelist* %42, i32 %45, i32 %46)
  store %struct.lpfc_iocbq* %47, %struct.lpfc_iocbq** %10, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %49 = icmp ne %struct.lpfc_iocbq* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %150

51:                                               ; preds = %34
  %52 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %53 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.lpfc_dmabuf*
  %56 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %11, align 8
  %59 = load i32, i32* @ELS_CMD_LOGO, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32* %62, i32** %11, align 8
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %72 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %71, i32 0, i32 0
  %73 = call i32 @memcpy(i32* %70, i32* %72, i32 4)
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %75 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %77 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %74, i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %78, i32 0, i32 0)
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @lpfc_cmpl_els_logo, align 4
  %86 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %87 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @spin_lock_irq(i32 %90)
  %92 = load i32, i32* @NLP_LOGO_SND, align 4
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @NLP_ISSUE_LOGO, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %104 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @spin_unlock_irq(i32 %105)
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %108 = load i32, i32* @LPFC_ELS_RING, align 4
  %109 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %110 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %107, i32 %108, %struct.lpfc_iocbq* %109, i32 0)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @IOCB_ERROR, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %51
  %115 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %116 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @spin_lock_irq(i32 %117)
  %119 = load i32, i32* @NLP_LOGO_SND, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %122 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %126 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @spin_unlock_irq(i32 %127)
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %131 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %129, %struct.lpfc_iocbq* %130)
  store i32 1, i32* %4, align 4
  br label %150

132:                                              ; preds = %51
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %134 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @spin_lock_irq(i32 %135)
  %137 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %138 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %141 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %143 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @spin_unlock_irq(i32 %144)
  %146 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %148 = load i32, i32* @NLP_STE_LOGO_ISSUE, align 4
  %149 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %146, %struct.lpfc_nodelist* %147, i32 %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %132, %114, %50, %29
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
