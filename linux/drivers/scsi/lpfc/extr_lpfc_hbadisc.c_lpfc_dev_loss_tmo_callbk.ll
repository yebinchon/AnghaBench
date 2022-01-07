; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_dev_loss_tmo_callbk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_dev_loss_tmo_callbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, i32, %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i32, %struct.lpfc_work_evt, %struct.TYPE_4__, i32*, i32, %struct.lpfc_vport*, i32 }
%struct.lpfc_work_evt = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }
%struct.Scsi_Host = type { i32* }

@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"rport devlosscb: sid:x%x did:x%x flg:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"3181 dev_loss_callbk x%06x, rport x%px flg x%x\0A\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"6789 rport name %llx != node port name %llx\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"6790 rport name %llx dev_loss_evt pending\00", align 1
@NLP_IN_DEV_LOSS = common dso_local global i32 0, align 4
@LPFC_EVT_DEV_LOSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_dev_loss_tmo_callbk(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.lpfc_rport_data*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_work_evt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %12 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %13 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %12, i32 0, i32 2
  %14 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %13, align 8
  store %struct.lpfc_rport_data* %14, %struct.lpfc_rport_data** %3, align 8
  %15 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %15, i32 0, i32 0
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  store %struct.lpfc_nodelist* %17, %struct.lpfc_nodelist** %4, align 8
  %18 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %19 = icmp ne %struct.lpfc_nodelist* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %22 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %1
  br label %187

25:                                               ; preds = %20
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %26, i32 0, i32 6
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %27, align 8
  store %struct.lpfc_vport* %28, %struct.lpfc_vport** %5, align 8
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 1
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %30, align 8
  store %struct.lpfc_hba* %31, %struct.lpfc_hba** %7, align 8
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %32, i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 6
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %45, align 8
  %47 = load i32, i32* @KERN_INFO, align 4
  %48 = load i32, i32* @LOG_NODE, align 4
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32* %55, i32 %58)
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FC_UNLOADING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %25
  %67 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %67, i32 0, i32 0
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %68, align 8
  %70 = icmp ne %struct.lpfc_nodelist* %69, null
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %77, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %78, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 4
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %85 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %84)
  br label %86

86:                                               ; preds = %83, %66
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %91 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %90, i32 0, i32 1
  %92 = call i32 @put_device(i32* %91)
  br label %93

93:                                               ; preds = %89, %86
  br label %187

94:                                               ; preds = %25
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %187

101:                                              ; preds = %94
  %102 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %103 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @wwn_to_u64(i32 %109)
  %111 = icmp ne i64 %104, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %101
  %113 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* @LOG_NODE, align 4
  %116 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %117 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %120 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @wwn_to_u64(i32 %123)
  %125 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %118, i64 %124)
  br label %126

126:                                              ; preds = %112, %101
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %127, i32 0, i32 2
  store %struct.lpfc_work_evt* %128, %struct.lpfc_work_evt** %8, align 8
  %129 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %8, align 8
  %130 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %129, i32 0, i32 0
  %131 = call i32 @list_empty(i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %126
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %135 = load i32, i32* @KERN_ERR, align 4
  %136 = load i32, i32* @LOG_NODE, align 4
  %137 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %138 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %139)
  br label %187

141:                                              ; preds = %126
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %143 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %142)
  store %struct.Scsi_Host* %143, %struct.Scsi_Host** %6, align 8
  %144 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %145 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load i32, i32* @NLP_IN_DEV_LOSS, align 4
  %150 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %151 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %155 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %160 = call i64 @lpfc_nlp_get(%struct.lpfc_nodelist* %159)
  %161 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %8, align 8
  %162 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 0
  %165 = load i64, i64* %11, align 8
  %166 = call i32 @spin_lock_irqsave(i32* %164, i64 %165)
  %167 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %8, align 8
  %168 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %141
  %172 = load i32, i32* @LPFC_EVT_DEV_LOSS, align 4
  %173 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %8, align 8
  %174 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %8, align 8
  %176 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %175, i32 0, i32 0
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 1
  %179 = call i32 @list_add_tail(i32* %176, i32* %178)
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %181 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %180)
  br label %182

182:                                              ; preds = %171, %141
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 0
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  br label %187

187:                                              ; preds = %182, %133, %100, %93, %24
  ret void
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i64 @wwn_to_u64(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
