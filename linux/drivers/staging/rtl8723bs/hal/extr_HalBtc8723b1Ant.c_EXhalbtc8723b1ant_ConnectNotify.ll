; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_ConnectNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_ConnectNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32, i32*)*, %struct.TYPE_17__, i64, i64 }
%struct.TYPE_17__ = type { i64 }

@BTC_ASSOCIATE_START = common dso_local global i64 0, align 8
@pCoexSta = common dso_local global %struct.TYPE_19__* null, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_20__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_ASSOCIATE_FINISH = common dso_local global i64 0, align 8
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_ConnectNotify(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 5, i64* %10, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %15, %2
  br label %116

27:                                               ; preds = %20
  %28 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexSta, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %35 = load i32, i32* @INTF_NOTIFY, align 4
  %36 = call i32 @BTC_PRINT(i32 %34, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pCoexDm, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %45

39:                                               ; preds = %27
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexSta, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %43 = load i32, i32* @INTF_NOTIFY, align 4
  %44 = call i32 @BTC_PRINT(i32 %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_18__*, i32, i32*)*, i32 (%struct.TYPE_18__*, i32, i32*)** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %51 = call i32 %48(%struct.TYPE_18__* %49, i32 %50, i32* %7)
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 16
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = load i32, i32* @NORMAL_EXEC, align 4
  %59 = call i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_18__* %57, i32 %58, i32 0, i32 0, i32 0, i32 0)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = load i32, i32* @NORMAL_EXEC, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_18__* %60, i32 %61, i32 0, i32 %62, i64 %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = call i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_18__* %65)
  br label %116

67:                                               ; preds = %45
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_18__*, i32, i32*)*, i32 (%struct.TYPE_18__*, i32, i32*)** %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %73 = call i32 %70(%struct.TYPE_18__* %71, i32 %72, i32* %6)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexSta, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = call i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_18__* %79)
  br label %116

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = call i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_18__* %85)
  br label %116

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = call i32 @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(%struct.TYPE_18__* %93)
  br label %116

95:                                               ; preds = %88
  %96 = load i64, i64* @BTC_ASSOCIATE_FINISH, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_18__*, i32, i32*)*, i32 (%struct.TYPE_18__*, i32, i32*)** %101, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %105 = call i32 %102(%struct.TYPE_18__* %103, i32 %104, i32* %5)
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = call i32 @halbtc8723b1ant_ActionWifiNotConnected(%struct.TYPE_18__* %109)
  br label %114

111:                                              ; preds = %99
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = call i32 @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_18__* %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %26, %56, %78, %84, %115, %92
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_18__*, i32, i32, i32, i64) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_18__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_18__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_18__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(%struct.TYPE_18__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnected(%struct.TYPE_18__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
