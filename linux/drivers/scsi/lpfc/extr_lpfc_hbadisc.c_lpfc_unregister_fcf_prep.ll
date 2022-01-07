; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_fcf_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_fcf_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i64, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32, i32, i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.Scsi_Host = type { i32 }

@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport**, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = call i64 @lpfc_fcf_inuse(%struct.lpfc_hba* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = call i32 @lpfc_unreg_hba_rpis(%struct.lpfc_hba* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 3
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %17, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 2
  store i32 %15, i32* %19, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %20)
  store %struct.lpfc_vport** %21, %struct.lpfc_vport*** %3, align 8
  %22 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %23 = icmp ne %struct.lpfc_vport** %22, null
  br i1 %23, label %24, label %128

24:                                               ; preds = %14
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %128

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %124, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %39, i64 %41
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %42, align 8
  %44 = icmp ne %struct.lpfc_vport* %43, null
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i1 [ false, %32 ], [ %44, %38 ]
  br i1 %46, label %47, label %127

47:                                               ; preds = %45
  %48 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %48, i64 %50
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %51, align 8
  %53 = load i32, i32* @Fabric_DID, align 4
  %54 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %52, i32 %53)
  store %struct.lpfc_nodelist* %54, %struct.lpfc_nodelist** %4, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %56 = icmp ne %struct.lpfc_nodelist* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %58, i64 %60
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %61, align 8
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %64 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %62, %struct.lpfc_nodelist* %63)
  br label %65

65:                                               ; preds = %57, %47
  %66 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %66, i64 %68
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %69, align 8
  %71 = call i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport* %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LPFC_SLI_REV4, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %78, i64 %80
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %81, align 8
  %83 = call i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport* %82)
  br label %84

84:                                               ; preds = %77, %65
  %85 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %85, i64 %87
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %88, align 8
  %90 = call i32 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport* %89)
  %91 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %91, i64 %93
  %95 = load %struct.lpfc_vport*, %struct.lpfc_vport** %94, align 8
  %96 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %95)
  store %struct.Scsi_Host* %96, %struct.Scsi_Host** %5, align 8
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %98 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @spin_lock_irq(i32 %99)
  %101 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %102 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %102, i64 %104
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %105, align 8
  %107 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %101
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %112, i64 %114
  %116 = load %struct.lpfc_vport*, %struct.lpfc_vport** %115, align 8
  %117 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %111
  store i32 %119, i32* %117, align 4
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %121 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @spin_unlock_irq(i32 %122)
  br label %124

124:                                              ; preds = %84
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %32

127:                                              ; preds = %45
  br label %128

128:                                              ; preds = %127, %24, %14
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %130 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %131 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %129, %struct.lpfc_vport** %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %202

134:                                              ; preds = %128
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %202, label %141

141:                                              ; preds = %134
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 3
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %143, align 8
  %145 = load i32, i32* @Fabric_DID, align 4
  %146 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %144, i32 %145)
  store %struct.lpfc_nodelist* %146, %struct.lpfc_nodelist** %4, align 8
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %148 = icmp ne %struct.lpfc_nodelist* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 3
  %152 = load %struct.lpfc_vport*, %struct.lpfc_vport** %151, align 8
  %153 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %154 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %152, %struct.lpfc_nodelist* %153)
  br label %155

155:                                              ; preds = %149, %141
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 3
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %157, align 8
  %159 = call i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport* %158)
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @LPFC_SLI_REV4, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 3
  %168 = load %struct.lpfc_vport*, %struct.lpfc_vport** %167, align 8
  %169 = call i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport* %168)
  br label %170

170:                                              ; preds = %165, %155
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 3
  %173 = load %struct.lpfc_vport*, %struct.lpfc_vport** %172, align 8
  %174 = call i32 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport* %173)
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 3
  %177 = load %struct.lpfc_vport*, %struct.lpfc_vport** %176, align 8
  %178 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %177)
  store %struct.Scsi_Host* %178, %struct.Scsi_Host** %5, align 8
  %179 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %180 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @spin_lock_irq(i32 %181)
  %183 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 3
  %186 = load %struct.lpfc_vport*, %struct.lpfc_vport** %185, align 8
  %187 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 3
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %193, align 8
  %195 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %191
  store i32 %197, i32* %195, align 4
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %199 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @spin_unlock_irq(i32 %200)
  br label %202

202:                                              ; preds = %170, %134, %128
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %204 = call i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba* %203)
  %205 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %206 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %205, i32 0, i32 3
  %207 = load %struct.lpfc_vport*, %struct.lpfc_vport** %206, align 8
  %208 = call i32 @lpfc_issue_unreg_vfi(%struct.lpfc_vport* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local i64 @lpfc_fcf_inuse(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unreg_hba_rpis(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_issue_unreg_vfi(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
