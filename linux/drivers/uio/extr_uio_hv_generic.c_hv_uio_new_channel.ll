; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_hv_generic.c_hv_uio_new_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_hv_generic.c_hv_uio_new_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.hv_device* }
%struct.hv_device = type { %struct.device }
%struct.device = type { i32 }

@HV_RING_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@hv_uio_channel_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vmbus_open subchannel failed: %d\0A\00", align 1
@HV_CALL_ISR = common dso_local global i32 0, align 4
@ring_buffer_bin_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"sysfs create ring bin file failed; %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @hv_uio_new_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_uio_new_channel(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %8 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.hv_device*, %struct.hv_device** %10, align 8
  store %struct.hv_device* %11, %struct.hv_device** %3, align 8
  %12 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %13 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i64, i64* @HV_RING_SIZE, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @hv_uio_channel_cb, align 4
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %22 = call i32 @vmbus_open(%struct.vmbus_channel* %17, i64 %18, i64 %19, i32* null, i32 0, i32 %20, %struct.vmbus_channel* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %49

29:                                               ; preds = %1
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %36 = load i32, i32* @HV_CALL_ISR, align 4
  %37 = call i32 @set_channel_read_mode(%struct.vmbus_channel* %35, i32 %36)
  %38 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %38, i32 0, i32 0
  %40 = call i32 @sysfs_create_bin_file(i32* %39, i32* @ring_buffer_bin_attr)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %48 = call i32 @vmbus_close(%struct.vmbus_channel* %47)
  br label %49

49:                                               ; preds = %25, %43, %29
  ret void
}

declare dso_local i32 @vmbus_open(%struct.vmbus_channel*, i64, i64, i32*, i32, i32, %struct.vmbus_channel*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @set_channel_read_mode(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @vmbus_close(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
