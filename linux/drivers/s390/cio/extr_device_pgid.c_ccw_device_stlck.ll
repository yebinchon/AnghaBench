; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_ccw_device_stlck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_ccw_device_stlck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32 }
%struct.stlck_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEV_STATE_STEAL_LOCK = common dso_local global i32 0, align 4
@DEV_STATE_BOXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_stlck(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.stlck_data, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.subchannel* @to_subchannel(i32 %11)
  store %struct.subchannel* %12, %struct.subchannel** %4, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @GFP_DMA, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = or i32 %30, %31
  %33 = call i32* @kzalloc(i32 64, i32 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %111

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.stlck_data, %struct.stlck_data* %5, i32 0, i32 1
  %41 = call i32 @init_completion(i32* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = getelementptr inbounds %struct.stlck_data, %struct.stlck_data* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @spin_lock_irq(i32 %47)
  %49 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %50 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %51 = ptrtoint %struct.subchannel* %50 to i64
  %52 = trunc i64 %51 to i32
  %53 = call i32 @cio_enable_subchannel(%struct.subchannel* %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %103

57:                                               ; preds = %39
  %58 = load i32, i32* @DEV_STATE_STEAL_LOCK, align 4
  %59 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %60 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 32
  %68 = call i32 @ccw_device_stlck_start(%struct.ccw_device* %63, %struct.stlck_data* %5, i32* %65, i32* %67)
  %69 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %70 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @spin_unlock_irq(i32 %71)
  %73 = getelementptr inbounds %struct.stlck_data, %struct.stlck_data* %5, i32 0, i32 1
  %74 = call i64 @wait_for_completion_interruptible(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %57
  %77 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %78 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @spin_lock_irq(i32 %79)
  %81 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %82 = call i32 @ccw_request_cancel(%struct.ccw_device* %81)
  %83 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %84 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_unlock_irq(i32 %85)
  %87 = getelementptr inbounds %struct.stlck_data, %struct.stlck_data* %5, i32 0, i32 1
  %88 = call i32 @wait_for_completion(i32* %87)
  br label %89

89:                                               ; preds = %76, %57
  %90 = getelementptr inbounds %struct.stlck_data, %struct.stlck_data* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  %92 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %93 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @spin_lock_irq(i32 %94)
  %96 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %97 = call i32 @cio_disable_subchannel(%struct.subchannel* %96)
  %98 = load i32, i32* @DEV_STATE_BOXED, align 4
  %99 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %100 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %89, %56
  %104 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %105 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @spin_unlock_irq(i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @kfree(i32* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %36, %25
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @ccw_device_stlck_start(%struct.ccw_device*, %struct.stlck_data*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @ccw_request_cancel(%struct.ccw_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
