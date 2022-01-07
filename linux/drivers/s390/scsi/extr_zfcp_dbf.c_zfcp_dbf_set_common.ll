; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_set_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_set_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf_rec = type { i32, i8*, i32, i32, i8*, i8* }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32, i32, i32 }
%struct.scsi_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ZFCP_DBF_INVALID_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_dbf_rec*, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*)* @zfcp_dbf_set_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_set_common(%struct.zfcp_dbf_rec* %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.scsi_device* %3) #0 {
  %5 = alloca %struct.zfcp_dbf_rec*, align 8
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca %struct.zfcp_port*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  store %struct.zfcp_dbf_rec* %0, %struct.zfcp_dbf_rec** %5, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %7, align 8
  store %struct.scsi_device* %3, %struct.scsi_device** %8, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 0
  %11 = call i8* @atomic_read(i32* %10)
  %12 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %15 = icmp ne %struct.zfcp_port* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %18 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %17, i32 0, i32 2
  %19 = call i8* @atomic_read(i32* %18)
  %20 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %21 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %23 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %26 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %28 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %16, %4
  %33 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %34 = icmp ne %struct.scsi_device* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %37 = call %struct.TYPE_2__* @sdev_to_zfcp(%struct.scsi_device* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i8* @atomic_read(i32* %38)
  %40 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %41 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %43 = call i32 @zfcp_scsi_dev_lun(%struct.scsi_device* %42)
  %44 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i32, i32* @ZFCP_DBF_INVALID_LUN, align 4
  %48 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %5, align 8
  %49 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %35
  ret void
}

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_scsi_dev_lun(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
