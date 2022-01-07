; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_lun_strategy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_lun_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_CLOSE_ONLY = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_lun_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_lun_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.zfcp_scsi_dev*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 2
  %8 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  store %struct.scsi_device* %8, %struct.scsi_device** %4, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %9)
  store %struct.zfcp_scsi_dev* %10, %struct.zfcp_scsi_dev** %5, align 8
  %11 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %59 [
    i32 128, label %14
    i32 133, label %27
    i32 132, label %48
    i32 131, label %58
    i32 130, label %58
    i32 129, label %58
  ]

14:                                               ; preds = %1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %16 = call i32 @zfcp_erp_lun_strategy_clearstati(%struct.scsi_device* %15)
  %17 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %18 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %17, i32 0, i32 0
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %25 = call i32 @zfcp_erp_lun_strategy_close(%struct.zfcp_erp_action* %24)
  store i32 %25, i32* %2, align 4
  br label %61

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %1, %26
  %28 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %29 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %27
  %37 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %38 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %36
  %46 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %47 = call i32 @zfcp_erp_lun_strategy_open(%struct.zfcp_erp_action* %46)
  store i32 %47, i32* %2, align 4
  br label %61

48:                                               ; preds = %1
  %49 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %50 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %49, i32 0, i32 0
  %51 = call i32 @atomic_read(i32* %50)
  %52 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %48
  br label %59

58:                                               ; preds = %1, %1, %1
  br label %59

59:                                               ; preds = %1, %58, %57
  %60 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %55, %45, %43, %34, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_lun_strategy_clearstati(%struct.scsi_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_lun_strategy_close(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_lun_strategy_open(%struct.zfcp_erp_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
