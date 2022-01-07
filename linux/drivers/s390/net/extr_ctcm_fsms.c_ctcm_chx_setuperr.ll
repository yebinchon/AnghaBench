; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_setuperr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_setuperr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32 }

@CTC_STATE_SETUPWAIT = common dso_local global i64 0, align 8
@CTC_EVENT_UC_RCRESET = common dso_local global i32 0, align 4
@CTC_EVENT_UC_RSRESET = common dso_local global i32 0, align 4
@CTC_STATE_STARTRETRY = common dso_local global i32 0, align 4
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@CTCM_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"HaltIO in chx_setuperr\00", align 1
@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s(%s) : %s error during %s channel setup state=%s\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@ctc_ch_event_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@CTC_STATE_RXERR = common dso_local global i32 0, align 4
@DEV_EVENT_RXDOWN = common dso_local global i32 0, align 4
@CTC_STATE_TXERR = common dso_local global i32 0, align 4
@DEV_EVENT_TXDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ctcm_chx_setuperr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_chx_setuperr(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.channel*
  store %struct.channel* %12, %struct.channel** %7, align 8
  %13 = load %struct.channel*, %struct.channel** %7, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 3
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %17, align 8
  store %struct.ctcm_priv* %18, %struct.ctcm_priv** %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @fsm_getstate(i32* %19)
  %21 = load i64, i64* @CTC_STATE_SETUPWAIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CTC_EVENT_UC_RCRESET, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CTC_EVENT_UC_RSRESET, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27, %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CTC_STATE_STARTRETRY, align 4
  %34 = call i32 @fsm_newstate(i32* %32, i32 %33)
  %35 = load %struct.channel*, %struct.channel** %7, align 8
  %36 = getelementptr inbounds %struct.channel, %struct.channel* %35, i32 0, i32 2
  %37 = call i32 @fsm_deltimer(i32* %36)
  %38 = load %struct.channel*, %struct.channel** %7, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 2
  %40 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %41 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %42 = load %struct.channel*, %struct.channel** %7, align 8
  %43 = call i32 @fsm_addtimer(i32* %39, i32 %40, i32 %41, %struct.channel* %42)
  %44 = load %struct.channel*, %struct.channel** %7, align 8
  %45 = call i32 @IS_MPC(%struct.channel* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %31
  %48 = load %struct.channel*, %struct.channel** %7, align 8
  %49 = getelementptr inbounds %struct.channel, %struct.channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @CHANNEL_DIRECTION(i32 %50)
  %52 = load i64, i64* @CTCM_READ, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.channel*, %struct.channel** %7, align 8
  %56 = getelementptr inbounds %struct.channel, %struct.channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ccw_device_halt(i32 %57, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.channel*, %struct.channel** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ctcm_ccw_check_rc(%struct.channel* %62, i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %47, %31
  br label %116

67:                                               ; preds = %27, %3
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @CTC_DBF_CRIT, align 4
  %70 = load i32, i32* @CTCM_FUNTAIL, align 4
  %71 = load %struct.net_device*, %struct.net_device** %8, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** @ctc_ch_event_names, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.channel*, %struct.channel** %7, align 8
  %80 = getelementptr inbounds %struct.channel, %struct.channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @CHANNEL_DIRECTION(i32 %81)
  %83 = load i64, i64* @CTCM_READ, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @fsm_getstate_str(i32* %87)
  %89 = call i32 @CTCM_DBF_TEXT_(i32 %68, i32 %69, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, i32 %78, i8* %86, i32 %88)
  %90 = load %struct.channel*, %struct.channel** %7, align 8
  %91 = getelementptr inbounds %struct.channel, %struct.channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @CHANNEL_DIRECTION(i32 %92)
  %94 = load i64, i64* @CTCM_READ, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %67
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* @CTC_STATE_RXERR, align 4
  %99 = call i32 @fsm_newstate(i32* %97, i32 %98)
  %100 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %101 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %104 = load %struct.net_device*, %struct.net_device** %8, align 8
  %105 = call i32 @fsm_event(i32 %102, i32 %103, %struct.net_device* %104)
  br label %116

106:                                              ; preds = %67
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @CTC_STATE_TXERR, align 4
  %109 = call i32 @fsm_newstate(i32* %107, i32 %108)
  %110 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %111 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  %115 = call i32 @fsm_event(i32 %112, i32 %113, %struct.net_device* %114)
  br label %116

116:                                              ; preds = %66, %106, %96
  ret void
}

declare dso_local i64 @fsm_getstate(i32*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.channel*) #1

declare dso_local i32 @IS_MPC(%struct.channel*) #1

declare dso_local i64 @CHANNEL_DIRECTION(i32) #1

declare dso_local i32 @ccw_device_halt(i32, i32) #1

declare dso_local i32 @ctcm_ccw_check_rc(%struct.channel*, i32, i8*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @fsm_getstate_str(i32*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
