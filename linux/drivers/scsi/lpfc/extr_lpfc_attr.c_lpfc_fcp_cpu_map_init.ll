; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_cpu_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_cpu_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_MIN_CPU_MAP = common dso_local global i32 0, align 4
@LPFC_MAX_CPU_MAP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"3326 lpfc_fcp_cpu_map: %d out of range, using default\0A\00", align 1
@LPFC_HBA_CPU_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_fcp_cpu_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fcp_cpu_map_init(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPFC_SLI_REV4, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  store i32 0, i32* %13, align 8
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LPFC_MIN_CPU_MAP, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LPFC_MAX_CPU_MAP, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %35

26:                                               ; preds = %18, %14
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load i32, i32* @LOG_INIT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @LPFC_HBA_CPU_MAP, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %22, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
