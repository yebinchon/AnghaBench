; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_get_tokens.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_get_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"get-sensor-state\00", align 1
@wdrtas_token_get_sensor_state = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"couldn't get token for get-sensor-state. Trying to continue without temperature support.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ibm,get-system-parameter\00", align 1
@wdrtas_token_get_sp = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [113 x i8] c"couldn't get token for ibm,get-system-parameter. Trying to continue with a default timeout value of %i seconds.\0A\00", align 1
@WDRTAS_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"set-indicator\00", align 1
@wdrtas_token_set_indicator = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [66 x i8] c"couldn't get token for set-indicator. Terminating watchdog code.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"event-scan\00", align 1
@wdrtas_token_event_scan = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"couldn't get token for event-scan. Terminating watchdog code.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdrtas_get_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdrtas_get_tokens() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @rtas_token(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @wdrtas_token_get_sensor_state, align 8
  %3 = load i64, i64* @wdrtas_token_get_sensor_state, align 8
  %4 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i64 @rtas_token(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i64 %9, i64* @wdrtas_token_get_sp, align 8
  %10 = load i64, i64* @wdrtas_token_get_sp, align 8
  %11 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @WDRTAS_DEFAULT_INTERVAL, align 4
  %15 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %8
  %17 = call i64 @rtas_token(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i64 %17, i64* @wdrtas_token_set_indicator, align 8
  %18 = load i64, i64* @wdrtas_token_set_indicator, align 8
  %19 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %35

25:                                               ; preds = %16
  %26 = call i64 @rtas_token(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i64 %26, i64* @wdrtas_token_event_scan, align 8
  %27 = load i64, i64* @wdrtas_token_event_scan, align 8
  %28 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %1, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %30, %21
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i64 @rtas_token(i8*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
