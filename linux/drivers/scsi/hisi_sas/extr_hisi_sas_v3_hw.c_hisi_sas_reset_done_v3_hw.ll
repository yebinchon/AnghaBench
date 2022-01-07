; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_reset_done_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_reset_done_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sas_ha_struct = type { %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"FLR: hw init failed rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"FLR done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hisi_sas_reset_done_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_reset_done_v3_hw(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.sas_ha_struct* %8, %struct.sas_ha_struct** %3, align 8
  %9 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %10 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %9, i32 0, i32 0
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %10, align 8
  store %struct.hisi_hba* %11, %struct.hisi_hba** %4, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %16 = call i32 @hisi_sas_init_mem(%struct.hisi_hba* %15)
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %18 = call i32 @hw_init_v3_hw(%struct.hisi_hba* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %27 = call i32 @hisi_sas_controller_reset_done(%struct.hisi_hba* %26)
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_info(%struct.device* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %21
  ret void
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @hisi_sas_init_mem(%struct.hisi_hba*) #1

declare dso_local i32 @hw_init_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_controller_reset_done(%struct.hisi_hba*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
