; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_clr_rrq_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_clr_rrq_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_node_rrq = type { i64, i64, i64, %struct.lpfc_nodelist*, i32, i64 }
%struct.lpfc_nodelist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_clr_rrq_active(%struct.lpfc_hba* %0, i32 %1, %struct.lpfc_node_rrq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_node_rrq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.lpfc_node_rrq* %2, %struct.lpfc_node_rrq** %6, align 8
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %8 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %9 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %13, i32 0, i32 3
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %16 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.lpfc_nodelist* @lpfc_findnode_did(i64 %21, i32 %24)
  store %struct.lpfc_nodelist* %25, %struct.lpfc_nodelist** %7, align 8
  br label %26

26:                                               ; preds = %18, %12, %3
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %28 = icmp ne %struct.lpfc_nodelist* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %30, i32 0, i32 3
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %31, align 8
  %33 = icmp ne %struct.lpfc_nodelist* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %35, i32 0, i32 3
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %36, align 8
  store %struct.lpfc_nodelist* %37, %struct.lpfc_nodelist** %7, align 8
  br label %38

38:                                               ; preds = %34, %29, %26
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %40 = icmp ne %struct.lpfc_nodelist* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @test_and_clear_bit(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %6, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mempool_free(%struct.lpfc_node_rrq* %58, i32 %61)
  ret void
}

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(i64, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @mempool_free(%struct.lpfc_node_rrq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
