; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_clear_itct_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_clear_itct_v2_hw.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_device*)* @clear_itct_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_itct_v2_hw(%struct.hisi_hba* %0, %struct.hisi_sas_device* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hisi_sas_itct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* %1, %struct.hisi_sas_device** %4, align 8
  %9 = load i32, i32* @completion, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  %11 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %12 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 0
  %16 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %16, i64 %17
  store %struct.hisi_sas_itct* %18, %struct.hisi_sas_itct** %6, align 8
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %20 = load i32, i32* @ENT_INT_SRC3, align 4
  %21 = call i32 @hisi_sas_read32(%struct.hisi_hba* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %22, i32 0, i32 1
  store i32* @completion, i32** %23, align 8
  %24 = load i32, i32* @ENT_INT_SRC3_ITC_INT_MSK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %30 = load i32, i32* @ENT_INT_SRC3, align 4
  %31 = load i32, i32* @ENT_INT_SRC3_ITC_INT_MSK, align 4
  %32 = call i32 @hisi_sas_write32(%struct.hisi_hba* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i64, i64* @ITCT_CLR_EN_MSK, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @ITCT_DEV_MSK, align 8
  %41 = and i64 %39, %40
  %42 = or i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %45 = load i32, i32* @ITCT_CLR, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hisi_sas_write32(%struct.hisi_hba* %44, i32 %45, i32 %46)
  %48 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %49 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %6, align 8
  %53 = call i32 @memset(%struct.hisi_sas_itct* %52, i32 0, i32 4)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %34

57:                                               ; preds = %34
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
