; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_offline_eratt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_offline_eratt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32 }

@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@HS_MBRDY = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_offline_eratt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_offline_eratt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 2
  store %struct.lpfc_sli* %5, %struct.lpfc_sli** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 1
  %17 = call i32 @spin_unlock_irq(i32* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %20 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %18, i32 %19)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = call i32 @lpfc_offline(%struct.lpfc_hba* %21)
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %24 = call i32 @lpfc_reset_barrier(%struct.lpfc_hba* %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = call i32 @lpfc_sli_brdreset(%struct.lpfc_hba* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = call i32 @lpfc_hba_down_post(%struct.lpfc_hba* %33)
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = load i32, i32* @HS_MBRDY, align 4
  %37 = call i32 @lpfc_sli_brdready(%struct.lpfc_hba* %35, i32 %36)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %38)
  %40 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_reset_barrier(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdreset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_hba_down_post(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdready(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
