; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_api_table_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_api_table_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64 }

@LPFC_PCI_DEV_OC = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_api_table_setup(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @LPFC_PCI_DEV_OC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @LPFC_SLI_REV4, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @lpfc_init_api_table_setup(%struct.lpfc_hba* %18, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %17
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @lpfc_scsi_api_table_setup(%struct.lpfc_hba* %27, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @lpfc_sli_api_table_setup(%struct.lpfc_hba* %36, i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @lpfc_mbox_api_table_setup(%struct.lpfc_hba* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %41, %32, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @lpfc_init_api_table_setup(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_scsi_api_table_setup(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_sli_api_table_setup(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_mbox_api_table_setup(%struct.lpfc_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
