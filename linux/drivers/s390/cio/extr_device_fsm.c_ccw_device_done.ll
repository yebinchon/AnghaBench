; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_ccw_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_12__*, i32, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@DEV_STATE_ONLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Boxed device %04x on subchannel %04x\0A\00", align 1
@CIO_BOXED = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@CDEV_TODO_UNREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Device %04x gone on subchannel %04x\0A\00", align 1
@CIO_GONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Disconnected device %04x on subchannel %04x\0A\00", align 1
@CIO_NO_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_done(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %5, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %12 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DEV_STATE_ONLINE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %18 = call i32 @cio_disable_subchannel(%struct.subchannel* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %129 [
    i32 130, label %33
    i32 128, label %65
    i32 129, label %95
  ]

33:                                               ; preds = %19
  %34 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %41 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %33
  %50 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %51 = load i32, i32* @CIO_BOXED, align 4
  %52 = call i32 @ccw_device_notify(%struct.ccw_device* %50, i32 %51)
  %53 = load i32, i32* @NOTIFY_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %57 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %58 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49, %33
  %60 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %130

65:                                               ; preds = %19
  %66 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %67 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %73 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %78 = load i32, i32* @CIO_GONE, align 4
  %79 = call i32 @ccw_device_notify(%struct.ccw_device* %77, i32 %78)
  %80 = load i32, i32* @NOTIFY_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %65
  %83 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %84 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %85 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %83, i32 %84)
  br label %89

86:                                               ; preds = %65
  %87 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %88 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %91 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %130

95:                                               ; preds = %19
  %96 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %97 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %103 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %108 = load i32, i32* @CIO_NO_PATH, align 4
  %109 = call i32 @ccw_device_notify(%struct.ccw_device* %107, i32 %108)
  %110 = load i32, i32* @NOTIFY_OK, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %95
  %113 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %114 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 128, i32* %116, align 8
  %117 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %118 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %119 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %117, i32 %118)
  br label %123

120:                                              ; preds = %95
  %121 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %122 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %121)
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %125 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %130

129:                                              ; preds = %19
  br label %130

130:                                              ; preds = %129, %123, %89, %59
  %131 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %132 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  %139 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %140 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %145 = call i32 @ccw_device_oper_notify(%struct.ccw_device* %144)
  br label %146

146:                                              ; preds = %138, %130
  %147 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %148 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %147, i32 0, i32 0
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = call i32 @wake_up(i32* %150)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @ccw_device_notify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_set_disconnected(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_oper_notify(%struct.ccw_device*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
