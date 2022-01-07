; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_IsCommonAction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_IsCommonAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32*)* }

@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_7__* null, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"[BTCoex], Wifi non connected-idle + BT non connected-idle!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", align 1
@BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"[BTCoex], Wifi non connected-idle + BT connected-idle!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"[BTCoex], Wifi non connected-idle + BT Busy!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @halbtc8723b1ant_IsCommonAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc8723b1ant_IsCommonAction(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %11 = call i32 %8(%struct.TYPE_6__* %9, i32 %10, i32* %4)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %17 = call i32 %14(%struct.TYPE_6__* %15, i32 %16, i32* %5)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %28 = load i32, i32* @ALGO_TRACE, align 4
  %29 = call i32 @BTC_PRINT(i32 %27, i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %98

30:                                               ; preds = %20, %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %41 = load i32, i32* @ALGO_TRACE, align 4
  %42 = call i32 @BTC_PRINT(i32 %40, i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %54 = load i32, i32* @ALGO_TRACE, align 4
  %55 = call i32 @BTC_PRINT(i32 %53, i32 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %67 = load i32, i32* @ALGO_TRACE, align 4
  %68 = call i32 @BTC_PRINT(i32 %66, i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

69:                                               ; preds = %59, %56
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %80 = load i32, i32* @ALGO_TRACE, align 4
  %81 = call i32 @BTC_PRINT(i32 %79, i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %94

82:                                               ; preds = %72, %69
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %87 = load i32, i32* @ALGO_TRACE, align 4
  %88 = call i32 @BTC_PRINT(i32 %86, i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %91 = load i32, i32* @ALGO_TRACE, align 4
  %92 = call i32 @BTC_PRINT(i32 %90, i32 %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %85
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %52
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
