; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_prli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_7__, %struct.TYPE_5__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.lpfc_iocbq* }
%struct.lpfc_vport = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }

@NLP_PRLI_SND = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PRLI cmpl:       status:x%x/x%x did:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"0103 PRLI completes to NPort x%06x Data: x%x x%x x%x x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"2754 PRLI failure DID:%06X Status:x%x/x%x, data: x%x\0A\00", align 1
@NLP_EVT_CMPL_PRLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_prli(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 3
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %7, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.lpfc_iocbq* %16, %struct.lpfc_iocbq** %19, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 1
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %25, %struct.lpfc_nodelist** %10, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spin_lock_irq(i32 %28)
  %30 = load i32, i32* @NLP_PRLI_SND, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %33 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @spin_unlock_irq(i32 %46)
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %49 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %48, i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %58, i32 %61)
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load i32, i32* @LOG_ELS, align 4
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %82 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %71, i32 %77, i32 %80, i32 %83)
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %86 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %3
  br label %139

89:                                               ; preds = %3
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %89
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %98 = call i64 @lpfc_els_retry(%struct.lpfc_hba* %95, %struct.lpfc_iocbq* %96, %struct.lpfc_iocbq* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %139

101:                                              ; preds = %94
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %103 = load i32, i32* @KERN_ERR, align 4
  %104 = load i32, i32* @LOG_ELS, align 4
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %118 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %107, i64 %110, i32 %116, i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = call i64 @lpfc_error_lost_link(%struct.TYPE_7__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %101
  br label %139

125:                                              ; preds = %101
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %129 = load i32, i32* @NLP_EVT_CMPL_PRLI, align 4
  %130 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %126, %struct.lpfc_nodelist* %127, %struct.lpfc_iocbq* %128, i32 %129)
  br label %131

131:                                              ; preds = %125
  br label %138

132:                                              ; preds = %89
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %136 = load i32, i32* @NLP_EVT_CMPL_PRLI, align 4
  %137 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %133, %struct.lpfc_nodelist* %134, %struct.lpfc_iocbq* %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %131
  br label %139

139:                                              ; preds = %138, %124, %100, %88
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %142 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %140, %struct.lpfc_iocbq* %141)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, i32, ...) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_els_retry(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i64 @lpfc_error_lost_link(%struct.TYPE_7__*) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
