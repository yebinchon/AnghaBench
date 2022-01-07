; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_7__, %struct.TYPE_5__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.lpfc_iocbq* }
%struct.lpfc_vport = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }

@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ADISC cmpl:      status:x%x/x%x did:x%x\00", align 1
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@NLP_ADISC_SND = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"0104 ADISC completes to NPort x%x Data: x%x x%x x%x x%x x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"2755 ADISC failure DID:%06X Status:x%x/x%x\0A\00", align 1
@NLP_EVT_CMPL_ADISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_adisc(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 3
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %13, align 8
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %7, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %16 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.lpfc_iocbq* %17, %struct.lpfc_iocbq** %20, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 1
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %26, %struct.lpfc_nodelist** %10, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %28 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %27, i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %37, i32 %40)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_lock_irq(i32 %44)
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @NLP_ADISC_SND, align 4
  %52 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @spin_unlock_irq(i32 %61)
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
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %71, i32 %77, i32 %80, i32 %81, i64 %84)
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %87 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %3
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @spin_lock_irq(i32 %92)
  %94 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %100 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @spin_unlock_irq(i32 %101)
  br label %179

103:                                              ; preds = %3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %161

108:                                              ; preds = %103
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %110 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %112 = call i64 @lpfc_els_retry(%struct.lpfc_hba* %109, %struct.lpfc_iocbq* %110, %struct.lpfc_iocbq* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %119 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @spin_lock_irq(i32 %120)
  %122 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %124 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %128 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @spin_unlock_irq(i32 %129)
  %131 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %132 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %131)
  br label %133

133:                                              ; preds = %117, %114
  br label %179

134:                                              ; preds = %108
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %136 = load i32, i32* @KERN_ERR, align 4
  %137 = load i32, i32* @LOG_ELS, align 4
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %139 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %140, i64 %143, i32 %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %152 = call i32 @lpfc_error_lost_link(%struct.TYPE_7__* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %134
  %155 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %156 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %157 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %158 = load i32, i32* @NLP_EVT_CMPL_ADISC, align 4
  %159 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %155, %struct.lpfc_nodelist* %156, %struct.lpfc_iocbq* %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %134
  br label %167

161:                                              ; preds = %103
  %162 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %163 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %164 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %165 = load i32, i32* @NLP_EVT_CMPL_ADISC, align 4
  %166 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %162, %struct.lpfc_nodelist* %163, %struct.lpfc_iocbq* %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %160
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %172 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %177 = call i32 @lpfc_more_adisc(%struct.lpfc_vport* %176)
  br label %178

178:                                              ; preds = %175, %170, %167
  br label %179

179:                                              ; preds = %178, %133, %89
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %181 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %182 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %180, %struct.lpfc_iocbq* %181)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_els_retry(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_error_lost_link(%struct.TYPE_7__*) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_more_adisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
