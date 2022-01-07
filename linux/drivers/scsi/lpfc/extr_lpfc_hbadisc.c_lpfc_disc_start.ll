; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, i64, i64, i64, i32, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i64 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"3315 Link is not up %x\0A\00", align 1
@LPFC_CLEAR_LA = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@LPFC_DISC_AUTH = common dso_local global i64 0, align 8
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"0202 Start Discovery hba state x%x Data: x%x x%x x%x\0A\00", align 1
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@FC_RSCN_DISCOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_disc_start(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 9
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %4, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @LOG_SLI, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %210

23:                                               ; preds = %1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %31

30:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPFC_VPORT_READY, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @LPFC_DISC_AUTH, align 8
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %43 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %42)
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %48 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load i32, i32* @LOG_DISCOVERY, align 4
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %68 = call i32 @lpfc_els_disc_adisc(%struct.lpfc_vport* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %210

72:                                               ; preds = %41
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %72
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FC_PT2PT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %79
  %87 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @FC_RSCN_MODE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %86
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LPFC_SLI_REV4, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %102 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %100, %struct.lpfc_vport* %101)
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %105 = call i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba* %103, %struct.lpfc_vport* %104)
  br label %210

106:                                              ; preds = %93, %86, %79, %72
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %108 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @LPFC_VPORT_READY, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %162

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %162, label %115

115:                                              ; preds = %112
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %117 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %118 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %116, %struct.lpfc_vport* %117)
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %120 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %158, label %125

125:                                              ; preds = %115
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %127 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %129 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %134 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %133)
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %137 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %135
  %141 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %142 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @spin_lock_irq(i32 %143)
  %145 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %148 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %152 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @spin_unlock_irq(i32 %153)
  %155 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %156 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %155)
  br label %157

157:                                              ; preds = %140, %135
  br label %158

158:                                              ; preds = %157, %115
  %159 = load i64, i64* @LPFC_VPORT_READY, align 8
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %161 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %209

162:                                              ; preds = %112, %106
  %163 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %164 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %210

168:                                              ; preds = %162
  %169 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %170 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @FC_RSCN_MODE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %168
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %177 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %175
  %181 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %182 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FC_RSCN_DISCOVERY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %204, label %187

187:                                              ; preds = %180
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %189 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @spin_lock_irq(i32 %190)
  %192 = load i32, i32* @FC_RSCN_MODE, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %195 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %199 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @spin_unlock_irq(i32 %200)
  %202 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %203 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %202)
  br label %207

204:                                              ; preds = %180, %175
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %206 = call i32 @lpfc_els_handle_rscn(%struct.lpfc_vport* %205)
  br label %207

207:                                              ; preds = %204, %187
  br label %208

208:                                              ; preds = %207, %168
  br label %209

209:                                              ; preds = %208, %158
  br label %210

210:                                              ; preds = %209, %167, %99, %71, %15
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_adisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_handle_rscn(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
