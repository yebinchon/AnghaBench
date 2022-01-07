; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_enable_bbcr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_enable_bbcr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"3068 %s_enable_bbcr changed from %d to %d\0A\00", align 1
@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"0451 %s_enable_bbcr cannot set to %d, range is 0, 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_enable_bbcr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_enable_bbcr_set(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @lpfc_rangecheck(i32 %6, i32 0, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPFC_SLI_REV4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @LOG_INIT, align 4
  %19 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %37

28:                                               ; preds = %9, %2
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @LOG_INIT, align 4
  %32 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @lpfc_rangecheck(i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
