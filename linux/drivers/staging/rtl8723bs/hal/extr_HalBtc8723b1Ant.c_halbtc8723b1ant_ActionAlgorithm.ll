; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionAlgorithm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionAlgorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32*)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32 }

@BT_8723B_1ANT_COEX_ALGO_UNDEFINED = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], No BT link exists!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[BTCoex], BT Profile = SCO only\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_SCO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], BT Profile = HID only\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_HID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"[BTCoex], BT Profile = A2DP only\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_A2DP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"[BTCoex], BT Profile = PAN(HS) only\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_PANHS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"[BTCoex], BT Profile = PAN(EDR) only\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_PANEDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"[BTCoex], BT Profile = SCO + HID\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"[BTCoex], BT Profile = SCO + A2DP ==> SCO\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"[BTCoex], BT Profile = SCO + PAN(HS)\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT Profile = SCO + PAN(EDR)\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_PANEDR_HID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"[BTCoex], BT Profile = HID + A2DP\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_HID_A2DP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"[BTCoex], BT Profile = HID + PAN(HS)\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT Profile = HID + PAN(EDR)\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT Profile = A2DP + PAN(HS)\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_A2DP_PANHS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"[BTCoex], BT Profile = A2DP + PAN(EDR)\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_PANEDR_A2DP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [49 x i8] c"[BTCoex], BT Profile = SCO + HID + A2DP ==> HID\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"[BTCoex], BT Profile = SCO + HID + PAN(HS)\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"[BTCoex], BT Profile = SCO + HID + PAN(EDR)\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"[BTCoex], BT Profile = SCO + A2DP + PAN(HS)\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"[BTCoex], BT Profile = SCO + A2DP + PAN(EDR) ==> HID\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"[BTCoex], BT Profile = HID + A2DP + PAN(HS)\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"[BTCoex], BT Profile = HID + A2DP + PAN(EDR)\0A\00", align 1
@BT_8723B_1ANT_COEX_ALGO_HID_A2DP_PANEDR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [60 x i8] c"[BTCoex], Error!!! BT Profile = SCO + HID + A2DP + PAN(HS)\0A\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"[BTCoex], BT Profile = SCO + HID + A2DP + PAN(EDR) ==>PAN(EDR)+HID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @halbtc8723b1ant_ActionAlgorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc8723b1ant_ActionAlgorithm(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_UNDEFINED, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_5__*, i32, i32*)*, i32 (%struct.TYPE_5__*, i32, i32*)** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %16 = call i32 %13(%struct.TYPE_5__* %14, i32 %15, i32* %5)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %23 = load i32, i32* @ALGO_TRACE, align 4
  %24 = call i32 @BTC_PRINT(i32 %22, i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %379

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %114

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %68 = load i32, i32* @ALGO_TRACE, align 4
  %69 = call i32 @BTC_PRINT(i32 %67, i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_SCO, align 4
  store i32 %70, i32* %6, align 4
  br label %113

71:                                               ; preds = %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %78 = load i32, i32* @ALGO_TRACE, align 4
  %79 = call i32 @BTC_PRINT(i32 %77, i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID, align 4
  store i32 %80, i32* %6, align 4
  br label %112

81:                                               ; preds = %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %88 = load i32, i32* @ALGO_TRACE, align 4
  %89 = call i32 @BTC_PRINT(i32 %87, i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_A2DP, align 4
  store i32 %90, i32* %6, align 4
  br label %111

91:                                               ; preds = %81
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %101 = load i32, i32* @ALGO_TRACE, align 4
  %102 = call i32 @BTC_PRINT(i32 %100, i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANHS, align 4
  store i32 %103, i32* %6, align 4
  br label %109

104:                                              ; preds = %96
  %105 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %106 = load i32, i32* @ALGO_TRACE, align 4
  %107 = call i32 @BTC_PRINT(i32 %105, i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %110, %86
  br label %112

112:                                              ; preds = %111, %76
  br label %113

113:                                              ; preds = %112, %66
  br label %377

114:                                              ; preds = %58
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %231

117:                                              ; preds = %114
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %117
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %129 = load i32, i32* @ALGO_TRACE, align 4
  %130 = call i32 @BTC_PRINT(i32 %128, i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID, align 4
  store i32 %131, i32* %6, align 4
  br label %163

132:                                              ; preds = %122
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %139 = load i32, i32* @ALGO_TRACE, align 4
  %140 = call i32 @BTC_PRINT(i32 %138, i32 %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_SCO, align 4
  store i32 %141, i32* %6, align 4
  br label %162

142:                                              ; preds = %132
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %152 = load i32, i32* @ALGO_TRACE, align 4
  %153 = call i32 @BTC_PRINT(i32 %151, i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %154 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_SCO, align 4
  store i32 %154, i32* %6, align 4
  br label %160

155:                                              ; preds = %147
  %156 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %157 = load i32, i32* @ALGO_TRACE, align 4
  %158 = call i32 @BTC_PRINT(i32 %156, i32 %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %142
  br label %162

162:                                              ; preds = %161, %137
  br label %163

163:                                              ; preds = %162, %127
  br label %230

164:                                              ; preds = %117
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %176 = load i32, i32* @ALGO_TRACE, align 4
  %177 = call i32 @BTC_PRINT(i32 %175, i32 %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %178 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %178, i32* %6, align 4
  br label %229

179:                                              ; preds = %169, %164
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %203

184:                                              ; preds = %179
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %184
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %194 = load i32, i32* @ALGO_TRACE, align 4
  %195 = call i32 @BTC_PRINT(i32 %193, i32 %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %196 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %196, i32* %6, align 4
  br label %202

197:                                              ; preds = %189
  %198 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %199 = load i32, i32* @ALGO_TRACE, align 4
  %200 = call i32 @BTC_PRINT(i32 %198, i32 %199, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %201 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %197, %192
  br label %228

203:                                              ; preds = %184, %179
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %203
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %218 = load i32, i32* @ALGO_TRACE, align 4
  %219 = call i32 @BTC_PRINT(i32 %217, i32 %218, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %220 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_A2DP_PANHS, align 4
  store i32 %220, i32* %6, align 4
  br label %226

221:                                              ; preds = %213
  %222 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %223 = load i32, i32* @ALGO_TRACE, align 4
  %224 = call i32 @BTC_PRINT(i32 %222, i32 %223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %225 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR_A2DP, align 4
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %221, %216
  br label %227

227:                                              ; preds = %226, %208, %203
  br label %228

228:                                              ; preds = %227, %202
  br label %229

229:                                              ; preds = %228, %174
  br label %230

230:                                              ; preds = %229, %163
  br label %376

231:                                              ; preds = %114
  %232 = load i32, i32* %7, align 4
  %233 = icmp eq i32 %232, 3
  br i1 %233, label %234, label %336

234:                                              ; preds = %231
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %305

239:                                              ; preds = %234
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %239
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %251 = load i32, i32* @ALGO_TRACE, align 4
  %252 = call i32 @BTC_PRINT(i32 %250, i32 %251, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  %253 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID, align 4
  store i32 %253, i32* %6, align 4
  br label %304

254:                                              ; preds = %244, %239
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %278

259:                                              ; preds = %254
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %259
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %269 = load i32, i32* @ALGO_TRACE, align 4
  %270 = call i32 @BTC_PRINT(i32 %268, i32 %269, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  %271 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %271, i32* %6, align 4
  br label %277

272:                                              ; preds = %264
  %273 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %274 = load i32, i32* @ALGO_TRACE, align 4
  %275 = call i32 @BTC_PRINT(i32 %273, i32 %274, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  %276 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %272, %267
  br label %303

278:                                              ; preds = %259, %254
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %278
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %302

288:                                              ; preds = %283
  %289 = load i32, i32* %5, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %293 = load i32, i32* @ALGO_TRACE, align 4
  %294 = call i32 @BTC_PRINT(i32 %292, i32 %293, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0))
  %295 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_SCO, align 4
  store i32 %295, i32* %6, align 4
  br label %301

296:                                              ; preds = %288
  %297 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %298 = load i32, i32* @ALGO_TRACE, align 4
  %299 = call i32 @BTC_PRINT(i32 %297, i32 %298, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %300 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %300, i32* %6, align 4
  br label %301

301:                                              ; preds = %296, %291
  br label %302

302:                                              ; preds = %301, %283, %278
  br label %303

303:                                              ; preds = %302, %277
  br label %304

304:                                              ; preds = %303, %249
  br label %335

305:                                              ; preds = %234
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %305
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %334

315:                                              ; preds = %310
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %334

320:                                              ; preds = %315
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %325 = load i32, i32* @ALGO_TRACE, align 4
  %326 = call i32 @BTC_PRINT(i32 %324, i32 %325, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  %327 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID_A2DP, align 4
  store i32 %327, i32* %6, align 4
  br label %333

328:                                              ; preds = %320
  %329 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %330 = load i32, i32* @ALGO_TRACE, align 4
  %331 = call i32 @BTC_PRINT(i32 %329, i32 %330, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0))
  %332 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_HID_A2DP_PANEDR, align 4
  store i32 %332, i32* %6, align 4
  br label %333

333:                                              ; preds = %328, %323
  br label %334

334:                                              ; preds = %333, %315, %310, %305
  br label %335

335:                                              ; preds = %334, %304
  br label %375

336:                                              ; preds = %231
  %337 = load i32, i32* %7, align 4
  %338 = icmp sge i32 %337, 3
  br i1 %338, label %339, label %374

339:                                              ; preds = %336
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %373

344:                                              ; preds = %339
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %372

349:                                              ; preds = %344
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %372

354:                                              ; preds = %349
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %372

359:                                              ; preds = %354
  %360 = load i32, i32* %5, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %364 = load i32, i32* @ALGO_TRACE, align 4
  %365 = call i32 @BTC_PRINT(i32 %363, i32 %364, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0))
  br label %371

366:                                              ; preds = %359
  %367 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %368 = load i32, i32* @ALGO_TRACE, align 4
  %369 = call i32 @BTC_PRINT(i32 %367, i32 %368, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i64 0, i64 0))
  %370 = load i32, i32* @BT_8723B_1ANT_COEX_ALGO_PANEDR_HID, align 4
  store i32 %370, i32* %6, align 4
  br label %371

371:                                              ; preds = %366, %362
  br label %372

372:                                              ; preds = %371, %354, %349, %344
  br label %373

373:                                              ; preds = %372, %339
  br label %374

374:                                              ; preds = %373, %336
  br label %375

375:                                              ; preds = %374, %335
  br label %376

376:                                              ; preds = %375, %230
  br label %377

377:                                              ; preds = %376, %113
  %378 = load i32, i32* %6, align 4
  store i32 %378, i32* %2, align 4
  br label %379

379:                                              ; preds = %377, %21
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
