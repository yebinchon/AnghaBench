; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_adjust_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_adjust_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i64, i8* }

@fwlog_param = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"continuous\00", align 1
@WL12XX_FWLOG_CONTINUOUS = common dso_local global i8* null, align 8
@WL12XX_FWLOG_OUTPUT_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dbgpins\00", align 1
@WL12XX_FWLOG_OUTPUT_DBG_PINS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@WL12XX_FWLOG_OUTPUT_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unknown fwlog parameter %s\00", align 1
@bug_on_recovery = common dso_local global i32 0, align 4
@no_recovery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wlcore_adjust_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_adjust_conf(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load i64, i64* @fwlog_param, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = load i64, i64* @fwlog_param, align 8
  %7 = call i32 @strcmp(i64 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load i8*, i8** @WL12XX_FWLOG_CONTINUOUS, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i8* %10, i8** %14, align 8
  %15 = load i32, i32* @WL12XX_FWLOG_OUTPUT_HOST, align 4
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  br label %54

20:                                               ; preds = %5
  %21 = load i64, i64* @fwlog_param, align 8
  %22 = call i32 @strcmp(i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** @WL12XX_FWLOG_CONTINUOUS, align 8
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @WL12XX_FWLOG_OUTPUT_DBG_PINS, align 4
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  br label %53

35:                                               ; preds = %20
  %36 = load i64, i64* @fwlog_param, align 8
  %37 = call i32 @strcmp(i64 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @WL12XX_FWLOG_OUTPUT_NONE, align 4
  %45 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  br label %52

49:                                               ; preds = %35
  %50 = load i64, i64* @fwlog_param, align 8
  %51 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %39
  br label %53

53:                                               ; preds = %52, %24
  br label %54

54:                                               ; preds = %53, %9
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* @bug_on_recovery, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @bug_on_recovery, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i32, i32* @no_recovery, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* @no_recovery, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @wl1271_error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
