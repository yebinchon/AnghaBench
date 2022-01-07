; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_bg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"1478 Registering BlockGuard with the SCSI layer\0A\00", align 1
@SHOST_DIF_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE0_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_CRC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"1475 Registering BlockGuard with the SCSI layer: mask %d  guard %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"1479 Not Registering BlockGuard with the SCSI layer, Bad protection parameters: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.Scsi_Host*)* @lpfc_setup_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_setup_bg(%struct.lpfc_hba* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %2
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %106

16:                                               ; preds = %11
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @LOG_INIT, align 4
  %20 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %28 = load i32, i32* @SHOST_DIX_TYPE0_PROTECTION, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %37 = load i32, i32* @SHOST_DIX_GUARD_CRC, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %16
  %49 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %16
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70, %64
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = load i32, i32* @LOG_INIT, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %76, %70
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @scsi_host_set_prot(%struct.Scsi_Host* %88, i32 %91)
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @scsi_host_set_guard(%struct.Scsi_Host* %93, i32 %96)
  br label %105

98:                                               ; preds = %59, %54
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* @LOG_INIT, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %87
  br label %106

106:                                              ; preds = %105, %11, %2
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @scsi_host_set_prot(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_host_set_guard(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
