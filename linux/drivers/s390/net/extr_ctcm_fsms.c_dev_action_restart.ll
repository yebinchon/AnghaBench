; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_dev_action_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_dev_action_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CTCM_TIME_1_SEC = common dso_local global i32 0, align 4
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Restarting device\0A\00", align 1
@DEV_EVENT_STOP = common dso_local global i32 0, align 4
@MPCG_STATE_RESET = common dso_local global i32 0, align 4
@DEV_EVENT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @dev_action_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_action_restart(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %9, align 8
  %15 = load i32, i32* @TRACE, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i32 @CTCMY_DBF_DEV_NAME(i32 %15, %struct.net_device* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %19 = call i64 @IS_MPC(%struct.ctcm_priv* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @CTCM_TIME_1_SEC, align 4
  store i32 %22, i32* %7, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @dev_action_stop(i32* %29, i32 %30, i8* %31)
  %33 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %34 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DEV_EVENT_STOP, align 4
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = call i32 @fsm_event(i32 %35, i32 %36, %struct.net_device* %37)
  %39 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %40 = call i64 @IS_MPC(%struct.ctcm_priv* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %25
  %43 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %44 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MPCG_STATE_RESET, align 4
  %49 = call i32 @fsm_newstate(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %25
  %51 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %52 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @DEV_EVENT_START, align 4
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call i32 @fsm_addtimer(i32* %52, i32 %53, i32 %54, %struct.net_device* %55)
  ret void
}

declare dso_local i32 @CTCMY_DBF_DEV_NAME(i32, %struct.net_device*, i8*) #1

declare dso_local i64 @IS_MPC(%struct.ctcm_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_action_stop(i32*, i32, i8*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
