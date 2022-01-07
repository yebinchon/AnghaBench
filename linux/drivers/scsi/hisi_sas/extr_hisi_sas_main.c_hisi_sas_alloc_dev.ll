; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_device = type { i64, i32, i32, i32, %struct.hisi_sas_dq*, %struct.domain_device*, %struct.hisi_hba*, i32 }
%struct.hisi_sas_dq = type { i32 }
%struct.hisi_hba = type { i32, i32, i32, %struct.hisi_sas_device*, %struct.hisi_sas_dq* }
%struct.domain_device = type { i64 }

@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@HISI_SAS_DEV_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hisi_sas_device* (%struct.domain_device*)* @hisi_sas_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hisi_sas_device* @hisi_sas_alloc_dev(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_sas_dq*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %12 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %11)
  store %struct.hisi_hba* %12, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* null, %struct.hisi_sas_device** %4, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %99, %1
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %27
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %33 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %32, i32 0, i32 3
  %34 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %34, i64 %36
  %38 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %96

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %49 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %48, i32 0, i32 4
  %50 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %50, i64 %52
  store %struct.hisi_sas_dq* %53, %struct.hisi_sas_dq** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %55, i32 0, i32 3
  %57 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %57, i64 %59
  %61 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 8
  %62 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %63 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %62, i32 0, i32 3
  %64 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %64, i64 %66
  store %struct.hisi_sas_device* %67, %struct.hisi_sas_device** %4, align 8
  %68 = load i32, i32* @HISI_SAS_DEV_INIT, align 4
  %69 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %70 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %75 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %77 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %78 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %77, i32 0, i32 6
  store %struct.hisi_hba* %76, %struct.hisi_hba** %78, align 8
  %79 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %80 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %81 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %80, i32 0, i32 5
  store %struct.domain_device* %79, %struct.domain_device** %81, align 8
  %82 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %10, align 8
  %83 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %84 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %83, i32 0, i32 4
  store %struct.hisi_sas_dq* %82, %struct.hisi_sas_dq** %84, align 8
  %85 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %86 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %85, i32 0, i32 3
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %89 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %88, i32 0, i32 3
  %90 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %90, i64 %92
  %94 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %93, i32 0, i32 2
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  br label %103

96:                                               ; preds = %31
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %101 = load i32, i32* %8, align 4
  %102 = srem i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %27

103:                                              ; preds = %42, %27
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %106 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %108 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %107, i32 0, i32 2
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  ret %struct.hisi_sas_device* %111
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
