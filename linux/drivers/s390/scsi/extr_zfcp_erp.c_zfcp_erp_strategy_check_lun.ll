; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ZFCP_MAX_ERPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ERP failed for LUN 0x%016Lx on port 0x%016Lx\0A\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @zfcp_erp_strategy_check_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_check_lun(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_scsi_dev*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %6)
  store %struct.zfcp_scsi_dev* %7, %struct.zfcp_scsi_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %46 [
    i32 128, label %9
    i32 130, label %15
    i32 133, label %45
    i32 131, label %45
    i32 132, label %45
    i32 129, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %11 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %10, i32 0, i32 2
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = call i32 @zfcp_erp_lun_unblock(%struct.scsi_device* %13)
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %17 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %16, i32 0, i32 2
  %18 = call i32 @atomic_inc(i32* %17)
  %19 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %20 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %19, i32 0, i32 2
  %21 = call i32 @atomic_read(i32* %20)
  %22 = load i32, i32* @ZFCP_MAX_ERPS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %26 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = call i64 @zfcp_scsi_dev_lun(%struct.scsi_device* %33)
  %35 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %36 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %39)
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %43 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %41, i32 %42)
  br label %44

44:                                               ; preds = %24, %15
  br label %46

45:                                               ; preds = %2, %2, %2, %2
  br label %46

46:                                               ; preds = %2, %45, %44, %9
  %47 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %48 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %55 = call i32 @zfcp_erp_lun_block(%struct.scsi_device* %54, i32 0)
  store i32 131, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @zfcp_erp_lun_unblock(%struct.scsi_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i64 @zfcp_scsi_dev_lun(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_set_lun_status(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_erp_lun_block(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
