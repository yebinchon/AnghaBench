; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_handle_sc_creation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_handle_sc_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hv_device* }
%struct.hv_device = type { %struct.device }
%struct.device = type { i32 }
%struct.storvsc_device = type { i32, %struct.vmbus_channel** }
%struct.vmstorage_channel_properties = type { i32 }

@storvsc_ringbuffer_size = common dso_local global i32 0, align 4
@storvsc_on_channel_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to open sub-channel: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @handle_sc_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sc_creation(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.storvsc_device*, align 8
  %6 = alloca %struct.vmstorage_channel_properties, align 4
  %7 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hv_device*, %struct.hv_device** %11, align 8
  store %struct.hv_device* %12, %struct.hv_device** %3, align 8
  %13 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %14 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %16 = call %struct.storvsc_device* @get_out_stor_device(%struct.hv_device* %15)
  store %struct.storvsc_device* %16, %struct.storvsc_device** %5, align 8
  %17 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %18 = icmp ne %struct.storvsc_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %50

20:                                               ; preds = %1
  %21 = call i32 @memset(%struct.vmstorage_channel_properties* %6, i32 0, i32 4)
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %23 = load i32, i32* @storvsc_ringbuffer_size, align 4
  %24 = load i32, i32* @storvsc_ringbuffer_size, align 4
  %25 = bitcast %struct.vmstorage_channel_properties* %6 to i8*
  %26 = load i32, i32* @storvsc_on_channel_callback, align 4
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %28 = call i32 @vmbus_open(%struct.vmbus_channel* %22, i32 %23, i32 %24, i8* %25, i32 4, i32 %26, %struct.vmbus_channel* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %50

35:                                               ; preds = %20
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %37 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %38 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %37, i32 0, i32 1
  %39 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %38, align 8
  %40 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %41 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %39, i64 %42
  store %struct.vmbus_channel* %36, %struct.vmbus_channel** %43, align 8
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %48 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %47, i32 0, i32 0
  %49 = call i32 @cpumask_set_cpu(i64 %46, i32* %48)
  br label %50

50:                                               ; preds = %35, %31, %19
  ret void
}

declare dso_local %struct.storvsc_device* @get_out_stor_device(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.vmstorage_channel_properties*, i32, i32) #1

declare dso_local i32 @vmbus_open(%struct.vmbus_channel*, i32, i32, i8*, i32, i32, %struct.vmbus_channel*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
