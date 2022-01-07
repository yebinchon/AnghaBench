; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.hpsa_scsi_dev_t*, i32 }
%struct.hpsa_scsi_dev_t = type { i32, i64, i32, i32 }
%struct.ctlr_info = type { i32 }
%struct.scsi_target = type { i32 }
%struct.sas_rphy = type { i32 }

@HPSA_PHYSICAL_DEVICE_BUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @hpsa_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.scsi_target*, align 8
  %7 = alloca %struct.sas_rphy*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  store %struct.hpsa_scsi_dev_t* null, %struct.hpsa_scsi_dev_t** %3, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %9 = call %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device* %8)
  store %struct.ctlr_info* %9, %struct.ctlr_info** %5, align 8
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = call i64 @sdev_channel(%struct.scsi_device* %14)
  %16 = load i64, i64* @HPSA_PHYSICAL_DEVICE_BUS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %19)
  store %struct.scsi_target* %20, %struct.scsi_target** %6, align 8
  %21 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %22 = call %struct.sas_rphy* @target_to_rphy(%struct.scsi_target* %21)
  store %struct.sas_rphy* %22, %struct.sas_rphy** %7, align 8
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %24 = load %struct.sas_rphy*, %struct.sas_rphy** %7, align 8
  %25 = call %struct.hpsa_scsi_dev_t* @hpsa_find_device_by_sas_rphy(%struct.ctlr_info* %23, %struct.sas_rphy* %24)
  store %struct.hpsa_scsi_dev_t* %25, %struct.hpsa_scsi_dev_t** %3, align 8
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %27 = icmp ne %struct.hpsa_scsi_dev_t* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %30 = call i32 @sdev_id(%struct.scsi_device* %29)
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %37 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %18
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %41 = icmp ne %struct.hpsa_scsi_dev_t* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %44 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %45 = call i64 @sdev_channel(%struct.scsi_device* %44)
  %46 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %47 = call i32 @sdev_id(%struct.scsi_device* %46)
  %48 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.hpsa_scsi_dev_t* @lookup_hpsa_scsi_dev(%struct.ctlr_info* %43, i64 %45, i32 %47, i32 %50)
  store %struct.hpsa_scsi_dev_t* %51, %struct.hpsa_scsi_dev_t** %3, align 8
  br label %52

52:                                               ; preds = %42, %39
  %53 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %54 = icmp ne %struct.hpsa_scsi_dev_t* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %57 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %62 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %61, i32 0, i32 0
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %65 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  store %struct.hpsa_scsi_dev_t* %64, %struct.hpsa_scsi_dev_t** %66, align 8
  br label %70

67:                                               ; preds = %55, %52
  %68 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %69 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %68, i32 0, i32 0
  store %struct.hpsa_scsi_dev_t* null, %struct.hpsa_scsi_dev_t** %69, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %72 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %71, i32 0, i32 0
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret i32 0
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sdev_channel(%struct.scsi_device*) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.sas_rphy* @target_to_rphy(%struct.scsi_target*) #1

declare dso_local %struct.hpsa_scsi_dev_t* @hpsa_find_device_by_sas_rphy(%struct.ctlr_info*, %struct.sas_rphy*) #1

declare dso_local i32 @sdev_id(%struct.scsi_device*) #1

declare dso_local %struct.hpsa_scsi_dev_t* @lookup_hpsa_scsi_dev(%struct.ctlr_info*, i64, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
