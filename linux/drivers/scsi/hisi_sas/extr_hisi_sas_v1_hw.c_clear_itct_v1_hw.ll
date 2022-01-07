; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_clear_itct_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_clear_itct_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_itct* }
%struct.hisi_sas_itct = type { i32 }
%struct.hisi_sas_device = type { i64 }

@CFG_AGING_TIME = common dso_local global i32 0, align 4
@CFG_AGING_TIME_ITCT_REL_MSK = common dso_local global i32 0, align 4
@ITCT_HDR_VALID_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_device*)* @clear_itct_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_itct_v1_hw(%struct.hisi_hba* %0, %struct.hisi_sas_device* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hisi_sas_itct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* %1, %struct.hisi_sas_device** %4, align 8
  %9 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %10 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %14, i64 %15
  store %struct.hisi_sas_itct* %16, %struct.hisi_sas_itct** %6, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %18 = load i32, i32* @CFG_AGING_TIME, align 4
  %19 = call i32 @hisi_sas_read32(%struct.hisi_hba* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @CFG_AGING_TIME_ITCT_REL_MSK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %24 = load i32, i32* @CFG_AGING_TIME, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @hisi_sas_write32(%struct.hisi_hba* %23, i32 %24, i32 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %29 = load i32, i32* @CFG_AGING_TIME, align 4
  %30 = call i32 @hisi_sas_read32(%struct.hisi_hba* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @CFG_AGING_TIME_ITCT_REL_MSK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %36 = load i32, i32* @CFG_AGING_TIME, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @hisi_sas_write32(%struct.hisi_hba* %35, i32 %36, i32 %37)
  %39 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %6, align 8
  %40 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le64_to_cpu(i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @ITCT_HDR_VALID_MSK, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %7, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @cpu_to_le64(i64 %47)
  %49 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %6, align 8
  %50 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
