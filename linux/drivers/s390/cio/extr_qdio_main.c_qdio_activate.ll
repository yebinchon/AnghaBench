; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.subchannel_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"qactivate:%4x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_INACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@CCWDEV_REPORT_ALL = common dso_local global i32 0, align 4
@QDIO_DOING_ACTIVATE = common dso_local global i32 0, align 4
@DOIO_DENY_PREFETCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x act IO ERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc:%4x\00", align 1
@EIO = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_activate(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca %struct.qdio_irq*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = call i32 @ccw_device_get_schid(%struct.ccw_device* %7, %struct.subchannel_id* %4)
  %9 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.qdio_irq*, %struct.qdio_irq** %15, align 8
  store %struct.qdio_irq* %16, %struct.qdio_irq** %5, align 8
  %17 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %18 = icmp ne %struct.qdio_irq* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %1
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %24 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %27 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @QDIO_IRQ_STATE_INACTIVE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %101

34:                                               ; preds = %22
  %35 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %36 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %40 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @CCW_FLAG_SLI, align 4
  %43 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %44 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %47 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %51 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %54 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %57 = call i32 @get_ccwdev_lock(%struct.ccw_device* %56)
  %58 = call i32 @spin_lock_irq(i32 %57)
  %59 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %60 = load i32, i32* @CCWDEV_REPORT_ALL, align 4
  %61 = call i32 @ccw_device_set_options(%struct.ccw_device* %59, i32 %60)
  %62 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %63 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %64 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %63, i32 0, i32 3
  %65 = load i32, i32* @QDIO_DOING_ACTIVATE, align 4
  %66 = load i32, i32* @DOIO_DENY_PREFETCH, align 4
  %67 = call i32 @ccw_device_start(%struct.ccw_device* %62, %struct.TYPE_8__* %64, i32 %65, i32 0, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %69 = call i32 @get_ccwdev_lock(%struct.ccw_device* %68)
  %70 = call i32 @spin_unlock_irq(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %34
  %74 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %75 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %101

81:                                               ; preds = %34
  %82 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %83 = call i64 @is_thinint_irq(%struct.qdio_irq* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %87 = call i32 @tiqdio_add_input_queues(%struct.qdio_irq* %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = call i32 @msleep(i32 5)
  %90 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %91 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %96 [
    i32 128, label %93
    i32 129, label %93
  ]

93:                                               ; preds = %88, %88
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %98 = load i32, i32* @QDIO_IRQ_STATE_ACTIVE, align 4
  %99 = call i32 @qdio_set_state(%struct.qdio_irq* %97, i32 %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %73, %31
  %102 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %103 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_set_options(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_start(%struct.ccw_device*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i64 @is_thinint_irq(%struct.qdio_irq*) #1

declare dso_local i32 @tiqdio_add_input_queues(%struct.qdio_irq*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
