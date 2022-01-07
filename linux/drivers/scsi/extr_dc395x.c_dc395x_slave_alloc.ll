; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.AdapterCtlBlk = type { i32 }
%struct.DeviceCtlBlk = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @dc395x_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc395x_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.AdapterCtlBlk*
  store %struct.AdapterCtlBlk* %11, %struct.AdapterCtlBlk** %4, align 8
  %12 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.DeviceCtlBlk* @device_alloc(%struct.AdapterCtlBlk* %12, i32 %15, i32 %18)
  store %struct.DeviceCtlBlk* %19, %struct.DeviceCtlBlk** %5, align 8
  %20 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %21 = icmp ne %struct.DeviceCtlBlk* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %27 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %28 = call i32 @adapter_add_device(%struct.AdapterCtlBlk* %26, %struct.DeviceCtlBlk* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.DeviceCtlBlk* @device_alloc(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @adapter_add_device(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
