; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_slot_index_alloc_quirk_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_slot_index_alloc_quirk_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i8* }
%struct.domain_device = type { %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32 }

@HISI_MAX_SATA_SUPPORT_V2_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAS_QUEUE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, %struct.domain_device*)* @slot_index_alloc_quirk_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_index_alloc_quirk_v2_hw(%struct.hisi_hba* %0, %struct.domain_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hisi_sas_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store %struct.domain_device* %1, %struct.domain_device** %5, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %14 = call i32 @dev_is_sata(%struct.domain_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 0
  %20 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %19, align 8
  store %struct.hisi_sas_device* %20, %struct.hisi_sas_device** %8, align 8
  %21 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %8, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %28 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @HISI_MAX_SATA_SUPPORT_V2_HW, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 64, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 2
  %43 = mul nsw i32 64, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %46 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %45, i32 0, i32 1
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %73
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %52 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @find_next_zero_bit(i8* %50, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %61 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %60, i32 0, i32 1
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %85

66:                                               ; preds = %49
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 1
  %70 = xor i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %49

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @set_bit(i32 %77, i8* %78)
  %80 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %81 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %80, i32 0, i32 1
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %76, %59, %34
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
