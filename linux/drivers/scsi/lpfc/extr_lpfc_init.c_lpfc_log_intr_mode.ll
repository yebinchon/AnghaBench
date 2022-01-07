; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_log_intr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_log_intr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"0470 Enable INTx interrupt mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"0481 Enabled MSI interrupt mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"0480 Enabled MSI-X interrupt mode.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"0482 Illegal interrupt mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32)* @lpfc_log_intr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_log_intr_mode(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %21 [
    i32 0, label %6
    i32 1, label %11
    i32 2, label %16
  ]

6:                                                ; preds = %2
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = load i32, i32* @KERN_INFO, align 4
  %9 = load i32, i32* @LOG_INIT, align 4
  %10 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load i32, i32* @LOG_INIT, align 4
  %15 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @LOG_INIT, align 4
  %20 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* @LOG_INIT, align 4
  %25 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %16, %11, %6
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
