; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_ADAPTER_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ccnigo1\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"The FCP device has been detached\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ccnoti1\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"The CHPID for the FCP device is offline\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ccnoti2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ccniop1\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"The FCP device is operational again\0A\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ccnoti4\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"The FCP device did not respond within the specified time\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ccnoti5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @zfcp_ccw_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_notify(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %8 = call %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device* %7)
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %6, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %10 = icmp ne %struct.zfcp_adapter* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %62 [
    i32 130, label %14
    i32 129, label %30
    i32 128, label %36
    i32 131, label %56
  ]

14:                                               ; preds = %12
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load i32, i32* @ZFCP_STATUS_ADAPTER_SUSPENDED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %23 = call i32 @zfcp_dbf_hba_basic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_adapter* %22)
  br label %62

24:                                               ; preds = %14
  %25 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %29 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %28, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %62

30:                                               ; preds = %12
  %31 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %35 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %34, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %62

36:                                               ; preds = %12
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 0
  %39 = call i32 @atomic_read(i32* %38)
  %40 = load i32, i32* @ZFCP_STATUS_ADAPTER_SUSPENDED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %45 = call i32 @zfcp_dbf_hba_basic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.zfcp_adapter* %44)
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %48 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %47, i32 0, i32 0
  %49 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %51 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %52 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %50, i32 %51)
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %54 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %55 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %53, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %62

56:                                               ; preds = %12
  %57 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %61 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %60, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %62

62:                                               ; preds = %12, %56, %46, %43, %30, %24, %21
  %63 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %64 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_dbf_hba_basic(i8*, %struct.zfcp_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
