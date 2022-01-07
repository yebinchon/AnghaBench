; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_wait_for_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_wait_for_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, i32 }
%struct.vbg_session = type { i64 }
%struct.vbg_ioctl_wait_for_events = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_wait_for_events*)* @vbg_ioctl_wait_for_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_wait_for_events(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_wait_for_events* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_wait_for_events*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_wait_for_events* %2, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %13 = load %struct.vbg_ioctl_wait_for_events*, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %14 = getelementptr inbounds %struct.vbg_ioctl_wait_for_events, %struct.vbg_ioctl_wait_for_events* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.vbg_ioctl_wait_for_events*, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %19 = getelementptr inbounds %struct.vbg_ioctl_wait_for_events, %struct.vbg_ioctl_wait_for_events* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.vbg_ioctl_wait_for_events*, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %24 = getelementptr inbounds %struct.vbg_ioctl_wait_for_events, %struct.vbg_ioctl_wait_for_events* %23, i32 0, i32 1
  %25 = call i64 @vbg_ioctl_chk(i32* %24, i32 16, i32 8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %103

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @U32_MAX, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %35, i64* %11, align 8
  br label %39

36:                                               ; preds = %30
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @msecs_to_jiffies(i64 %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %36, %34
  %40 = load %struct.vbg_ioctl_wait_for_events*, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %41 = getelementptr inbounds %struct.vbg_ioctl_wait_for_events, %struct.vbg_ioctl_wait_for_events* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %99, %39
  %45 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %46 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %49 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @vbg_wait_event_cond(%struct.vbg_dev* %48, %struct.vbg_session* %49, i64 %50)
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @wait_event_interruptible_timeout(i32 %47, i32 %51, i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %55 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i64, i64* %11, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %44
  %61 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %62 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %44
  %66 = load i32, i32* @EINTR, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %84

68:                                               ; preds = %60
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %83

74:                                               ; preds = %68
  %75 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %76 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @vbg_consume_events_locked(%struct.vbg_dev* %75, %struct.vbg_session* %76, i64 %77)
  %79 = load %struct.vbg_ioctl_wait_for_events*, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %80 = getelementptr inbounds %struct.vbg_ioctl_wait_for_events, %struct.vbg_ioctl_wait_for_events* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %74, %71
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %86 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.vbg_ioctl_wait_for_events*, %struct.vbg_ioctl_wait_for_events** %7, align 8
  %94 = getelementptr inbounds %struct.vbg_ioctl_wait_for_events, %struct.vbg_ioctl_wait_for_events* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br label %99

99:                                               ; preds = %92, %89
  %100 = phi i1 [ false, %89 ], [ %98, %92 ]
  br i1 %100, label %44, label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @vbg_ioctl_chk(i32*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @vbg_wait_event_cond(%struct.vbg_dev*, %struct.vbg_session*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vbg_consume_events_locked(%struct.vbg_dev*, %struct.vbg_session*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
