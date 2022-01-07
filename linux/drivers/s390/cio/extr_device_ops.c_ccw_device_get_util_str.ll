; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_ops.c_ccw_device_get_util_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_ops.c_ccw_device_get_util_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.channel_path = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.chp_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccw_device_get_util_str(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.channel_path*, align 8
  %8 = alloca %struct.chp_id, align 4
  %9 = alloca i32*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.subchannel* @to_subchannel(i32 %13)
  store %struct.subchannel* %14, %struct.subchannel** %6, align 8
  %15 = call i32 @chp_id_init(%struct.chp_id* %8)
  %16 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.channel_path* @chpid_to_chp(i32 %27)
  store %struct.channel_path* %28, %struct.channel_path** %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i32 4, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %48

34:                                               ; preds = %2
  %35 = load %struct.channel_path*, %struct.channel_path** %7, align 8
  %36 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.channel_path*, %struct.channel_path** %7, align 8
  %40 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32* %38, i32 %42, i32 4)
  %44 = load %struct.channel_path*, %struct.channel_path** %7, align 8
  %45 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32*, i32** %9, align 8
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %34, %33
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local %struct.channel_path* @chpid_to_chp(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
