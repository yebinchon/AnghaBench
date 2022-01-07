; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_fatal_ecc_int_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_fatal_ecc_int_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@SAS_ECC_INTR_MSK = common dso_local global i32 0, align 4
@SAS_ECC_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @fatal_ecc_int_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fatal_ecc_int_v3_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = load i32, i32* @SAS_ECC_INTR_MSK, align 4
  %7 = call i32 @hisi_sas_read32(%struct.hisi_hba* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %9 = load i32, i32* @SAS_ECC_INTR_MSK, align 4
  %10 = call i32 @hisi_sas_write32(%struct.hisi_hba* %8, i32 %9, i32 -1)
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %12 = load i32, i32* @SAS_ECC_INTR, align 4
  %13 = call i32 @hisi_sas_read32(%struct.hisi_hba* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @multi_bit_ecc_error_process_v3_hw(%struct.hisi_hba* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %22 = load i32, i32* @SAS_ECC_INTR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @hisi_sas_write32(%struct.hisi_hba* %21, i32 %22, i32 %23)
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %26 = load i32, i32* @SAS_ECC_INTR_MSK, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @hisi_sas_write32(%struct.hisi_hba* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @multi_bit_ecc_error_process_v3_hw(%struct.hisi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
