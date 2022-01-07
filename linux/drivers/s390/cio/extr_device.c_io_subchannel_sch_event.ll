; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_sch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_io_subchannel_sch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ccw_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ccw_dev_id = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"event: sch 0.%x.%04x, process=%d, action=%d\0A\00", align 1
@DEV_STATE_SENSE_ID = common dso_local global i32 0, align 4
@DEV_EVENT_NOTOPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, i32)* @io_subchannel_sch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_sch_event(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca %struct.ccw_dev_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 4
  %20 = call i32 @device_is_registered(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %197

23:                                               ; preds = %2
  %24 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 3
  %26 = call i64 @work_pending(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %197

29:                                               ; preds = %23
  %30 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %31 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %30)
  store %struct.ccw_device* %31, %struct.ccw_device** %7, align 8
  %32 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %33 = icmp ne %struct.ccw_device* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = call i64 @work_pending(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %197

42:                                               ; preds = %34, %29
  %43 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %44 = call i32 @sch_get_action(%struct.subchannel* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %90 [
    i32 131, label %57
    i32 128, label %60
    i32 135, label %63
    i32 132, label %66
    i32 133, label %66
    i32 129, label %69
    i32 130, label %69
    i32 134, label %89
  ]

57:                                               ; preds = %42
  %58 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %59 = call i32 @ccw_device_trigger_reprobe(%struct.ccw_device* %58)
  store i32 0, i32* %10, align 4
  br label %197

60:                                               ; preds = %42
  %61 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %62 = call i32 @io_subchannel_verify(%struct.subchannel* %61)
  store i32 0, i32* %10, align 4
  br label %197

63:                                               ; preds = %42
  %64 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %65 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %64)
  store i32 0, i32* %10, align 4
  br label %197

66:                                               ; preds = %42, %42
  %67 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %68 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %67)
  br label %91

69:                                               ; preds = %42, %42
  %70 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %71 = icmp ne %struct.ccw_device* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %91

73:                                               ; preds = %69
  %74 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %75 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DEV_STATE_SENSE_ID, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %83 = load i32, i32* @DEV_EVENT_NOTOPER, align 4
  %84 = call i32 @dev_fsm_event(%struct.ccw_device* %82, i32 %83)
  br label %88

85:                                               ; preds = %73
  %86 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %87 = call i32 @ccw_device_set_notoper(%struct.ccw_device* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %91

89:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %197

90:                                               ; preds = %42
  br label %91

91:                                               ; preds = %90, %88, %72, %66
  %92 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %93 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %203

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %133 [
    i32 132, label %102
    i32 133, label %102
    i32 129, label %109
  ]

102:                                              ; preds = %100, %100
  %103 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %104 = call i32 @ccw_device_move_to_orph(%struct.ccw_device* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %203

108:                                              ; preds = %102
  br label %134

109:                                              ; preds = %100
  %110 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %111 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @spin_lock_irqsave(i32 %112, i64 %113)
  %115 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %116 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %197

123:                                              ; preds = %109
  %124 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %125 = call i32 @sch_set_cdev(%struct.subchannel* %124, i32* null)
  %126 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %127 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32 %128, i64 %129)
  %131 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %132 = call i32 @ccw_device_unregister(%struct.ccw_device* %131)
  br label %134

133:                                              ; preds = %100
  br label %134

134:                                              ; preds = %133, %123, %108
  %135 = load i32, i32* %9, align 4
  switch i32 %135, label %195 [
    i32 132, label %136
    i32 130, label %136
    i32 133, label %151
    i32 129, label %151
    i32 136, label %151
  ]

136:                                              ; preds = %134, %134
  %137 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %138 = icmp ne %struct.ccw_device* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %141 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %139, %136
  %148 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %149 = call i32 @css_sch_device_unregister(%struct.subchannel* %148)
  br label %150

150:                                              ; preds = %147, %139
  br label %196

151:                                              ; preds = %134, %134, %134
  %152 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %153 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %158 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = call %struct.ccw_device* @get_ccwdev_by_dev_id(%struct.ccw_dev_id* %8)
  store %struct.ccw_device* %163, %struct.ccw_device** %7, align 8
  %164 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %165 = icmp ne %struct.ccw_device* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %151
  %167 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %168 = call i32 @sch_create_and_recog_new_device(%struct.subchannel* %167)
  br label %196

169:                                              ; preds = %151
  %170 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %171 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %172 = call i32 @ccw_device_move_to_sch(%struct.ccw_device* %170, %struct.subchannel* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %177 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %176, i32 0, i32 0
  %178 = call i32 @put_device(i32* %177)
  br label %203

179:                                              ; preds = %169
  %180 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %181 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @spin_lock_irqsave(i32 %182, i64 %183)
  %185 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %186 = call i32 @ccw_device_trigger_reprobe(%struct.ccw_device* %185)
  %187 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %188 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i64, i64* %6, align 8
  %191 = call i32 @spin_unlock_irqrestore(i32 %189, i64 %190)
  %192 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %193 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %192, i32 0, i32 0
  %194 = call i32 @put_device(i32* %193)
  br label %196

195:                                              ; preds = %134
  br label %196

196:                                              ; preds = %195, %179, %166, %150
  store i32 0, i32* %3, align 4
  br label %205

197:                                              ; preds = %122, %89, %63, %60, %57, %41, %28, %22
  %198 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %199 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32 %200, i64 %201)
  br label %203

203:                                              ; preds = %197, %175, %107, %99
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %196
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @sch_get_action(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ccw_device_trigger_reprobe(%struct.ccw_device*) #1

declare dso_local i32 @io_subchannel_verify(%struct.subchannel*) #1

declare dso_local i32 @ccw_device_set_disconnected(%struct.ccw_device*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_set_notoper(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ccw_device_move_to_orph(%struct.ccw_device*) #1

declare dso_local i32 @sch_set_cdev(%struct.subchannel*, i32*) #1

declare dso_local i32 @ccw_device_unregister(%struct.ccw_device*) #1

declare dso_local i32 @css_sch_device_unregister(%struct.subchannel*) #1

declare dso_local %struct.ccw_device* @get_ccwdev_by_dev_id(%struct.ccw_dev_id*) #1

declare dso_local i32 @sch_create_and_recog_new_device(%struct.subchannel*) #1

declare dso_local i32 @ccw_device_move_to_sch(%struct.ccw_device*, %struct.subchannel*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
