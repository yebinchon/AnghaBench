; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionWifiConnectedBtAclBusy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionWifiConnectedBtAclBusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64, i64, i64, i64, i64 }

@pCoexSta = common dso_local global %struct.TYPE_12__* null, align 8
@pCoexDm = common dso_local global %struct.TYPE_13__* null, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @halbtc8723b1ant_ActionWifiConnectedBtAclBusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %6, align 8
  %9 = call i64 @halbtc8723b1ant_BtRssiState(i32 2, i32 28, i32 0)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 1000
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 65535
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @halbtc8723b1ant_ActionBtScoHidOnlyBusy(%struct.TYPE_10__* %31, i64 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %154

36:                                               ; preds = %25
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load i32, i32* @NORMAL_EXEC, align 4
  %48 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %46, i32 %47, i32 1, i32 32)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = load i32, i32* @NORMAL_EXEC, align 4
  %51 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %49, i32 %50, i32 4)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %63

54:                                               ; preds = %41
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @halbtc8723b1ant_TdmaDurationAdjustForAcl(%struct.TYPE_10__* %55, i64 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load i32, i32* @NORMAL_EXEC, align 4
  %60 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %58, i32 %59, i32 4)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %45
  br label %153

64:                                               ; preds = %36
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = load i32, i32* @NORMAL_EXEC, align 4
  %77 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %75, i32 %76, i32 1, i32 14)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = load i32, i32* @NORMAL_EXEC, align 4
  %82 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %80, i32 %81, i32 4)
  br label %152

83:                                               ; preds = %69, %64
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93, %83
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = load i32, i32* @NORMAL_EXEC, align 4
  %101 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %99, i32 %100, i32 1, i32 3)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = load i32, i32* @NORMAL_EXEC, align 4
  %104 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %102, i32 %103, i32 4)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  br label %151

107:                                              ; preds = %93, %88
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127, %112
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = load i32, i32* @NORMAL_EXEC, align 4
  %135 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %133, i32 %134, i32 1, i32 13)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = load i32, i32* @NORMAL_EXEC, align 4
  %138 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %136, i32 %137, i32 4)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  br label %150

141:                                              ; preds = %127, %122, %117
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = load i32, i32* @NORMAL_EXEC, align 4
  %144 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %142, i32 %143, i32 1, i32 32)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = load i32, i32* @NORMAL_EXEC, align 4
  %147 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %145, i32 %146, i32 4)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %141, %132
  br label %151

151:                                              ; preds = %150, %98
  br label %152

152:                                              ; preds = %151, %74
  br label %153

153:                                              ; preds = %152, %63
  br label %154

154:                                              ; preds = %30, %153
  ret void
}

declare dso_local i64 @halbtc8723b1ant_BtRssiState(i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ActionBtScoHidOnlyBusy(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_TdmaDurationAdjustForAcl(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
