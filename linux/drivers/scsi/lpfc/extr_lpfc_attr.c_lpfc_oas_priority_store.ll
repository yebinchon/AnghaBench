; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_priority_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_priority_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i64, i64, i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_oas_priority_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_oas_priority_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_vport*
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* @EPERM, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %70

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @kstrtoul(i8* %45, i32 0, i64* %13)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %50, 127
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %44
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %70

55:                                               ; preds = %49
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %68

62:                                               ; preds = %55
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %52, %29
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
