; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_IpsNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_IpsNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@BTC_IPS_ENTER = common dso_local global i64 0, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_11__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@BTC_IPS_LEAVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_IpsNotify(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  br label %51

15:                                               ; preds = %9
  %16 = load i64, i64* @BTC_IPS_ENTER, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %21 = load i32, i32* @INTF_NOTIFY, align 4
  %22 = call i32 @BTC_PRINT(i32 %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexSta, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i32, i32* @NORMAL_EXEC, align 4
  %27 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %25, i32 %26, i32 0, i32 0)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = load i32, i32* @NORMAL_EXEC, align 4
  %30 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %33 = call i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__* %31, i32 %32, i32 0, i32 1)
  br label %51

34:                                               ; preds = %15
  %35 = load i64, i64* @BTC_IPS_LEAVE, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %40 = load i32, i32* @INTF_NOTIFY, align 4
  %41 = call i32 @BTC_PRINT(i32 %39, i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexSta, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @halbtc8723b1ant_InitHwConfig(%struct.TYPE_10__* %44, i32 0, i32 0)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call i32 @halbtc8723b1ant_InitCoexDm(%struct.TYPE_10__* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = call i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_10__* %48)
  br label %50

50:                                               ; preds = %38, %34
  br label %51

51:                                               ; preds = %14, %50, %19
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_InitHwConfig(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_InitCoexDm(%struct.TYPE_10__*) #1

declare dso_local i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
