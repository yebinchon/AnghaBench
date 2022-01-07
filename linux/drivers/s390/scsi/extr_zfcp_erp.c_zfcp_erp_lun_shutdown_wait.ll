; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_lun_shutdown_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_lun_shutdown_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.zfcp_port* }
%struct.zfcp_port = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_NO_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_lun_shutdown_wait(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zfcp_scsi_dev*, align 8
  %7 = alloca %struct.zfcp_port*, align 8
  %8 = alloca %struct.zfcp_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %10)
  store %struct.zfcp_scsi_dev* %11, %struct.zfcp_scsi_dev** %6, align 8
  %12 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %13 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %12, i32 0, i32 0
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %13, align 8
  store %struct.zfcp_port* %14, %struct.zfcp_port** %7, align 8
  %15 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %16 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %15, i32 0, i32 0
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %16, align 8
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %8, align 8
  %18 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %19 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @write_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @ZFCP_STATUS_ERP_NO_REF, align 4
  %29 = call i32 @_zfcp_erp_lun_reopen(%struct.scsi_device* %25, i32 %26, i8* %27, i32 %28)
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @write_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %35 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %34)
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
