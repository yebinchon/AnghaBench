; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_initialize_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_initialize_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ccw_device = type { %struct.TYPE_14__, %struct.ccw_device_private*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.ccw_device_private = type { %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, %struct.ccw_device* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@IRQIO_CIO = common dso_local global i32 0, align 4
@DEV_STATE_NOT_OPER = common dso_local global i32 0, align 4
@ccw_device_todo = common dso_local global i32 0, align 4
@ccw_device_timeout = common dso_local global i32 0, align 4
@ccw_device_release = common dso_local global i32 0, align 4
@ccwdev_attr_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"0.%x.%04x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, %struct.ccw_device*)* @io_subchannel_initialize_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_initialize_dev(%struct.subchannel* %0, %struct.ccw_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca %struct.ccw_device_private*, align 8
  %7 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store %struct.ccw_device* %1, %struct.ccw_device** %5, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 1
  %10 = load %struct.ccw_device_private*, %struct.ccw_device_private** %9, align 8
  store %struct.ccw_device_private* %10, %struct.ccw_device_private** %6, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %13 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %12, i32 0, i32 9
  store %struct.ccw_device* %11, %struct.ccw_device** %13, align 8
  %14 = load i32, i32* @IRQIO_CIO, align 4
  %15 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %16 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @DEV_STATE_NOT_OPER, align 4
  %18 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %19 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %26 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %33 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %36 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %35, i32 0, i32 6
  %37 = load i32, i32* @ccw_device_todo, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %40 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %39, i32 0, i32 5
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %43 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %42, i32 0, i32 4
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %46 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %45, i32 0, i32 3
  %47 = load i32, i32* @ccw_device_timeout, align 4
  %48 = call i32 @timer_setup(i32* %46, i32 %47, i32 0)
  %49 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %50 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %49, i32 0, i32 2
  %51 = call i32 @atomic_set(i32* %50, i32 0)
  %52 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %53 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %56 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %58 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %57, i32 0, i32 1
  %59 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %60 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  store i32* %58, i32** %61, align 8
  %62 = load i32, i32* @ccw_device_release, align 4
  %63 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ccwdev_attr_groups, align 4
  %67 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %68 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %71 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %70, i32 0, i32 0
  %72 = call i32 @device_initialize(%struct.TYPE_14__* %71)
  %73 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %74 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %73, i32 0, i32 0
  %75 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %76 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %75, i32 0, i32 1
  %77 = load %struct.ccw_device_private*, %struct.ccw_device_private** %76, align 8
  %78 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %82 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %81, i32 0, i32 1
  %83 = load %struct.ccw_device_private*, %struct.ccw_device_private** %82, align 8
  %84 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_set_name(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %2
  br label %114

91:                                               ; preds = %2
  %92 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %93 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %92, i32 0, i32 1
  %94 = call i32 @get_device(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %114

99:                                               ; preds = %91
  %100 = load %struct.ccw_device_private*, %struct.ccw_device_private** %6, align 8
  %101 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %104 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @spin_lock_irq(i32 %105)
  %107 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %108 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %109 = call i32 @sch_set_cdev(%struct.subchannel* %107, %struct.ccw_device* %108)
  %110 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %111 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @spin_unlock_irq(i32 %112)
  store i32 0, i32* %3, align 4
  br label %119

114:                                              ; preds = %96, %90
  %115 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %116 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %115, i32 0, i32 0
  %117 = call i32 @put_device(%struct.TYPE_14__* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %99
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @sch_set_cdev(%struct.subchannel*, %struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
