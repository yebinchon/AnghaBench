; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_down_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_down_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.lpfc_vport*, i32 }
%struct.lpfc_vport = type { i32 }

@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@FC_UNLOADING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_hba_down_prep(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport**, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LPFC_SLI_REV3, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @writel(i32 0, i32 %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @readl(i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 2
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %21, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FC_UNLOADING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 2
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %30, align 8
  %32 = call i32 @lpfc_cleanup_discovery_resources(%struct.lpfc_vport* %31)
  br label %69

33:                                               ; preds = %19
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %34)
  store %struct.lpfc_vport** %35, %struct.lpfc_vport*** %3, align 8
  %36 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %37 = icmp ne %struct.lpfc_vport** %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %46, i64 %48
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %49, align 8
  %51 = icmp ne %struct.lpfc_vport* %50, null
  br label %52

52:                                               ; preds = %45, %39
  %53 = phi i1 [ false, %39 ], [ %51, %45 ]
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %55, i64 %57
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %58, align 8
  %60 = call i32 @lpfc_cleanup_discovery_resources(%struct.lpfc_vport* %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %39

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %33
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %68 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %66, %struct.lpfc_vport** %67)
  br label %69

69:                                               ; preds = %65, %28
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_cleanup_discovery_resources(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
