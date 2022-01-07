; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_debugfs.c_lpfc_debug_dump_all_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_debugfs.c_lpfc_debug_dump_all_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

@DUMP_MBX = common dso_local global i32 0, align 4
@DUMP_ELS = common dso_local global i32 0, align 4
@DUMP_NVMELS = common dso_local global i32 0, align 4
@DUMP_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_debug_dump_all_queues(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = load i32, i32* @DUMP_MBX, align 4
  %6 = call i32 @lpfc_debug_dump_wq(%struct.lpfc_hba* %4, i32 %5, i32 0)
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = load i32, i32* @DUMP_ELS, align 4
  %9 = call i32 @lpfc_debug_dump_wq(%struct.lpfc_hba* %7, i32 %8, i32 0)
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = load i32, i32* @DUMP_NVMELS, align 4
  %12 = call i32 @lpfc_debug_dump_wq(%struct.lpfc_hba* %10, i32 %11, i32 0)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %24, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = load i32, i32* @DUMP_IO, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @lpfc_debug_dump_wq(%struct.lpfc_hba* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = call i32 @lpfc_debug_dump_hdr_rq(%struct.lpfc_hba* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = call i32 @lpfc_debug_dump_dat_rq(%struct.lpfc_hba* %30)
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = load i32, i32* @DUMP_MBX, align 4
  %34 = call i32 @lpfc_debug_dump_cq(%struct.lpfc_hba* %32, i32 %33, i32 0)
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = load i32, i32* @DUMP_ELS, align 4
  %37 = call i32 @lpfc_debug_dump_cq(%struct.lpfc_hba* %35, i32 %36, i32 0)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = load i32, i32* @DUMP_NVMELS, align 4
  %40 = call i32 @lpfc_debug_dump_cq(%struct.lpfc_hba* %38, i32 %39, i32 0)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %52, %27
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = load i32, i32* @DUMP_IO, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @lpfc_debug_dump_cq(%struct.lpfc_hba* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %41

55:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @lpfc_debug_dump_hba_eq(%struct.lpfc_hba* %63, i32 %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %56

69:                                               ; preds = %56
  ret void
}

declare dso_local i32 @lpfc_debug_dump_wq(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_debug_dump_hdr_rq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_dat_rq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_cq(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_debug_dump_hba_eq(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
