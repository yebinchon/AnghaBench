; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_setup_disc_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_setup_disc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i64 }
%struct.lpfc_vport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.Scsi_Host = type { i32 }

@FC_RSCN_MODE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"0014 Could not enable ndlp\0A\00", align 1
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@NLP_RCV_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i64 0, align 8
@NLP_STE_PLOGI_ISSUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %9 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %10, i32 %11)
  store %struct.lpfc_nodelist* %12, %struct.lpfc_nodelist** %7, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %14 = icmp ne %struct.lpfc_nodelist* %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %2
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

23:                                               ; preds = %15
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FC_RSCN_MODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @lpfc_rscn_payload_check(%struct.lpfc_vport* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

36:                                               ; preds = %30, %23
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %37, i32 %38)
  store %struct.lpfc_nodelist* %39, %struct.lpfc_nodelist** %7, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = icmp ne %struct.lpfc_nodelist* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

43:                                               ; preds = %36
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %46 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %47 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %44, %struct.lpfc_nodelist* %45, i32 %46)
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @spin_lock_irq(i32 %50)
  %52 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @spin_unlock_irq(i32 %59)
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %61, %struct.lpfc_nodelist** %3, align 8
  br label %213

62:                                               ; preds = %2
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %64 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %101, label %66

66:                                               ; preds = %62
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

74:                                               ; preds = %66
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %77 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %78 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %75, %struct.lpfc_nodelist* %76, i32 %77)
  store %struct.lpfc_nodelist* %78, %struct.lpfc_nodelist** %7, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %80 = icmp ne %struct.lpfc_nodelist* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %83 = load i32, i32* @KERN_WARNING, align 4
  %84 = load i32, i32* @LOG_SLI, align 4
  %85 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

86:                                               ; preds = %74
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spin_lock_irq(i32 %89)
  %91 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @spin_unlock_irq(i32 %98)
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %100, %struct.lpfc_nodelist** %3, align 8
  br label %213

101:                                              ; preds = %62
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FC_RSCN_MODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %157

109:                                              ; preds = %102
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %157, label %116

116:                                              ; preds = %109
  %117 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @lpfc_rscn_payload_check(%struct.lpfc_vport* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %116
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %124 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %122, %struct.lpfc_nodelist* %123)
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %126 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %132, %struct.lpfc_nodelist** %3, align 8
  br label %213

133:                                              ; preds = %121
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %135 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NLP_RCV_PLOGI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

141:                                              ; preds = %133
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %143 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @spin_lock_irq(i32 %144)
  %146 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %148 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %152 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @spin_unlock_irq(i32 %153)
  br label %156

155:                                              ; preds = %116
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  br label %156

156:                                              ; preds = %155, %141
  br label %211

157:                                              ; preds = %109, %102
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NLP_STE_ADISC_ISSUE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %183, label %163

163:                                              ; preds = %157
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %165 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NLP_STE_PLOGI_ISSUE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %183, label %169

169:                                              ; preds = %163
  %170 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %171 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %169
  %177 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %178 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @NLP_RCV_PLOGI, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176, %163, %157
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %213

184:                                              ; preds = %176, %169
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %186 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %192, %struct.lpfc_nodelist** %3, align 8
  br label %213

193:                                              ; preds = %184
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %195 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %196 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %197 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %194, %struct.lpfc_nodelist* %195, i32 %196)
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %199 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @spin_lock_irq(i32 %200)
  %202 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %203 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %204 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %208 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @spin_unlock_irq(i32 %209)
  br label %211

211:                                              ; preds = %193, %156
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %212, %struct.lpfc_nodelist** %3, align 8
  br label %213

213:                                              ; preds = %211, %191, %183, %140, %131, %86, %81, %73, %43, %42, %35, %22
  %214 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  ret %struct.lpfc_nodelist* %214
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @lpfc_rscn_payload_check(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
