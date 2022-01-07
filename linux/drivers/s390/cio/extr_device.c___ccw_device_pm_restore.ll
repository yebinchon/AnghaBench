; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c___ccw_device_pm_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c___ccw_device_pm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32, i32 }

@LPM_ANYPATH = common dso_local global i32 0, align 4
@SCH_TODO_EVAL = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@DEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@DEV_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @__ccw_device_pm_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ccw_device_pm_restore(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.subchannel* @to_subchannel(i32 %7)
  store %struct.subchannel* %8, %struct.subchannel** %3, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @cio_is_console(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %21 = ptrtoint %struct.subchannel* %20 to i64
  %22 = trunc i64 %21 to i32
  %23 = call i32 @cio_enable_subchannel(%struct.subchannel* %19, i32 %22)
  br label %99

24:                                               ; preds = %1
  %25 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @LPM_ANYPATH, align 4
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 8
  %35 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %36 = load i32, i32* @SCH_TODO_EVAL, align 4
  %37 = call i32 @css_sched_sch_todo(%struct.subchannel* %35, i32 %36)
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_unlock_irq(i32 %40)
  %42 = call i32 (...) @css_wait_for_slow_path()
  %43 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.subchannel* @to_subchannel(i32 %46)
  store %struct.subchannel* %47, %struct.subchannel** %3, align 8
  %48 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %49 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @spin_lock_irq(i32 %50)
  %52 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %53 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %24
  %60 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DEV_STATE_OFFLINE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %99

68:                                               ; preds = %59, %24
  %69 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %70 = call i32 @ccw_device_recognition(%struct.ccw_device* %69)
  %71 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %72 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_unlock_irq(i32 %73)
  %75 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %76 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %81 = call i64 @dev_fsm_final_state(%struct.ccw_device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %68
  %84 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %85 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DEV_STATE_DISCONNECTED, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %83, %68
  %92 = phi i1 [ true, %68 ], [ %90, %83 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @wait_event(i32 %79, i32 %93)
  %95 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %96 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @spin_lock_irq(i32 %97)
  br label %99

99:                                               ; preds = %91, %67, %18
  %100 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %101 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %106 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @spin_unlock_irq(i32 %107)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @cio_is_console(i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @css_sched_sch_todo(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @css_wait_for_slow_path(...) #1

declare dso_local i32 @ccw_device_recognition(%struct.ccw_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @dev_fsm_final_state(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
