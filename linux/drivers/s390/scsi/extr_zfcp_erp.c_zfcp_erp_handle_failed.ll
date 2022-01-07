; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_handle_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_handle_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*)* @zfcp_erp_handle_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_handle_failed(i32 %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.scsi_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca %struct.zfcp_port*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.zfcp_scsi_dev*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %7, align 8
  store %struct.scsi_device* %3, %struct.scsi_device** %8, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %57 [
    i32 130, label %13
    i32 128, label %24
    i32 129, label %33
    i32 131, label %45
  ]

13:                                               ; preds = %4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %15 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %14)
  store %struct.zfcp_scsi_dev* %15, %struct.zfcp_scsi_dev** %10, align 8
  %16 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %10, align 8
  %17 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %13
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %26 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %24
  br label %57

33:                                               ; preds = %4
  %34 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %35 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %34, i32 0, i32 0
  %36 = call i32 @atomic_read(i32* %35)
  %37 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %42 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %43 = call i32 @zfcp_erp_set_port_status(%struct.zfcp_port* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %57

45:                                               ; preds = %4
  %46 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %46, i32 0, i32 0
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %54 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %55 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %4, %56, %44, %32, %23
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_set_port_status(%struct.zfcp_port*, i32) #1

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
