; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_set_ant_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_set_ant_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_board_info }
%struct.btc_board_info = type { i64 }

@BTC_GET_BL_EXT_SWITCH = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i64 0, align 8
@BIT23 = common dso_local global i32 0, align 4
@BIT24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8723b2ant_set_ant_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_set_ant_path(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btc_board_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 8
  store %struct.btc_board_info* %16, %struct.btc_board_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 7
  %20 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %22 = load i32, i32* @BTC_GET_BL_EXT_SWITCH, align 4
  %23 = call i32 %20(%struct.btc_coexist* %21, i32 %22, i32* %12)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 7
  %26 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %28 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 %28, i32* %10)
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 786432
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %4
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %116

39:                                               ; preds = %36
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 2
  %42 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %41, align 8
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %44 = call i32 %42(%struct.btc_coexist* %43, i32 57, i32 8, i32 1)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %46 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %45, i32 0, i32 4
  %47 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %46, align 8
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %49 = call i32 %47(%struct.btc_coexist* %48, i32 2420, i32 255)
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %51 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %50, i32 0, i32 2
  %52 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %51, align 8
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %54 = call i32 %52(%struct.btc_coexist* %53, i32 2372, i32 3, i32 3)
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 4
  %57 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %56, align 8
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %59 = call i32 %57(%struct.btc_coexist* %58, i32 2352, i32 119)
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 2
  %62 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %61, align 8
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %64 = call i32 %62(%struct.btc_coexist* %63, i32 103, i32 32, i32 1)
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 1572864
  br i1 %66, label %67, label %75

67:                                               ; preds = %39
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %70 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %69, i32 0, i32 5
  %71 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %70, align 8
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %74 = call i32 %71(%struct.btc_coexist* %72, i32 110, i32 1, i32* %73)
  br label %81

75:                                               ; preds = %39
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 4
  %78 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %77, align 8
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %80 = call i32 %78(%struct.btc_coexist* %79, i32 1893, i32 24)
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %83 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %82, i32 0, i32 3
  %84 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %83, align 8
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %86 = call i32 %84(%struct.btc_coexist* %85, i32 2376, i32 0)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 6
  %89 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %91 = load i32, i32* @BTC_RF_A, align 4
  %92 = call i32 %89(%struct.btc_coexist* %90, i32 %91, i32 1, i32 1048575, i32 0)
  %93 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %94 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %81
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %99, align 4
  br label %102

100:                                              ; preds = %81
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 1, i32* %106, align 4
  br label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %111 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %110, i32 0, i32 5
  %112 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %111, align 8
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %115 = call i32 %112(%struct.btc_coexist* %113, i32 101, i32 2, i32* %114)
  br label %134

116:                                              ; preds = %36
  %117 = load i32, i32* %10, align 4
  %118 = icmp sge i32 %117, 1572864
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %122 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %121, i32 0, i32 5
  %123 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %122, align 8
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %126 = call i32 %123(%struct.btc_coexist* %124, i32 110, i32 1, i32* %125)
  br label %133

127:                                              ; preds = %116
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %129 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %128, i32 0, i32 4
  %130 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %129, align 8
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %132 = call i32 %130(%struct.btc_coexist* %131, i32 1893, i32 0)
  br label %133

133:                                              ; preds = %127, %119
  br label %134

134:                                              ; preds = %133, %109
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %192

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %142 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %141, i32 0, i32 0
  %143 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %142, align 8
  %144 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %145 = call i32 %143(%struct.btc_coexist* %144, i32 76)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* @BIT23, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* @BIT24, align 4
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %154 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %153, i32 0, i32 3
  %155 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %154, align 8
  %156 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 %155(%struct.btc_coexist* %156, i32 76, i32 %157)
  br label %159

159:                                              ; preds = %140, %137
  %160 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %161 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %167 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %166, i32 0, i32 1
  %168 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %167, align 8
  %169 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %170 = call i32 %168(%struct.btc_coexist* %169, i32 2376, i32 0)
  br label %177

171:                                              ; preds = %159
  %172 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %173 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %172, i32 0, i32 1
  %174 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %173, align 8
  %175 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %176 = call i32 %174(%struct.btc_coexist* %175, i32 2376, i32 640)
  br label %177

177:                                              ; preds = %171, %165
  %178 = load i32, i32* %6, align 4
  switch i32 %178, label %191 [
    i32 128, label %179
    i32 129, label %185
  ]

179:                                              ; preds = %177
  %180 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %181 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %180, i32 0, i32 2
  %182 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %181, align 8
  %183 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %184 = call i32 %182(%struct.btc_coexist* %183, i32 2348, i32 3, i32 1)
  br label %191

185:                                              ; preds = %177
  %186 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %187 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %186, i32 0, i32 2
  %188 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %187, align 8
  %189 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %190 = call i32 %188(%struct.btc_coexist* %189, i32 2348, i32 3, i32 2)
  br label %191

191:                                              ; preds = %177, %185, %179
  br label %234

192:                                              ; preds = %134
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %192
  %196 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %197 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %196, i32 0, i32 0
  %198 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %197, align 8
  %199 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %200 = call i32 %198(%struct.btc_coexist* %199, i32 76)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* @BIT23, align 4
  %202 = load i32, i32* %11, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* @BIT24, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %11, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %209 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %208, i32 0, i32 3
  %210 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %209, align 8
  %211 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 %210(%struct.btc_coexist* %211, i32 76, i32 %212)
  br label %214

214:                                              ; preds = %195, %192
  %215 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %216 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %215, i32 0, i32 2
  %217 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %216, align 8
  %218 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %219 = call i32 %217(%struct.btc_coexist* %218, i32 100, i32 1, i32 0)
  %220 = load i32, i32* %6, align 4
  switch i32 %220, label %233 [
    i32 128, label %221
    i32 129, label %227
  ]

221:                                              ; preds = %214
  %222 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %223 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %222, i32 0, i32 1
  %224 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %223, align 8
  %225 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %226 = call i32 %224(%struct.btc_coexist* %225, i32 2376, i32 0)
  br label %233

227:                                              ; preds = %214
  %228 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %229 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %228, i32 0, i32 1
  %230 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %229, align 8
  %231 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %232 = call i32 %230(%struct.btc_coexist* %231, i32 2376, i32 640)
  br label %233

233:                                              ; preds = %214, %227, %221
  br label %234

234:                                              ; preds = %233, %191
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
