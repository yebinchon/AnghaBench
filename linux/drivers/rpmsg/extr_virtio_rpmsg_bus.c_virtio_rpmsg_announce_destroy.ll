; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_virtio_rpmsg_announce_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_virtio_rpmsg_announce_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64, %struct.device }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.virtio_rpmsg_channel = type { %struct.virtproc_info* }
%struct.virtproc_info = type { i32 }
%struct.rpmsg_ns_msg = type { i32, i32, i32 }

@VIRTIO_RPMSG_F_NS = common dso_local global i32 0, align 4
@RPMSG_NAME_SIZE = common dso_local global i32 0, align 4
@RPMSG_NS_DESTROY = common dso_local global i32 0, align 4
@RPMSG_NS_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to announce service %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @virtio_rpmsg_announce_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_rpmsg_announce_destroy(%struct.rpmsg_device* %0) #0 {
  %2 = alloca %struct.rpmsg_device*, align 8
  %3 = alloca %struct.virtio_rpmsg_channel*, align 8
  %4 = alloca %struct.virtproc_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_ns_msg, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %2, align 8
  %8 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %9 = call %struct.virtio_rpmsg_channel* @to_virtio_rpmsg_channel(%struct.rpmsg_device* %8)
  store %struct.virtio_rpmsg_channel* %9, %struct.virtio_rpmsg_channel** %3, align 8
  %10 = load %struct.virtio_rpmsg_channel*, %struct.virtio_rpmsg_channel** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_rpmsg_channel, %struct.virtio_rpmsg_channel* %10, i32 0, i32 0
  %12 = load %struct.virtproc_info*, %struct.virtproc_info** %11, align 8
  store %struct.virtproc_info* %12, %struct.virtproc_info** %4, align 8
  %13 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %14 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %13, i32 0, i32 3
  store %struct.device* %14, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %16 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %21 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load %struct.virtproc_info*, %struct.virtproc_info** %4, align 8
  %26 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VIRTIO_RPMSG_F_NS, align 4
  %29 = call i64 @virtio_has_feature(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %7, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %35 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RPMSG_NAME_SIZE, align 4
  %39 = call i32 @strncpy(i32 %33, i32 %37, i32 %38)
  %40 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %41 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @RPMSG_NS_DESTROY, align 4
  %47 = getelementptr inbounds %struct.rpmsg_ns_msg, %struct.rpmsg_ns_msg* %7, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %49 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* @RPMSG_NS_ADDR, align 4
  %52 = call i32 @rpmsg_sendto(%struct.TYPE_4__* %50, %struct.rpmsg_ns_msg* %7, i32 12, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %31
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %31
  br label %60

60:                                               ; preds = %59, %24, %19, %1
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.virtio_rpmsg_channel* @to_virtio_rpmsg_channel(%struct.rpmsg_device*) #1

declare dso_local i64 @virtio_has_feature(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @rpmsg_sendto(%struct.TYPE_4__*, %struct.rpmsg_ns_msg*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
