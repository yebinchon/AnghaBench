; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_create_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_6__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.virtproc_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.rpmsg_channel_info = type { i64, i32, i32 }
%struct.virtio_rpmsg_channel = type { %struct.rpmsg_device, %struct.virtproc_info* }

@.str = private unnamed_addr constant [32 x i8] c"channel %s:%x:%x already exist\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@virtio_rpmsg_ops = common dso_local global i32 0, align 4
@RPMSG_ADDR_ANY = common dso_local global i64 0, align 8
@RPMSG_NAME_SIZE = common dso_local global i32 0, align 4
@virtio_rpmsg_release_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpmsg_device* (%struct.virtproc_info*, %struct.rpmsg_channel_info*)* @rpmsg_create_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpmsg_device* @rpmsg_create_channel(%struct.virtproc_info* %0, %struct.rpmsg_channel_info* %1) #0 {
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.virtproc_info*, align 8
  %5 = alloca %struct.rpmsg_channel_info*, align 8
  %6 = alloca %struct.virtio_rpmsg_channel*, align 8
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.virtproc_info* %0, %struct.virtproc_info** %4, align 8
  store %struct.rpmsg_channel_info* %1, %struct.rpmsg_channel_info** %5, align 8
  %11 = load %struct.virtproc_info*, %struct.virtproc_info** %4, align 8
  %12 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %17 = call %struct.device* @rpmsg_find_device(%struct.device* %15, %struct.rpmsg_channel_info* %16)
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = call i32 @put_device(%struct.device* %21)
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %25 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %28 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %31 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29, i32 %32)
  store %struct.rpmsg_device* null, %struct.rpmsg_device** %3, align 8
  br label %93

34:                                               ; preds = %2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.virtio_rpmsg_channel* @kzalloc(i32 64, i32 %35)
  store %struct.virtio_rpmsg_channel* %36, %struct.virtio_rpmsg_channel** %6, align 8
  %37 = load %struct.virtio_rpmsg_channel*, %struct.virtio_rpmsg_channel** %6, align 8
  %38 = icmp ne %struct.virtio_rpmsg_channel* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store %struct.rpmsg_device* null, %struct.rpmsg_device** %3, align 8
  br label %93

40:                                               ; preds = %34
  %41 = load %struct.virtproc_info*, %struct.virtproc_info** %4, align 8
  %42 = load %struct.virtio_rpmsg_channel*, %struct.virtio_rpmsg_channel** %6, align 8
  %43 = getelementptr inbounds %struct.virtio_rpmsg_channel, %struct.virtio_rpmsg_channel* %42, i32 0, i32 1
  store %struct.virtproc_info* %41, %struct.virtproc_info** %43, align 8
  %44 = load %struct.virtio_rpmsg_channel*, %struct.virtio_rpmsg_channel** %6, align 8
  %45 = getelementptr inbounds %struct.virtio_rpmsg_channel, %struct.virtio_rpmsg_channel* %44, i32 0, i32 0
  store %struct.rpmsg_device* %45, %struct.rpmsg_device** %7, align 8
  %46 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %47 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %50 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %52 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %55 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %57 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %56, i32 0, i32 4
  store i32* @virtio_rpmsg_ops, i32** %57, align 8
  %58 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %59 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RPMSG_ADDR_ANY, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %65 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %67 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %5, align 8
  %71 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RPMSG_NAME_SIZE, align 4
  %74 = call i32 @strncpy(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.virtproc_info*, %struct.virtproc_info** %4, align 8
  %76 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %80 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store %struct.device* %78, %struct.device** %81, align 8
  %82 = load i32, i32* @virtio_rpmsg_release_device, align 4
  %83 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %84 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %87 = call i32 @rpmsg_register_device(%struct.rpmsg_device* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %40
  store %struct.rpmsg_device* null, %struct.rpmsg_device** %3, align 8
  br label %93

91:                                               ; preds = %40
  %92 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  store %struct.rpmsg_device* %92, %struct.rpmsg_device** %3, align 8
  br label %93

93:                                               ; preds = %91, %90, %39, %20
  %94 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  ret %struct.rpmsg_device* %94
}

declare dso_local %struct.device* @rpmsg_find_device(%struct.device*, %struct.rpmsg_channel_info*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, i32) #1

declare dso_local %struct.virtio_rpmsg_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @rpmsg_register_device(%struct.rpmsg_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
