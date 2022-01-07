; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_SpecialPacketNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_SpecialPacketNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, i32*)*, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_14__ = type { i64 }

@BTC_PACKET_DHCP = common dso_local global i64 0, align 8
@BTC_PACKET_EAPOL = common dso_local global i64 0, align 8
@BTC_PACKET_ARP = common dso_local global i64 0, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], special Packet ARP notify\0A\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_17__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"[BTCoex], ARP Packet Count = %d\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_16__* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"[BTCoex], special Packet DHCP or EAPOL notify\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"[BTCoex], special Packet [Type = %d] notify\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_SpecialPacketNotify(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 5, i64* %9, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14, %2
  br label %149

26:                                               ; preds = %19
  %27 = load i64, i64* @BTC_PACKET_DHCP, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @BTC_PACKET_ARP, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %34, %30, %26
  %39 = load i64, i64* @BTC_PACKET_ARP, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %44 = load i32, i32* @INTF_NOTIFY, align 4
  %45 = call i32 @BTC_PRINT(i32 %43, i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pCoexDm, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %51 = load i32, i32* @INTF_NOTIFY, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pCoexDm, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @BTC_PRINT(i32 %50, i32 %51, i8* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pCoexDm, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 10
  br i1 %61, label %62, label %65

62:                                               ; preds = %42
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %68

65:                                               ; preds = %42
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %75

69:                                               ; preds = %38
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %73 = load i32, i32* @INTF_NOTIFY, align 4
  %74 = call i32 @BTC_PRINT(i32 %72, i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %68
  br label %84

76:                                               ; preds = %34
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %80 = load i32, i32* @INTF_NOTIFY, align 4
  %81 = load i64, i64* %4, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @BTC_PRINT(i32 %79, i32 %80, i8* %82)
  br label %84

84:                                               ; preds = %76, %75
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_15__*, i32, i32*)*, i32 (%struct.TYPE_15__*, i32, i32*)** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %92 = call i32 %89(%struct.TYPE_15__* %90, i32 %91, i32* %6)
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 16
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %95, 2
  br i1 %96, label %97, label %108

97:                                               ; preds = %84
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = load i32, i32* @NORMAL_EXEC, align 4
  %100 = call i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_15__* %98, i32 %99, i32 0, i32 0, i32 0, i32 0)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = load i32, i32* @NORMAL_EXEC, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_15__* %101, i32 %102, i32 0, i32 %103, i64 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = call i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_15__* %106)
  br label %149

108:                                              ; preds = %84
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_15__*, i32, i32*)*, i32 (%struct.TYPE_15__*, i32, i32*)** %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %114 = call i32 %111(%struct.TYPE_15__* %112, i32 %113, i32* %5)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = call i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_15__* %120)
  br label %149

122:                                              ; preds = %108
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = call i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_15__* %126)
  br label %149

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* @BTC_PACKET_DHCP, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  %135 = load i64, i64* %4, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* @BTC_PACKET_ARP, align 8
  %139 = load i64, i64* %4, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** @pCoexSta, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141, %133, %129
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = call i32 @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(%struct.TYPE_15__* %147)
  br label %149

149:                                              ; preds = %25, %97, %119, %125, %146, %141, %137
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_15__*, i32, i32, i32, i64) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_15__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_15__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_15__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
