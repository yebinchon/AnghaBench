; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_reset_init_all_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_reset_init_all_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i64, %struct.domain_device* }
%struct.domain_device = type { i32 }

@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_reset_init_all_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_reset_init_all_devices(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.hisi_sas_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 0
  %13 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %13, i64 %15
  store %struct.hisi_sas_device* %16, %struct.hisi_sas_device** %3, align 8
  %17 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %17, i32 0, i32 1
  %19 = load %struct.domain_device*, %struct.domain_device** %18, align 8
  store %struct.domain_device* %19, %struct.domain_device** %4, align 8
  %20 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %21 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %10
  %26 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %27 = icmp ne %struct.domain_device* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %10
  br label %32

29:                                               ; preds = %25
  %30 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %31 = call i32 @hisi_sas_init_device(%struct.domain_device* %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local i32 @hisi_sas_init_device(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
