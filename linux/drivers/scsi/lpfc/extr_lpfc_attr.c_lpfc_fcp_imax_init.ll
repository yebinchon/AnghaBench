; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_imax_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_imax_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_MIN_IMAX = common dso_local global i32 0, align 4
@LPFC_MAX_IMAX = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"3016 lpfc_fcp_imax: %d out of range, using default\0A\00", align 1
@LPFC_DEF_IMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_fcp_imax_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fcp_imax_init(%struct.lpfc_hba* %0, i32 %1) #0 {
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
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LPFC_MIN_IMAX, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LPFC_MAX_IMAX, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %3, align 4
  br label %38

29:                                               ; preds = %22
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @LPFC_DEF_IMAX, align 4
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %25, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
