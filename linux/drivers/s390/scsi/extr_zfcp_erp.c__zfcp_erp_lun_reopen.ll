; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c__zfcp_erp_lun_reopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c__zfcp_erp_lun_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

@ZFCP_ERP_ACTION_REOPEN_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32, i8*, i32)* @_zfcp_erp_lun_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zfcp_erp_lun_reopen(%struct.scsi_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zfcp_scsi_dev*, align 8
  %10 = alloca %struct.zfcp_adapter*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %11)
  store %struct.zfcp_scsi_dev* %12, %struct.zfcp_scsi_dev** %9, align 8
  %13 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %9, align 8
  %14 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %16, align 8
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %10, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @zfcp_erp_lun_block(%struct.scsi_device* %18, i32 %19)
  %21 = load i32, i32* @ZFCP_ERP_ACTION_REOPEN_LUN, align 4
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %23 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %9, align 8
  %24 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @zfcp_erp_action_enqueue(i32 %21, %struct.zfcp_adapter* %22, %struct.TYPE_2__* %25, %struct.scsi_device* %26, i8* %27, i32 %28)
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_lun_block(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_erp_action_enqueue(i32, %struct.zfcp_adapter*, %struct.TYPE_2__*, %struct.scsi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
