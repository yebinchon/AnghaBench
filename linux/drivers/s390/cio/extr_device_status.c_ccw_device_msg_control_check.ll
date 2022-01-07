; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_msg_control_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_msg_control_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.irb = type { i32 }
%struct.subchannel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [124 x i8] c"Channel-Check or Interface-Control-Check received ... device %04x on subchannel 0.%x.%04x, dev_stat : %02X sch_stat : %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chk%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, %struct.irb*)* @ccw_device_msg_control_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_msg_control_check(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca [15 x i8], align 1
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %5, align 8
  %12 = load %struct.irb*, %struct.irb** %4, align 8
  %13 = getelementptr inbounds %struct.irb, %struct.irb* %12, i32 0, i32 0
  %14 = call i32 @scsw_is_valid_cstat(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.irb*, %struct.irb** %4, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 0
  %19 = call i32 @scsw_cstat(i32* %18)
  %20 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %21 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16, %2
  br label %60

28:                                               ; preds = %16
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.irb*, %struct.irb** %4, align 8
  %44 = getelementptr inbounds %struct.irb, %struct.irb* %43, i32 0, i32 0
  %45 = call i32 @scsw_dstat(i32* %44)
  %46 = load %struct.irb*, %struct.irb** %4, align 8
  %47 = getelementptr inbounds %struct.irb, %struct.irb* %46, i32 0, i32 0
  %48 = call i32 @scsw_cstat(i32* %47)
  %49 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %45, i32 %48)
  %50 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %51 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %52 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %57 = call i32 @CIO_TRACE_EVENT(i32 0, i8* %56)
  %58 = load %struct.irb*, %struct.irb** %4, align 8
  %59 = call i32 @CIO_HEX_EVENT(i32 0, %struct.irb* %58, i32 4)
  br label %60

60:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @scsw_is_valid_cstat(i32*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsw_dstat(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, %struct.irb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
