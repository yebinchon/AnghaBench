; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_lun_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_lun_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@EPERM = common dso_local global i32 0, align 4
@OAS_FIND_ANY_VPORT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@OAS_FIND_ANY_TARGET = common dso_local global i32 0, align 4
@NOT_OAS_ENABLED_LUN = common dso_local global i64 0, align 8
@OAS_LUN_VALID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpfc_oas_lun_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_oas_lun_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %8, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lpfc_vport*
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %99

27:                                               ; preds = %3
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wwn_to_u64(i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OAS_FIND_ANY_VPORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %99

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @wwn_to_u64(i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OAS_FIND_ANY_TARGET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %99

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 2
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 1
  %73 = call i64 @lpfc_oas_lun_get_next(%struct.lpfc_hba* %62, i32 %65, i32 %68, i32* %70, i32* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @NOT_OAS_ENABLED_LUN, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load i32, i32* @OAS_LUN_VALID, align 4
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %61
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @scnprintf(i8* %87, i64 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %83, %57, %40, %24
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @wwn_to_u64(i32) #1

declare dso_local i64 @lpfc_oas_lun_get_next(%struct.lpfc_hba*, i32, i32, i32*, i32*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
