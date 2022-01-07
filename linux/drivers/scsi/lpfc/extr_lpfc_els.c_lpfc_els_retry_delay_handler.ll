; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_LOGO_ISSUE = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_els_retry_delay_handler(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %2, align 8
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %7, i32 0, i32 7
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %9, %struct.lpfc_vport** %3, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @spin_lock_irq(i32 %14)
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NLP_DELAY_TMO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @spin_unlock_irq(i32 %30)
  br label %141

32:                                               ; preds = %1
  %33 = load i32, i32* @NLP_DELAY_TMO, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @spin_unlock_irq(i32 %41)
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 6
  %45 = call i32 @del_timer_sync(i32* %44)
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  switch i32 %51, label %140 [
    i32 132, label %52
    i32 129, label %57
    i32 134, label %76
    i32 128, label %93
    i32 130, label %93
    i32 131, label %110
    i32 133, label %127
  ]

52:                                               ; preds = %32
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @lpfc_issue_els_flogi(%struct.lpfc_vport* %53, %struct.lpfc_nodelist* %54, i32 %55)
  br label %140

57:                                               ; preds = %32
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %58, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %57
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %73 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %74 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %71, %struct.lpfc_nodelist* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %57
  br label %140

76:                                               ; preds = %32
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %77, %struct.lpfc_nodelist* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %76
  %83 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %90 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %91 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %88, %struct.lpfc_nodelist* %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %76
  br label %140

93:                                               ; preds = %32, %32
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %94, %struct.lpfc_nodelist* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %93
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %101 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %104 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %107 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %108 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %105, %struct.lpfc_nodelist* %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %93
  br label %140

110:                                              ; preds = %32
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %111, %struct.lpfc_nodelist* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %110
  %117 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %118 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %121 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %124 = load i32, i32* @NLP_STE_LOGO_ISSUE, align 4
  %125 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %122, %struct.lpfc_nodelist* %123, i32 %124)
  br label %126

126:                                              ; preds = %116, %110
  br label %140

127:                                              ; preds = %32
  %128 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %129 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %127
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %136 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %135, %struct.lpfc_nodelist* %136, i32 %137)
  br label %139

139:                                              ; preds = %134, %127
  br label %140

140:                                              ; preds = %32, %139, %126, %109, %92, %75, %52
  br label %141

141:                                              ; preds = %140, %27
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpfc_issue_els_flogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
