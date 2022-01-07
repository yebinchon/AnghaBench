; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_establish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { %struct.ccw_device* }
%struct.ccw_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.qdio_irq* }
%struct.qdio_irq = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_8__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.subchannel_id = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"qestablish:%4x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@QDIO_DOING_ESTABLISH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x est IO ERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc:%4x\00", align 1
@QDIO_IRQ_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_ERR = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_establish(%struct.qdio_initialize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.subchannel_id, align 4
  %6 = alloca %struct.qdio_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  %8 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %9 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %8, i32 0, i32 0
  %10 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  store %struct.ccw_device* %10, %struct.ccw_device** %4, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %12 = call i32 @ccw_device_get_schid(%struct.ccw_device* %11, %struct.subchannel_id* %5)
  %13 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.qdio_irq*, %struct.qdio_irq** %19, align 8
  store %struct.qdio_irq* %20, %struct.qdio_irq** %6, align 8
  %21 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %22 = icmp ne %struct.qdio_irq* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %151

26:                                               ; preds = %1
  %27 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %28 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %31 = call i32 @qdio_setup_irq(%struct.qdio_initialize* %30)
  %32 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %33 = call i32 @qdio_establish_thinint(%struct.qdio_irq* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %38 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %41 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %42 = call i32 @qdio_shutdown(%struct.ccw_device* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %151

44:                                               ; preds = %26
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %46 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %50 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @CCW_FLAG_SLI, align 4
  %53 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %54 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %57 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %61 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %64 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %67 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %70 = call i32 @get_ccwdev_lock(%struct.ccw_device* %69)
  %71 = call i32 @spin_lock_irq(i32 %70)
  %72 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %73 = call i32 @ccw_device_set_options_mask(%struct.ccw_device* %72, i32 0)
  %74 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %75 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %76 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %75, i32 0, i32 3
  %77 = load i32, i32* @QDIO_DOING_ESTABLISH, align 4
  %78 = call i32 @ccw_device_start(%struct.ccw_device* %74, %struct.TYPE_8__* %76, i32 %77, i32 0, i32 0)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %80 = call i32 @get_ccwdev_lock(%struct.ccw_device* %79)
  %81 = call i32 @spin_unlock_irq(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %44
  %85 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %86 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %93 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %96 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %97 = call i32 @qdio_shutdown(%struct.ccw_device* %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %151

99:                                               ; preds = %44
  %100 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %101 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %106 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @QDIO_IRQ_STATE_ESTABLISHED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %99
  %111 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %112 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @QDIO_IRQ_STATE_ERR, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %110, %99
  %117 = phi i1 [ true, %99 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* @HZ, align 4
  %120 = call i32 @wait_event_interruptible_timeout(i32 %104, i32 %118, i32 %119)
  %121 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %122 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @QDIO_IRQ_STATE_ESTABLISHED, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %116
  %127 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %128 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %131 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %132 = call i32 @qdio_shutdown(%struct.ccw_device* %130, i32 %131)
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %151

135:                                              ; preds = %116
  %136 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %137 = call i32 @qdio_setup_ssqd_info(%struct.qdio_irq* %136)
  %138 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %139 = call i32 @qdio_detect_hsicq(%struct.qdio_irq* %138)
  %140 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %141 = call i32 @qdio_init_buf_states(%struct.qdio_irq* %140)
  %142 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %143 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %142, i32 0, i32 1
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %146 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %147 = call i32 @qdio_print_subchannel_info(%struct.qdio_irq* %145, %struct.ccw_device* %146)
  %148 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %149 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %150 = call i32 @qdio_setup_debug_entries(%struct.qdio_irq* %148, %struct.ccw_device* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %135, %126, %84, %36, %23
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qdio_setup_irq(%struct.qdio_initialize*) #1

declare dso_local i32 @qdio_establish_thinint(%struct.qdio_irq*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qdio_shutdown(%struct.ccw_device*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_set_options_mask(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_start(%struct.ccw_device*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qdio_setup_ssqd_info(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_detect_hsicq(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_init_buf_states(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_print_subchannel_info(%struct.qdio_irq*, %struct.ccw_device*) #1

declare dso_local i32 @qdio_setup_debug_entries(%struct.qdio_irq*, %struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
