; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_lun_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_lun_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i64, i64, i32, i32, i32, i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@EPERM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"3372 Try to set vport 0x%llx target 0x%llx lun:0x%llx priority 0x%x with oas state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_oas_lun_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_oas_lun_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* @EPERM, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %111

30:                                               ; preds = %4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wwn_to_u64(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @EFAULT, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %111

39:                                               ; preds = %30
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @wwn_to_u64(i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @EFAULT, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %111

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isdigit(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %111

57:                                               ; preds = %48
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @sscanf(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %12)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* @EINVAL, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %111

64:                                               ; preds = %57
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load i32, i32* @LOG_INIT, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @wwn_to_u64(i32 %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @wwn_to_u64(i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %85, i32 %86, i64 %87, i32 %90)
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @lpfc_oas_lun_state_change(%struct.lpfc_hba* %92, i32 %95, i32 %98, i32 %99, i32 %102, i64 %103)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %74
  %108 = load i64, i64* %14, align 8
  store i64 %108, i64* %5, align 8
  br label %111

109:                                              ; preds = %74
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %109, %107, %61, %54, %45, %36, %27
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @wwn_to_u64(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i32, i64, i32) #1

declare dso_local i64 @lpfc_oas_lun_state_change(%struct.lpfc_hba*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
