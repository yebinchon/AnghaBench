; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_clear_itct_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_clear_itct_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_itct* }
%struct.hisi_sas_itct = type { i32 }
%struct.hisi_sas_device = type { i64, i32* }

@completion = common dso_local global i32 0, align 4
@ENT_INT_SRC3 = common dso_local global i32 0, align 4
@ENT_INT_SRC3_ITC_INT_MSK = common dso_local global i32 0, align 4
@ITCT_CLR_EN_MSK = common dso_local global i64 0, align 8
@ITCT_DEV_MSK = common dso_local global i64 0, align 8
@ITCT_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_device*)* @clear_itct_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_itct_v3_hw(%struct.hisi_hba* %0, %struct.hisi_sas_device* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hisi_sas_itct*, align 8
  %7 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* %1, %struct.hisi_sas_device** %4, align 8
  %8 = load i32, i32* @completion, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  %10 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %11 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %15, i64 %16
  store %struct.hisi_sas_itct* %17, %struct.hisi_sas_itct** %6, align 8
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = load i32, i32* @ENT_INT_SRC3, align 4
  %20 = call i32 @hisi_sas_read32(%struct.hisi_hba* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %21, i32 0, i32 1
  store i32* @completion, i32** %22, align 8
  %23 = load i32, i32* @ENT_INT_SRC3_ITC_INT_MSK, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %29 = load i32, i32* @ENT_INT_SRC3, align 4
  %30 = load i32, i32* @ENT_INT_SRC3_ITC_INT_MSK, align 4
  %31 = call i32 @hisi_sas_write32(%struct.hisi_hba* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = load i64, i64* @ITCT_CLR_EN_MSK, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ITCT_DEV_MSK, align 8
  %36 = and i64 %34, %35
  %37 = or i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %40 = load i32, i32* @ITCT_CLR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @hisi_sas_write32(%struct.hisi_hba* %39, i32 %40, i32 %41)
  %43 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %44 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @wait_for_completion(i32* %45)
  %47 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %6, align 8
  %48 = call i32 @memset(%struct.hisi_sas_itct* %47, i32 0, i32 4)
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @memset(%struct.hisi_sas_itct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
