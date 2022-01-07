; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_parse_latt_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_parse_latt_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_acqe_link = type { i32 }

@lpfc_acqe_link_fault = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"0398 Unknown link fault code: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_acqe_link*)* @lpfc_sli4_parse_latt_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_parse_latt_fault(%struct.lpfc_hba* %0, %struct.lpfc_acqe_link* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_link*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_link* %1, %struct.lpfc_acqe_link** %4, align 8
  %5 = load i32, i32* @lpfc_acqe_link_fault, align 4
  %6 = load %struct.lpfc_acqe_link*, %struct.lpfc_acqe_link** %4, align 8
  %7 = call i32 @bf_get(i32 %5, %struct.lpfc_acqe_link* %6)
  switch i32 %7, label %9 [
    i32 129, label %8
    i32 131, label %8
    i32 128, label %8
    i32 130, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = load i32, i32* @LOG_INIT, align 4
  %13 = load i32, i32* @lpfc_acqe_link_fault, align 4
  %14 = load %struct.lpfc_acqe_link*, %struct.lpfc_acqe_link** %4, align 8
  %15 = call i32 @bf_get(i32 %13, %struct.lpfc_acqe_link* %14)
  %16 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_acqe_link*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
