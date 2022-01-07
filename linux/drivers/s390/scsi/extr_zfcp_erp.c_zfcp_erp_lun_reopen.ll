; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_lun_reopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_lun_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.zfcp_port* }
%struct.zfcp_port = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_lun_reopen(%struct.scsi_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zfcp_scsi_dev*, align 8
  %9 = alloca %struct.zfcp_port*, align 8
  %10 = alloca %struct.zfcp_adapter*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %11)
  store %struct.zfcp_scsi_dev* %12, %struct.zfcp_scsi_dev** %8, align 8
  %13 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %8, align 8
  %14 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %13, i32 0, i32 0
  %15 = load %struct.zfcp_port*, %struct.zfcp_port** %14, align 8
  store %struct.zfcp_port* %15, %struct.zfcp_port** %9, align 8
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %17 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %16, i32 0, i32 0
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %17, align 8
  store %struct.zfcp_adapter* %18, %struct.zfcp_adapter** %10, align 8
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @write_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @_zfcp_erp_lun_reopen(%struct.scsi_device* %23, i32 %24, i8* %25, i32 0)
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @write_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
