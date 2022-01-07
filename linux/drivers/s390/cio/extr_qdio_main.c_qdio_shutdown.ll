; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i32, %struct.qdio_irq* }
%struct.qdio_irq = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"qshutdown:%4x\00", align 1
@QDIO_IRQ_STATE_INACTIVE = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_STOPPED = common dso_local global i64 0, align 8
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@QDIO_DOING_CLEANUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%4x SHUTD ERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc:%4d\00", align 1
@QDIO_IRQ_STATE_CLEANUP = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_ERR = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@qdio_int_handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_shutdown(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_irq*, align 8
  %7 = alloca %struct.subchannel_id, align 4
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  store %struct.qdio_irq* %13, %struct.qdio_irq** %6, align 8
  %14 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %15 = icmp ne %struct.qdio_irq* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %142

19:                                               ; preds = %2
  %20 = call i32 (...) @irqs_disabled()
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %23 = call i32 @ccw_device_get_schid(%struct.ccw_device* %22, %struct.subchannel_id* %7)
  %24 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %28 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %31 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QDIO_IRQ_STATE_INACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %37 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %3, align 4
  br label %142

39:                                               ; preds = %19
  %40 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %41 = load i64, i64* @QDIO_IRQ_STATE_STOPPED, align 8
  %42 = call i32 @qdio_set_state(%struct.qdio_irq* %40, i64 %41)
  %43 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %44 = call i32 @tiqdio_remove_input_queues(%struct.qdio_irq* %43)
  %45 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %46 = call i32 @qdio_shutdown_queues(%struct.ccw_device* %45)
  %47 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %48 = call i32 @qdio_shutdown_debug_entries(%struct.qdio_irq* %47)
  %49 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %50 = call i32 @get_ccwdev_lock(%struct.ccw_device* %49)
  %51 = call i32 @spin_lock_irq(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %58 = load i32, i32* @QDIO_DOING_CLEANUP, align 4
  %59 = call i32 @ccw_device_clear(%struct.ccw_device* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %64

60:                                               ; preds = %39
  %61 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %62 = load i32, i32* @QDIO_DOING_CLEANUP, align 4
  %63 = call i32 @ccw_device_halt(%struct.ccw_device* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %69 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %107

75:                                               ; preds = %64
  %76 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %77 = load i64, i64* @QDIO_IRQ_STATE_CLEANUP, align 8
  %78 = call i32 @qdio_set_state(%struct.qdio_irq* %76, i64 %77)
  %79 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %80 = call i32 @get_ccwdev_lock(%struct.ccw_device* %79)
  %81 = call i32 @spin_unlock_irq(i32 %80)
  %82 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %83 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %88 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @QDIO_IRQ_STATE_INACTIVE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %75
  %93 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %94 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QDIO_IRQ_STATE_ERR, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %92, %75
  %99 = phi i1 [ true, %75 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @HZ, align 4
  %102 = mul nsw i32 10, %101
  %103 = call i32 @wait_event_interruptible_timeout(i32 %86, i32 %100, i32 %102)
  %104 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %105 = call i32 @get_ccwdev_lock(%struct.ccw_device* %104)
  %106 = call i32 @spin_lock_irq(i32 %105)
  br label %107

107:                                              ; preds = %98, %67
  %108 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %109 = call i32 @qdio_shutdown_thinint(%struct.qdio_irq* %108)
  %110 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %111 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load i64, i64* @qdio_int_handler, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = icmp eq i8* %113, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %107
  %118 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %119 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %122 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %124 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %107
  %128 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %129 = call i32 @get_ccwdev_lock(%struct.ccw_device* %128)
  %130 = call i32 @spin_unlock_irq(i32 %129)
  %131 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %132 = load i64, i64* @QDIO_IRQ_STATE_INACTIVE, align 8
  %133 = call i32 @qdio_set_state(%struct.qdio_irq* %131, i64 %132)
  %134 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %135 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %139, %35, %16
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i64) #1

declare dso_local i32 @tiqdio_remove_input_queues(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_shutdown_queues(%struct.ccw_device*) #1

declare dso_local i32 @qdio_shutdown_debug_entries(%struct.qdio_irq*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_clear(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_halt(%struct.ccw_device*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qdio_shutdown_thinint(%struct.qdio_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
