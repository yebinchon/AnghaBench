; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_SetAntPath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_SetAntPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32, i32)*, %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i64 }

@BTC_GET_BL_EXT_SWITCH = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_IS_IN_MP_MODE = common dso_local global i32 0, align 4
@BIT23 = common dso_local global i32 0, align 4
@BIT24 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"[BTCoex], ########### BT is calibrating (wait cnt =%d) ###########\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"[BTCoex], ********** BT is NOT calibrating (wait cnt =%d)**********\0A\00", align 1
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_52__*, i32, i32, i32)* @halbtc8723b1ant_SetAntPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_SetAntPath(%struct.TYPE_52__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_52__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_53__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %18, i32 0, i32 9
  store %struct.TYPE_53__* %19, %struct.TYPE_53__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = bitcast [2 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %21, i32 0, i32 6
  %23 = load i32 (%struct.TYPE_52__*, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32*)** %22, align 8
  %24 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %25 = load i32, i32* @BTC_GET_BL_EXT_SWITCH, align 4
  %26 = call i32 %23(%struct.TYPE_52__* %24, i32 %25, i32* %13)
  %27 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %27, i32 0, i32 6
  %29 = load i32 (%struct.TYPE_52__*, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32*)** %28, align 8
  %30 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %31 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %32 = call i32 %29(%struct.TYPE_52__* %30, i32 %31, i32* %10)
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 786432
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 1, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %105

45:                                               ; preds = %42
  %46 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %46, i32 0, i32 8
  %48 = load i32 (%struct.TYPE_52__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %50 = load i32, i32* @BTC_RF_A, align 4
  %51 = call i32 %48(%struct.TYPE_52__* %49, i32 %50, i32 1, i32 1048575, i32 1920)
  %52 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %52, i32 0, i32 7
  %54 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %53, align 8
  %55 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %56 = load i32, i32* @BTC_BT_REG_RF, align 4
  %57 = call i32 %54(%struct.TYPE_52__* %55, i32 %56, i32 60, i32 21)
  %58 = load i32, i32* %10, align 4
  %59 = icmp sge i32 %58, 1572864
  br i1 %59, label %60, label %68

60:                                               ; preds = %45
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %62, i32 0, i32 3
  %64 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %63, align 8
  %65 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %67 = call i32 %64(%struct.TYPE_52__* %65, i32 110, i32 1, i32* %66)
  br label %74

68:                                               ; preds = %45
  %69 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %69, i32 0, i32 5
  %71 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %70, align 8
  %72 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %73 = call i32 %71(%struct.TYPE_52__* %72, i32 1893, i32 24)
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %75, i32 0, i32 5
  %77 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %76, align 8
  %78 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %79 = call i32 %77(%struct.TYPE_52__* %78, i32 1902, i32 4)
  %80 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %80, i32 0, i32 4
  %82 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %81, align 8
  %83 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %84 = call i32 %82(%struct.TYPE_52__* %83, i32 103, i32 32, i32 1)
  %85 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %85, i32 0, i32 4
  %87 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %89 = call i32 %87(%struct.TYPE_52__* %88, i32 57, i32 8, i32 1)
  %90 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %90, i32 0, i32 5
  %92 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %91, align 8
  %93 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %94 = call i32 %92(%struct.TYPE_52__* %93, i32 2420, i32 255)
  %95 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %95, i32 0, i32 4
  %97 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %96, align 8
  %98 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %99 = call i32 %97(%struct.TYPE_52__* %98, i32 2372, i32 3, i32 3)
  %100 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %100, i32 0, i32 5
  %102 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %101, align 8
  %103 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %104 = call i32 %102(%struct.TYPE_52__* %103, i32 2352, i32 119)
  br label %243

105:                                              ; preds = %42
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %171

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = icmp sge i32 %109, 1572864
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 1, i32* %112, align 4
  %113 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %113, i32 0, i32 3
  %115 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %114, align 8
  %116 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %118 = call i32 %115(%struct.TYPE_52__* %116, i32 110, i32 1, i32* %117)
  br label %125

119:                                              ; preds = %108
  %120 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %120, i32 0, i32 5
  %122 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %121, align 8
  %123 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %124 = call i32 %122(%struct.TYPE_52__* %123, i32 1893, i32 24)
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %126, i32 0, i32 5
  %128 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %127, align 8
  %129 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %130 = call i32 %128(%struct.TYPE_52__* %129, i32 1902, i32 4)
  %131 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %131, i32 0, i32 6
  %133 = load i32 (%struct.TYPE_52__*, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32*)** %132, align 8
  %134 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %135 = load i32, i32* @BTC_GET_BL_WIFI_IS_IN_MP_MODE, align 4
  %136 = call i32 %133(%struct.TYPE_52__* %134, i32 %135, i32* %15)
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %125
  %140 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %140, i32 0, i32 4
  %142 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %141, align 8
  %143 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %144 = call i32 %142(%struct.TYPE_52__* %143, i32 103, i32 32, i32 0)
  br label %151

145:                                              ; preds = %125
  %146 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %146, i32 0, i32 4
  %148 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %147, align 8
  %149 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %150 = call i32 %148(%struct.TYPE_52__* %149, i32 103, i32 32, i32 1)
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)** %153, align 8
  %155 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %156 = call i32 %154(%struct.TYPE_52__* %155, i32 76)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @BIT23, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @BIT24, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %11, align 4
  %165 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %165, i32 0, i32 2
  %167 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %166, align 8
  %168 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 %167(%struct.TYPE_52__* %168, i32 76, i32 %169)
  br label %242

171:                                              ; preds = %105
  %172 = load i32, i32* %10, align 4
  %173 = icmp sge i32 %172, 1572864
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  %175 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %175, i32 0, i32 1
  %177 = load i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)** %176, align 8
  %178 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %179 = call i32 %177(%struct.TYPE_52__* %178, i32 1893)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %182, align 4
  %183 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %183, i32 0, i32 3
  %185 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %184, align 8
  %186 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %188 = call i32 %185(%struct.TYPE_52__* %186, i32 110, i32 1, i32* %187)
  br label %189

189:                                              ; preds = %181, %174
  br label %228

190:                                              ; preds = %171
  br label %191

191:                                              ; preds = %221, %190
  %192 = load i32, i32* %12, align 4
  %193 = icmp sle i32 %192, 20
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  %195 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %195, i32 0, i32 1
  %197 = load i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)** %196, align 8
  %198 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %199 = call i32 %197(%struct.TYPE_52__* %198, i32 1181)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* @BIT0, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %194
  %207 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %208 = load i32, i32* @INTF_INIT, align 4
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @BTC_PRINT(i32 %207, i32 %208, i8* %211)
  %213 = call i32 @mdelay(i32 50)
  br label %221

214:                                              ; preds = %194
  %215 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %216 = load i32, i32* @INTF_INIT, align 4
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = call i32 @BTC_PRINT(i32 %215, i32 %216, i8* %219)
  br label %222

221:                                              ; preds = %206
  br label %191

222:                                              ; preds = %214, %191
  %223 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %223, i32 0, i32 5
  %225 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %224, align 8
  %226 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %227 = call i32 %225(%struct.TYPE_52__* %226, i32 1893, i32 0)
  br label %228

228:                                              ; preds = %222, %189
  %229 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %229, i32 0, i32 1
  %231 = load i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)** %230, align 8
  %232 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %233 = call i32 %231(%struct.TYPE_52__* %232, i32 1902)
  %234 = icmp ne i32 %233, 12
  br i1 %234, label %235, label %241

235:                                              ; preds = %228
  %236 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %236, i32 0, i32 5
  %238 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %237, align 8
  %239 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %240 = call i32 %238(%struct.TYPE_52__* %239, i32 1902, i32 12)
  br label %241

241:                                              ; preds = %235, %228
  br label %242

242:                                              ; preds = %241, %151
  br label %243

243:                                              ; preds = %242, %74
  %244 = load i32, i32* %14, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %358

246:                                              ; preds = %243
  %247 = load i32, i32* %7, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %297

249:                                              ; preds = %246
  %250 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %250, i32 0, i32 0
  %252 = load i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)** %251, align 8
  %253 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %254 = call i32 %252(%struct.TYPE_52__* %253, i32 76)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* @BIT23, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %11, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* @BIT24, align 4
  %260 = load i32, i32* %11, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %11, align 4
  %262 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %262, i32 0, i32 2
  %264 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %263, align 8
  %265 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %266 = load i32, i32* %11, align 4
  %267 = call i32 %264(%struct.TYPE_52__* %265, i32 76, i32 %266)
  %268 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %268, i32 0, i32 2
  %270 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %269, align 8
  %271 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %272 = call i32 %270(%struct.TYPE_52__* %271, i32 2376, i32 0)
  %273 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %249
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %279, align 4
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 1, i32* %280, align 4
  %281 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %281, i32 0, i32 3
  %283 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %282, align 8
  %284 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %286 = call i32 %283(%struct.TYPE_52__* %284, i32 101, i32 2, i32* %285)
  br label %296

287:                                              ; preds = %249
  %288 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 1, i32* %288, align 4
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 1, i32* %289, align 4
  %290 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %290, i32 0, i32 3
  %292 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %291, align 8
  %293 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %295 = call i32 %292(%struct.TYPE_52__* %293, i32 101, i32 2, i32* %294)
  br label %296

296:                                              ; preds = %287, %278
  br label %297

297:                                              ; preds = %296, %246
  %298 = load i32, i32* %6, align 4
  switch i32 %298, label %337 [
    i32 128, label %299
    i32 130, label %318
    i32 129, label %338
  ]

299:                                              ; preds = %297
  %300 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %299
  %306 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %306, i32 0, i32 4
  %308 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %307, align 8
  %309 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %310 = call i32 %308(%struct.TYPE_52__* %309, i32 2348, i32 3, i32 1)
  br label %317

311:                                              ; preds = %299
  %312 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %312, i32 0, i32 4
  %314 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %313, align 8
  %315 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %316 = call i32 %314(%struct.TYPE_52__* %315, i32 2348, i32 3, i32 2)
  br label %317

317:                                              ; preds = %311, %305
  br label %357

318:                                              ; preds = %297
  %319 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %330

324:                                              ; preds = %318
  %325 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %325, i32 0, i32 4
  %327 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %326, align 8
  %328 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %329 = call i32 %327(%struct.TYPE_52__* %328, i32 2348, i32 3, i32 2)
  br label %336

330:                                              ; preds = %318
  %331 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %331, i32 0, i32 4
  %333 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %332, align 8
  %334 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %335 = call i32 %333(%struct.TYPE_52__* %334, i32 2348, i32 3, i32 1)
  br label %336

336:                                              ; preds = %330, %324
  br label %357

337:                                              ; preds = %297
  br label %338

338:                                              ; preds = %297, %337
  %339 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %338
  %345 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %345, i32 0, i32 4
  %347 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %346, align 8
  %348 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %349 = call i32 %347(%struct.TYPE_52__* %348, i32 2348, i32 3, i32 1)
  br label %356

350:                                              ; preds = %338
  %351 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %351, i32 0, i32 4
  %353 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %352, align 8
  %354 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %355 = call i32 %353(%struct.TYPE_52__* %354, i32 2348, i32 3, i32 2)
  br label %356

356:                                              ; preds = %350, %344
  br label %357

357:                                              ; preds = %356, %336, %317
  br label %470

358:                                              ; preds = %243
  %359 = load i32, i32* %7, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %409

361:                                              ; preds = %358
  %362 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %362, i32 0, i32 0
  %364 = load i32 (%struct.TYPE_52__*, i32)*, i32 (%struct.TYPE_52__*, i32)** %363, align 8
  %365 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %366 = call i32 %364(%struct.TYPE_52__* %365, i32 76)
  store i32 %366, i32* %11, align 4
  %367 = load i32, i32* @BIT23, align 4
  %368 = load i32, i32* %11, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %11, align 4
  %370 = load i32, i32* @BIT24, align 4
  %371 = xor i32 %370, -1
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %372, %371
  store i32 %373, i32* %11, align 4
  %374 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %374, i32 0, i32 2
  %376 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %375, align 8
  %377 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %378 = load i32, i32* %11, align 4
  %379 = call i32 %376(%struct.TYPE_52__* %377, i32 76, i32 %378)
  %380 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %380, i32 0, i32 4
  %382 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %381, align 8
  %383 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %384 = call i32 %382(%struct.TYPE_52__* %383, i32 100, i32 1, i32 0)
  %385 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %399

390:                                              ; preds = %361
  %391 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %391, align 4
  %392 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %392, align 4
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %393, i32 0, i32 3
  %395 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %394, align 8
  %396 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %398 = call i32 %395(%struct.TYPE_52__* %396, i32 101, i32 2, i32* %397)
  br label %408

399:                                              ; preds = %361
  %400 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 1, i32* %400, align 4
  %401 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %401, align 4
  %402 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %402, i32 0, i32 3
  %404 = load i32 (%struct.TYPE_52__*, i32, i32, i32*)*, i32 (%struct.TYPE_52__*, i32, i32, i32*)** %403, align 8
  %405 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %406 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %407 = call i32 %404(%struct.TYPE_52__* %405, i32 101, i32 2, i32* %406)
  br label %408

408:                                              ; preds = %399, %390
  br label %409

409:                                              ; preds = %408, %358
  %410 = load i32, i32* %6, align 4
  switch i32 %410, label %449 [
    i32 128, label %411
    i32 130, label %430
    i32 129, label %450
  ]

411:                                              ; preds = %409
  %412 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %411
  %418 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %418, i32 0, i32 2
  %420 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %419, align 8
  %421 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %422 = call i32 %420(%struct.TYPE_52__* %421, i32 2376, i32 0)
  br label %429

423:                                              ; preds = %411
  %424 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %424, i32 0, i32 2
  %426 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %425, align 8
  %427 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %428 = call i32 %426(%struct.TYPE_52__* %427, i32 2376, i32 640)
  br label %429

429:                                              ; preds = %423, %417
  br label %469

430:                                              ; preds = %409
  %431 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %432 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %442

436:                                              ; preds = %430
  %437 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %437, i32 0, i32 2
  %439 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %438, align 8
  %440 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %441 = call i32 %439(%struct.TYPE_52__* %440, i32 2376, i32 640)
  br label %448

442:                                              ; preds = %430
  %443 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %443, i32 0, i32 2
  %445 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %444, align 8
  %446 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %447 = call i32 %445(%struct.TYPE_52__* %446, i32 2376, i32 0)
  br label %448

448:                                              ; preds = %442, %436
  br label %469

449:                                              ; preds = %409
  br label %450

450:                                              ; preds = %409, %449
  %451 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %452 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %462

456:                                              ; preds = %450
  %457 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %457, i32 0, i32 2
  %459 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %458, align 8
  %460 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %461 = call i32 %459(%struct.TYPE_52__* %460, i32 2376, i32 512)
  br label %468

462:                                              ; preds = %450
  %463 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %463, i32 0, i32 2
  %465 = load i32 (%struct.TYPE_52__*, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32)** %464, align 8
  %466 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %467 = call i32 %465(%struct.TYPE_52__* %466, i32 2376, i32 128)
  br label %468

468:                                              ; preds = %462, %456
  br label %469

469:                                              ; preds = %468, %448, %429
  br label %470

470:                                              ; preds = %469, %357
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #2

declare dso_local i32 @mdelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
