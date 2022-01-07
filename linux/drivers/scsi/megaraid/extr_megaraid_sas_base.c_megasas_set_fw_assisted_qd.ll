; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_fw_assisted_qd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_fw_assisted_qd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.MR_PRIV_DEVICE*, %struct.TYPE_4__* }
%struct.MR_PRIV_DEVICE = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.megasas_instance = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@MEGASAS_DEFAULT_CMD_PER_LUN = common dso_local global i64 0, align 8
@MEGASAS_SAS_QD = common dso_local global i64 0, align 8
@MEGASAS_SATA_QD = common dso_local global i64 0, align 8
@MEGASAS_NVME_QD = common dso_local global i64 0, align 8
@UNKNOWN_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @megasas_set_fw_assisted_qd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_set_fw_assisted_qd(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.megasas_instance*, align 8
  %9 = alloca %struct.MR_PRIV_DEVICE*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @MEGASAS_DEFAULT_CMD_PER_LUN, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.megasas_instance* @megasas_lookup_instance(i32 %15)
  store %struct.megasas_instance* %16, %struct.megasas_instance** %8, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %18, align 8
  store %struct.MR_PRIV_DEVICE* %19, %struct.MR_PRIV_DEVICE** %9, align 8
  %20 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %9, align 8
  %21 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
  ]

24:                                               ; preds = %2
  %25 = load i64, i64* @MEGASAS_SAS_QD, align 8
  store i64 %25, i64* %6, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load i64, i64* @MEGASAS_SATA_QD, align 8
  store i64 %27, i64* %6, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @MEGASAS_NVME_QD, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %2, %28, %26, %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %50, %42, %33
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %55 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @UNKNOWN_DRIVE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %62, %58, %53
  %69 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %69, i64 %70)
  ret void
}

declare dso_local %struct.megasas_instance* @megasas_lookup_instance(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
