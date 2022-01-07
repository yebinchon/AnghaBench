; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_initial_fdisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_initial_fdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %6 = load i32, i32* @Fabric_DID, align 4
  %7 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %5, i32 %6)
  store %struct.lpfc_nodelist* %7, %struct.lpfc_nodelist** %4, align 8
  %8 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %9 = icmp ne %struct.lpfc_nodelist* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = load i32, i32* @Fabric_DID, align 4
  %13 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %11, i32 %12)
  store %struct.lpfc_nodelist* %13, %struct.lpfc_nodelist** %4, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %15 = icmp ne %struct.lpfc_nodelist* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %10
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %20 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %18, %struct.lpfc_nodelist* %19)
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %23 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %28 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %29 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %26, %struct.lpfc_nodelist* %27, i32 %28)
  store %struct.lpfc_nodelist* %29, %struct.lpfc_nodelist** %4, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %31 = icmp ne %struct.lpfc_nodelist* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %44

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %38 = call i64 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %36, %struct.lpfc_nodelist* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %42 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %41)
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %32, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_issue_els_fdisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
