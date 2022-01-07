; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cancel_all_vport_retry_delay_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cancel_all_vport_retry_delay_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_cancel_all_vport_retry_delay_timer(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport**, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %15)
  store %struct.lpfc_vport** %16, %struct.lpfc_vport*** %3, align 8
  %17 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %18 = icmp ne %struct.lpfc_vport** %17, null
  br i1 %18, label %19, label %67

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %27, i64 %29
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %30, align 8
  %32 = icmp ne %struct.lpfc_vport* %31, null
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi i1 [ false, %20 ], [ %32, %26 ]
  br i1 %34, label %35, label %63

35:                                               ; preds = %33
  %36 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %36, i64 %38
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %39, align 8
  %41 = load i32, i32* @Fabric_DID, align 4
  %42 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %40, i32 %41)
  store %struct.lpfc_nodelist* %42, %struct.lpfc_nodelist** %4, align 8
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %44 = icmp ne %struct.lpfc_nodelist* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %46, i64 %48
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %49, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %52 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %50, %struct.lpfc_nodelist* %51)
  br label %53

53:                                               ; preds = %45, %35
  %54 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %54, i64 %56
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %57, align 8
  %59 = call i32 @lpfc_els_flush_cmd(%struct.lpfc_vport* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %20

63:                                               ; preds = %33
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %66 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %64, %struct.lpfc_vport** %65)
  br label %67

67:                                               ; preds = %63, %1
  ret void
}

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_flush_cmd(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
