; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.AdapterCtlBlk = type { i32 }
%struct.DeviceCtlBlk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @dc395x_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc395x_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.DeviceCtlBlk*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.AdapterCtlBlk*
  store %struct.AdapterCtlBlk* %10, %struct.AdapterCtlBlk** %3, align 8
  %11 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.DeviceCtlBlk* @find_dcb(%struct.AdapterCtlBlk* %11, i32 %14, i32 %17)
  store %struct.DeviceCtlBlk* %18, %struct.DeviceCtlBlk** %4, align 8
  %19 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %20 = icmp ne %struct.DeviceCtlBlk* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %23 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %4, align 8
  %24 = call i32 @adapter_remove_and_free_device(%struct.AdapterCtlBlk* %22, %struct.DeviceCtlBlk* %23)
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.DeviceCtlBlk* @find_dcb(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @adapter_remove_and_free_device(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
