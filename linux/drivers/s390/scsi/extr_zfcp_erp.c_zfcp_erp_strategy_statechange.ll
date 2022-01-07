; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_statechange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_statechange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.scsi_device*, %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.scsi_device = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_scsi_dev = type { i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ersscg1\00", align 1
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ersscg2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ersscg3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*, i32)* @zfcp_erp_strategy_statechange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_statechange(%struct.zfcp_erp_action* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_erp_action*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_port*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.zfcp_scsi_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %16 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %15, i32 0, i32 4
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %16, align 8
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %7, align 8
  %18 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %19 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %18, i32 0, i32 3
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %19, align 8
  store %struct.zfcp_port* %20, %struct.zfcp_port** %8, align 8
  %21 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %21, i32 0, i32 2
  %23 = load %struct.scsi_device*, %struct.scsi_device** %22, align 8
  store %struct.scsi_device* %23, %struct.scsi_device** %9, align 8
  %24 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %66 [
    i32 131, label %28
    i32 128, label %40
    i32 129, label %40
    i32 130, label %52
  ]

28:                                               ; preds = %2
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @zfcp_erp_strat_change_det(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %36 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %37 = call i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %35, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %28
  br label %66

40:                                               ; preds = %2, %2
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %42 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %41, i32 0, i32 0
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @zfcp_erp_strat_change_det(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %48 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %49 = call i32 @_zfcp_erp_port_reopen(%struct.zfcp_port* %47, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %50, i32* %3, align 4
  br label %68

51:                                               ; preds = %40
  br label %66

52:                                               ; preds = %2
  %53 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %54 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %53)
  store %struct.zfcp_scsi_dev* %54, %struct.zfcp_scsi_dev** %10, align 8
  %55 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %10, align 8
  %56 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @zfcp_erp_strat_change_det(i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %62 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %63 = call i32 @_zfcp_erp_lun_reopen(%struct.scsi_device* %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %64 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %2, %65, %51, %39
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %60, %46, %34
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @zfcp_erp_strat_change_det(i32*, i32) #1

declare dso_local i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @_zfcp_erp_port_reopen(%struct.zfcp_port*, i32, i8*) #1

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @_zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
