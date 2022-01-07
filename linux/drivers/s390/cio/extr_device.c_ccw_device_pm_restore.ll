; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_pm_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_pm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { %struct.TYPE_10__*, i64, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 (%struct.ccw_device*)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { i32, i32 }

@CDEV_TODO_REBIND = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CIO_OPER = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i64 0, align 8
@CDEV_TODO_UNREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"resume: cdev 0.%x.%04x: cmf failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccw_device_pm_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_pm_restore(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ccw_device* @to_ccwdev(%struct.device* %7)
  store %struct.ccw_device* %8, %struct.ccw_device** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = call i32 @__ccw_device_pm_restore(%struct.ccw_device* %9)
  %11 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.subchannel* @to_subchannel(i32 %14)
  store %struct.subchannel* %15, %struct.subchannel** %5, align 8
  %16 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_lock_irq(i32 %18)
  %20 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @cio_is_console(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %146

26:                                               ; preds = %1
  %27 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %45 [
    i32 129, label %32
    i32 128, label %32
    i32 130, label %38
  ]

32:                                               ; preds = %26, %26
  %33 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %34 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %52

38:                                               ; preds = %26
  %39 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %40 = call i32 @resume_handle_boxed(%struct.ccw_device* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %177

44:                                               ; preds = %38
  br label %146

45:                                               ; preds = %26
  %46 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %47 = call i32 @resume_handle_disc(%struct.ccw_device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %177

51:                                               ; preds = %45
  br label %146

52:                                               ; preds = %32
  %53 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %54 = call i32 @ccw_device_test_sense_data(%struct.ccw_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %58 = call i32 @ccw_device_update_sense_data(%struct.ccw_device* %57)
  %59 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %60 = load i32, i32* @CDEV_TODO_REBIND, align 4
  %61 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %59, i32 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %177

64:                                               ; preds = %52
  %65 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %66 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %177

70:                                               ; preds = %64
  %71 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %72 = call i64 @ccw_device_online(%struct.ccw_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %76 = call i32 @resume_handle_disc(%struct.ccw_device* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %177

80:                                               ; preds = %74
  br label %146

81:                                               ; preds = %70
  %82 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %83 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_unlock_irq(i32 %84)
  %86 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %87 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %92 = call i32 @dev_fsm_final_state(%struct.ccw_device* %91)
  %93 = call i32 @wait_event(i32 %90, i32 %92)
  %94 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %95 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @spin_lock_irq(i32 %96)
  %98 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %99 = load i32, i32* @CIO_OPER, align 4
  %100 = call i64 @ccw_device_notify(%struct.ccw_device* %98, i32 %99)
  %101 = load i64, i64* @NOTIFY_BAD, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %81
  %104 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %105 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %106 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %104, i32 %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %177

109:                                              ; preds = %81
  %110 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %111 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %109
  %117 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %118 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @spin_unlock_irq(i32 %119)
  %121 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %122 = call i32 @ccw_set_cmf(%struct.ccw_device* %121, i32 1)
  store i32 %122, i32* %6, align 4
  %123 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %124 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @spin_lock_irq(i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %116
  %130 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %131 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %130, i32 0, i32 2
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %137 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %136, i32 0, i32 2
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %141, i32 %142)
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %129, %116
  br label %145

145:                                              ; preds = %144, %109
  br label %146

146:                                              ; preds = %145, %80, %51, %44, %25
  %147 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %148 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @spin_unlock_irq(i32 %149)
  %151 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %152 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %157 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = icmp ne %struct.TYPE_10__* %158, null
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %162 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %164, align 8
  %166 = icmp ne i32 (%struct.ccw_device*)* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %169 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %171, align 8
  %173 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %174 = call i32 %172(%struct.ccw_device* %173)
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %167, %160, %155, %146
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %183

177:                                              ; preds = %103, %79, %69, %56, %50, %43
  %178 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %179 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @spin_unlock_irq(i32 %180)
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %175
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @__ccw_device_pm_restore(%struct.ccw_device*) #1

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @cio_is_console(i32) #1

declare dso_local i32 @resume_handle_boxed(%struct.ccw_device*) #1

declare dso_local i32 @resume_handle_disc(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_test_sense_data(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_update_sense_data(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i64 @ccw_device_online(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dev_fsm_final_state(%struct.ccw_device*) #1

declare dso_local i64 @ccw_device_notify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_set_cmf(%struct.ccw_device*, i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
