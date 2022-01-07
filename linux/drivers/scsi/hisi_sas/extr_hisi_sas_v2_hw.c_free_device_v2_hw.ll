; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_free_device_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_free_device_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_device = type { i32, i32, %struct.hisi_hba* }
%struct.hisi_hba = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_sas_device*)* @free_device_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_device_v2_hw(%struct.hisi_sas_device* %0) #0 {
  %2 = alloca %struct.hisi_sas_device*, align 8
  %3 = alloca %struct.hisi_hba*, align 8
  store %struct.hisi_sas_device* %0, %struct.hisi_sas_device** %2, align 8
  %4 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %4, i32 0, i32 2
  %6 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  store %struct.hisi_hba* %6, %struct.hisi_hba** %3, align 8
  %7 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @dev_is_sata(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clear_bit(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local i64 @dev_is_sata(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
