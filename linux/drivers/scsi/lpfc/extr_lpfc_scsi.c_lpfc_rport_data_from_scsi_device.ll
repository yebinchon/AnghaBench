; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_rport_data_from_scsi_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_rport_data_from_scsi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_rport_data = type { i32 }
%struct.scsi_device = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_vport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_device_data = type { %struct.lpfc_rport_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_rport_data* (%struct.scsi_device*)* @lpfc_rport_data_from_scsi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.lpfc_rport_data*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %4, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_device_data*
  %22 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %21, i32 0, i32 0
  %23 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %22, align 8
  store %struct.lpfc_rport_data* %23, %struct.lpfc_rport_data** %2, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lpfc_rport_data*
  store %struct.lpfc_rport_data* %28, %struct.lpfc_rport_data** %2, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %2, align 8
  ret %struct.lpfc_rport_data* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
