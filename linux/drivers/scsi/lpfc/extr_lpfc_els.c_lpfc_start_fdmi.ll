; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_start_fdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_start_fdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }

@FDMI_DID = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*)* @lpfc_start_fdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_start_fdmi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %4 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %5 = load i32, i32* @FDMI_DID, align 4
  %6 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %4, i32 %5)
  store %struct.lpfc_nodelist* %6, %struct.lpfc_nodelist** %3, align 8
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %8 = icmp ne %struct.lpfc_nodelist* %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = load i32, i32* @FDMI_DID, align 4
  %12 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %10, i32 %11)
  store %struct.lpfc_nodelist* %12, %struct.lpfc_nodelist** %3, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %14 = icmp ne %struct.lpfc_nodelist* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* @NLP_FABRIC, align 4
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %22

21:                                               ; preds = %9
  br label %45

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %25 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %30 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %31 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %28, %struct.lpfc_nodelist* %29, i32 %30)
  store %struct.lpfc_nodelist* %31, %struct.lpfc_nodelist** %3, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %34 = icmp ne %struct.lpfc_nodelist* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %38 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %39 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %36, %struct.lpfc_nodelist* %37, i32 %38)
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %40, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %21, %35, %32
  ret void
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
