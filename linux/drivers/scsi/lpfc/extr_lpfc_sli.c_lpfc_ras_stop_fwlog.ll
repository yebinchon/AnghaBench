; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_ras_stop_fwlog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_ras_stop_fwlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__, %struct.lpfc_ras_fwlog }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_ras_fwlog = type { i32 }

@LPFC_CTL_PDEV_CTL_DDL_RAS = common dso_local global i32 0, align 4
@LPFC_CTL_PDEV_CTL_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_ras_stop_fwlog(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_ras_fwlog*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 1
  store %struct.lpfc_ras_fwlog* %5, %struct.lpfc_ras_fwlog** %3, align 8
  %6 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @LPFC_CTL_PDEV_CTL_DDL_RAS, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %8, i64 %14)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
