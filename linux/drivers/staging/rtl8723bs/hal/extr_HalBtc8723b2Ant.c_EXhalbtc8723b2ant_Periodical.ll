; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_Periodical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_Periodical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32*)* }

@EXhalbtc8723b2ant_Periodical.disVerInfoCnt = internal global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"[BTCoex], ==========================Periodical ===========================\0A\00", align 1
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"[BTCoex], ****************************************************************\0A\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"[BTCoex], CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\0A\00", align 1
@GLCoexVerDate8723b2Ant = common dso_local global i32 0, align 4
@GLCoexVer8723b2Ant = common dso_local global i32 0, align 4
@pCoexDm = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b2ant_Periodical(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %6 = load i32, i32* @ALGO_TRACE, align 4
  %7 = call i32 @BTC_PRINT(i32 %5, i32 %6, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EXhalbtc8723b2ant_Periodical.disVerInfoCnt, align 4
  %9 = icmp sle i32 %8, 5
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load i32, i32* @EXhalbtc8723b2ant_Periodical.disVerInfoCnt, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @EXhalbtc8723b2ant_Periodical.disVerInfoCnt, align 4
  %13 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %14 = load i32, i32* @INTF_INIT, align 4
  %15 = call i32 @BTC_PRINT(i32 %13, i32 %14, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %21 = call i32 %18(%struct.TYPE_8__* %19, i32 %20, i32* %4)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %27 = call i32 %24(%struct.TYPE_8__* %25, i32 %26, i32* %3)
  %28 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %29 = load i32, i32* @INTF_INIT, align 4
  %30 = load i32, i32* @GLCoexVerDate8723b2Ant, align 4
  %31 = load i32, i32* @GLCoexVer8723b2Ant, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @BTC_PRINT(i32 %28, i32 %29, i8* %36)
  %38 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %39 = load i32, i32* @INTF_INIT, align 4
  %40 = call i32 @BTC_PRINT(i32 %38, i32 %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %10, %1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = call i64 @halbtc8723b2ant_IsWifiStatusChanged(%struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexDm, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = call i32 @halbtc8723b2ant_RunCoexistMechanism(%struct.TYPE_8__* %51)
  br label %53

53:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i64 @halbtc8723b2ant_IsWifiStatusChanged(%struct.TYPE_8__*) #1

declare dso_local i32 @halbtc8723b2ant_RunCoexistMechanism(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
