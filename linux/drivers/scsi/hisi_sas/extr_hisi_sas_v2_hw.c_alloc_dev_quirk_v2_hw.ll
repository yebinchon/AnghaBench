; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_alloc_dev_quirk_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_alloc_dev_quirk_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_device = type { i64, i32, i32, i32, i32, %struct.hisi_sas_dq*, %struct.domain_device*, %struct.hisi_hba*, i32 }
%struct.hisi_sas_dq = type { i32 }
%struct.hisi_hba = type { i32, i32, %struct.hisi_sas_device*, %struct.hisi_sas_dq* }
%struct.domain_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hisi_hba* }

@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@HISI_SAS_DEV_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hisi_sas_device* (%struct.domain_device*)* @alloc_dev_quirk_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hisi_sas_device* @alloc_dev_quirk_v2_hw(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_sas_dq*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %16, align 8
  store %struct.hisi_hba* %17, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* null, %struct.hisi_sas_device** %4, align 8
  %18 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %19 = call i32 @dev_is_sata(%struct.domain_device* %18)
  store i32 %19, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %28 = call i32 @sata_index_alloc_v2_hw(%struct.hisi_hba* %27, i32* %7)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %118

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %1
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %114, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %114

45:                                               ; preds = %40, %37
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %47 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %46, i32 0, i32 2
  %48 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %48, i64 %50
  %52 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %113

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %59 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = srem i32 %57, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %63 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %62, i32 0, i32 3
  %64 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %64, i64 %66
  store %struct.hisi_sas_dq* %67, %struct.hisi_sas_dq** %10, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %70 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %69, i32 0, i32 2
  %71 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %71, i64 %73
  %75 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %74, i32 0, i32 1
  store i32 %68, i32* %75, align 8
  %76 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %77 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %76, i32 0, i32 2
  %78 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %78, i64 %80
  store %struct.hisi_sas_device* %81, %struct.hisi_sas_device** %4, align 8
  %82 = load i32, i32* @HISI_SAS_DEV_INIT, align 4
  %83 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %84 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %86 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %89 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %91 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %92 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %91, i32 0, i32 7
  store %struct.hisi_hba* %90, %struct.hisi_hba** %92, align 8
  %93 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %94 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %95 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %94, i32 0, i32 6
  store %struct.domain_device* %93, %struct.domain_device** %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %98 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %10, align 8
  %100 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %101 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %100, i32 0, i32 5
  store %struct.hisi_sas_dq* %99, %struct.hisi_sas_dq** %101, align 8
  %102 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %103 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %102, i32 0, i32 4
  %104 = call i32 @spin_lock_init(i32* %103)
  %105 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %106 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %105, i32 0, i32 2
  %107 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %107, i64 %109
  %111 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %110, i32 0, i32 3
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  br label %117

113:                                              ; preds = %45
  br label %114

114:                                              ; preds = %113, %44
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %33

117:                                              ; preds = %56, %33
  br label %118

118:                                              ; preds = %117, %30
  %119 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %120 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %119, i32 0, i32 1
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  ret %struct.hisi_sas_device* %123
}

declare dso_local i32 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sata_index_alloc_v2_hw(%struct.hisi_hba*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
