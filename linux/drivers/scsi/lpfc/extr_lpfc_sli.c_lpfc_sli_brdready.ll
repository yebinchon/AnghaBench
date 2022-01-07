; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_brdready(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to i32 (%struct.lpfc_hba*, i32)**
  %8 = load i32 (%struct.lpfc_hba*, i32)*, i32 (%struct.lpfc_hba*, i32)** %7, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 %8(%struct.lpfc_hba* %9, i32 %10)
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
