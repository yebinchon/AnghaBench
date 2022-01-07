; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_fw.c__rtl8723e_fill_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_fw.c__rtl8723e_fill_h2c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32, i64 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"come in\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Wait 100 us (%d times)...\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Write H2C fail because no trigger for FW INT!\0A\00", align 1
@REG_HMEBOX_0 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_0 = common dso_local global i64 0, align 8
@REG_HMEBOX_1 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_1 = common dso_local global i64 0, align 8
@REG_HMEBOX_2 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_2 = common dso_local global i64 0, align 8
@REG_HMEBOX_3 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x1BF = %2x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"go out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32, i64*)* @_rtl8723e_fill_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_fill_h2c_command(%struct.ieee80211_hw* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i64], align 16
  %21 = alloca [2 x i64], align 16
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %9, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %28)
  store %struct.rtl_hal* %29, %struct.rtl_hal** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i64 100, i64* %18, align 8
  store i64 100, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %31 = load i32, i32* @COMP_CMD, align 4
  %32 = load i32, i32* @DBG_LOUD, align 4
  %33 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %4, %92
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %23, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %34
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %46 = load i32, i32* @COMP_CMD, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %72, %44
  %51 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %52 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %23, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %22, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %22, align 4
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %64 = load i32, i32* @COMP_CMD, align 4
  %65 = load i32, i32* @DBG_LOUD, align 4
  %66 = load i32, i32* %22, align 4
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = call i32 @udelay(i32 100)
  %69 = load i32, i32* %22, align 4
  %70 = icmp sgt i32 %69, 1000
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %402

72:                                               ; preds = %55
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %23, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  br label %50

78:                                               ; preds = %50
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %23, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %92

84:                                               ; preds = %34
  %85 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %86 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %23, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  br label %93

92:                                               ; preds = %78
  br label %34

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %377, %93
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %385

98:                                               ; preds = %94
  %99 = load i64, i64* %19, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %19, align 8
  %101 = load i64, i64* %19, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %385

105:                                              ; preds = %98
  %106 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %107 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  switch i64 %109, label %122 [
    i64 0, label %110
    i64 1, label %113
    i64 2, label %116
    i64 3, label %119
  ]

110:                                              ; preds = %105
  %111 = load i64, i64* @REG_HMEBOX_0, align 8
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* @REG_HMEBOX_EXT_0, align 8
  store i64 %112, i64* %13, align 8
  br label %125

113:                                              ; preds = %105
  %114 = load i64, i64* @REG_HMEBOX_1, align 8
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* @REG_HMEBOX_EXT_1, align 8
  store i64 %115, i64* %13, align 8
  br label %125

116:                                              ; preds = %105
  %117 = load i64, i64* @REG_HMEBOX_2, align 8
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* @REG_HMEBOX_EXT_2, align 8
  store i64 %118, i64* %13, align 8
  br label %125

119:                                              ; preds = %105
  %120 = load i64, i64* @REG_HMEBOX_3, align 8
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* @REG_HMEBOX_EXT_3, align 8
  store i64 %121, i64* %13, align 8
  br label %125

122:                                              ; preds = %105
  %123 = load i64, i64* %11, align 8
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %122, %119, %116, %113, %110
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @_rtl8723e_check_fw_read_last_h2c(%struct.ieee80211_hw* %126, i64 %127)
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %144, %125
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load i64, i64* %18, align 8
  %135 = add nsw i64 %134, -1
  store i64 %135, i64* %18, align 8
  %136 = load i64, i64* %18, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %140 = load i32, i32* @COMP_CMD, align 4
  %141 = load i32, i32* @DBG_LOUD, align 4
  %142 = load i64, i64* %11, align 8
  %143 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %142)
  br label %157

144:                                              ; preds = %133
  %145 = call i32 @udelay(i32 10)
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @_rtl8723e_check_fw_read_last_h2c(%struct.ieee80211_hw* %146, i64 %147)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %150 = call i64 @rtl_read_byte(%struct.rtl_priv* %149, i32 447)
  store i64 %150, i64* %14, align 8
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %152 = load i32, i32* @COMP_CMD, align 4
  %153 = load i32, i32* @DBG_LOUD, align 4
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %14, align 8
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %151, i32 %152, i32 %153, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %154, i64 %155)
  br label %129

157:                                              ; preds = %138, %129
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %162 = load i32, i32* @COMP_CMD, align 4
  %163 = load i32, i32* @DBG_LOUD, align 4
  %164 = load i64, i64* %11, align 8
  %165 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %164)
  br label %385

166:                                              ; preds = %157
  %167 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %168 = call i32 @memset(i64* %167, i32 0, i32 32)
  %169 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %170 = call i32 @memset(i64* %169, i32 0, i32 16)
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  store i64 %171, i64* %172, align 16
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %174 = load i32, i32* @COMP_CMD, align 4
  %175 = load i32, i32* @DBG_LOUD, align 4
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %6, align 8
  %178 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %176, i64 %177)
  %179 = load i32, i32* %7, align 4
  switch i32 %179, label %362 [
    i32 1, label %180
    i32 2, label %208
    i32 3, label %236
    i32 4, label %264
    i32 5, label %313
  ]

180:                                              ; preds = %166
  %181 = call i64 @BIT(i32 7)
  %182 = xor i64 %181, -1
  %183 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %184 = load i64, i64* %183, align 16
  %185 = and i64 %184, %182
  store i64 %185, i64* %183, align 16
  %186 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64*, i64** %8, align 8
  %189 = load i64, i64* %16, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = call i32 @memcpy(i64* %187, i64* %190, i32 1)
  store i64 0, i64* %24, align 8
  br label %192

192:                                              ; preds = %204, %180
  %193 = load i64, i64* %24, align 8
  %194 = icmp slt i64 %193, 4
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* %24, align 8
  %199 = add nsw i64 %197, %198
  %200 = load i64, i64* %24, align 8
  %201 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @rtl_write_byte(%struct.rtl_priv* %196, i64 %199, i64 %202)
  br label %204

204:                                              ; preds = %195
  %205 = load i64, i64* %24, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %24, align 8
  br label %192

207:                                              ; preds = %192
  br label %365

208:                                              ; preds = %166
  %209 = call i64 @BIT(i32 7)
  %210 = xor i64 %209, -1
  %211 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %212 = load i64, i64* %211, align 16
  %213 = and i64 %212, %210
  store i64 %213, i64* %211, align 16
  %214 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  %216 = load i64*, i64** %8, align 8
  %217 = load i64, i64* %16, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = call i32 @memcpy(i64* %215, i64* %218, i32 2)
  store i64 0, i64* %24, align 8
  br label %220

220:                                              ; preds = %232, %208
  %221 = load i64, i64* %24, align 8
  %222 = icmp slt i64 %221, 4
  br i1 %222, label %223, label %235

223:                                              ; preds = %220
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %225 = load i64, i64* %12, align 8
  %226 = load i64, i64* %24, align 8
  %227 = add nsw i64 %225, %226
  %228 = load i64, i64* %24, align 8
  %229 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @rtl_write_byte(%struct.rtl_priv* %224, i64 %227, i64 %230)
  br label %232

232:                                              ; preds = %223
  %233 = load i64, i64* %24, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %24, align 8
  br label %220

235:                                              ; preds = %220
  br label %365

236:                                              ; preds = %166
  %237 = call i64 @BIT(i32 7)
  %238 = xor i64 %237, -1
  %239 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %240 = load i64, i64* %239, align 16
  %241 = and i64 %240, %238
  store i64 %241, i64* %239, align 16
  %242 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %243 = getelementptr inbounds i64, i64* %242, i64 1
  %244 = load i64*, i64** %8, align 8
  %245 = load i64, i64* %16, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = call i32 @memcpy(i64* %243, i64* %246, i32 3)
  store i64 0, i64* %24, align 8
  br label %248

248:                                              ; preds = %260, %236
  %249 = load i64, i64* %24, align 8
  %250 = icmp slt i64 %249, 4
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %253 = load i64, i64* %12, align 8
  %254 = load i64, i64* %24, align 8
  %255 = add nsw i64 %253, %254
  %256 = load i64, i64* %24, align 8
  %257 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @rtl_write_byte(%struct.rtl_priv* %252, i64 %255, i64 %258)
  br label %260

260:                                              ; preds = %251
  %261 = load i64, i64* %24, align 8
  %262 = add nsw i64 %261, 1
  store i64 %262, i64* %24, align 8
  br label %248

263:                                              ; preds = %248
  br label %365

264:                                              ; preds = %166
  %265 = call i64 @BIT(i32 7)
  %266 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %267 = load i64, i64* %266, align 16
  %268 = or i64 %267, %265
  store i64 %268, i64* %266, align 16
  %269 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %270 = load i64*, i64** %8, align 8
  %271 = load i64, i64* %16, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = call i32 @memcpy(i64* %269, i64* %272, i32 2)
  %274 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  %276 = load i64*, i64** %8, align 8
  %277 = load i64, i64* %16, align 8
  %278 = getelementptr inbounds i64, i64* %276, i64 %277
  %279 = getelementptr inbounds i64, i64* %278, i64 2
  %280 = call i32 @memcpy(i64* %275, i64* %279, i32 2)
  store i64 0, i64* %24, align 8
  br label %281

281:                                              ; preds = %293, %264
  %282 = load i64, i64* %24, align 8
  %283 = icmp slt i64 %282, 2
  br i1 %283, label %284, label %296

284:                                              ; preds = %281
  %285 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %286 = load i64, i64* %13, align 8
  %287 = load i64, i64* %24, align 8
  %288 = add nsw i64 %286, %287
  %289 = load i64, i64* %24, align 8
  %290 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @rtl_write_byte(%struct.rtl_priv* %285, i64 %288, i64 %291)
  br label %293

293:                                              ; preds = %284
  %294 = load i64, i64* %24, align 8
  %295 = add nsw i64 %294, 1
  store i64 %295, i64* %24, align 8
  br label %281

296:                                              ; preds = %281
  store i64 0, i64* %24, align 8
  br label %297

297:                                              ; preds = %309, %296
  %298 = load i64, i64* %24, align 8
  %299 = icmp slt i64 %298, 4
  br i1 %299, label %300, label %312

300:                                              ; preds = %297
  %301 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %302 = load i64, i64* %12, align 8
  %303 = load i64, i64* %24, align 8
  %304 = add nsw i64 %302, %303
  %305 = load i64, i64* %24, align 8
  %306 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @rtl_write_byte(%struct.rtl_priv* %301, i64 %304, i64 %307)
  br label %309

309:                                              ; preds = %300
  %310 = load i64, i64* %24, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %24, align 8
  br label %297

312:                                              ; preds = %297
  br label %365

313:                                              ; preds = %166
  %314 = call i64 @BIT(i32 7)
  %315 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %316 = load i64, i64* %315, align 16
  %317 = or i64 %316, %314
  store i64 %317, i64* %315, align 16
  %318 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %319 = load i64*, i64** %8, align 8
  %320 = load i64, i64* %16, align 8
  %321 = getelementptr inbounds i64, i64* %319, i64 %320
  %322 = call i32 @memcpy(i64* %318, i64* %321, i32 2)
  %323 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %324 = getelementptr inbounds i64, i64* %323, i64 1
  %325 = load i64*, i64** %8, align 8
  %326 = load i64, i64* %16, align 8
  %327 = getelementptr inbounds i64, i64* %325, i64 %326
  %328 = getelementptr inbounds i64, i64* %327, i64 2
  %329 = call i32 @memcpy(i64* %324, i64* %328, i32 3)
  store i64 0, i64* %24, align 8
  br label %330

330:                                              ; preds = %342, %313
  %331 = load i64, i64* %24, align 8
  %332 = icmp slt i64 %331, 2
  br i1 %332, label %333, label %345

333:                                              ; preds = %330
  %334 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %335 = load i64, i64* %13, align 8
  %336 = load i64, i64* %24, align 8
  %337 = add nsw i64 %335, %336
  %338 = load i64, i64* %24, align 8
  %339 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @rtl_write_byte(%struct.rtl_priv* %334, i64 %337, i64 %340)
  br label %342

342:                                              ; preds = %333
  %343 = load i64, i64* %24, align 8
  %344 = add nsw i64 %343, 1
  store i64 %344, i64* %24, align 8
  br label %330

345:                                              ; preds = %330
  store i64 0, i64* %24, align 8
  br label %346

346:                                              ; preds = %358, %345
  %347 = load i64, i64* %24, align 8
  %348 = icmp slt i64 %347, 4
  br i1 %348, label %349, label %361

349:                                              ; preds = %346
  %350 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %351 = load i64, i64* %12, align 8
  %352 = load i64, i64* %24, align 8
  %353 = add nsw i64 %351, %352
  %354 = load i64, i64* %24, align 8
  %355 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @rtl_write_byte(%struct.rtl_priv* %350, i64 %353, i64 %356)
  br label %358

358:                                              ; preds = %349
  %359 = load i64, i64* %24, align 8
  %360 = add nsw i64 %359, 1
  store i64 %360, i64* %24, align 8
  br label %346

361:                                              ; preds = %346
  br label %365

362:                                              ; preds = %166
  %363 = load i32, i32* %7, align 4
  %364 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %363)
  br label %365

365:                                              ; preds = %362, %361, %312, %263, %235, %207
  store i32 1, i32* %17, align 4
  %366 = load i64, i64* %11, align 8
  %367 = add nsw i64 %366, 1
  %368 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %369 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %368, i32 0, i32 1
  store i64 %367, i64* %369, align 8
  %370 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %371 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %372, 4
  br i1 %373, label %374, label %377

374:                                              ; preds = %365
  %375 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %376 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %375, i32 0, i32 1
  store i64 0, i64* %376, align 8
  br label %377

377:                                              ; preds = %374, %365
  %378 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %379 = load i32, i32* @COMP_CMD, align 4
  %380 = load i32, i32* @DBG_LOUD, align 4
  %381 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %382 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %378, i32 %379, i32 %380, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %383)
  br label %94

385:                                              ; preds = %160, %103, %94
  %386 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %387 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 0
  %389 = load i64, i64* %23, align 8
  %390 = call i32 @spin_lock_irqsave(i32* %388, i64 %389)
  %391 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %392 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %391, i32 0, i32 0
  store i32 0, i32* %392, align 8
  %393 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %394 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i32 0, i32 0
  %396 = load i64, i64* %23, align 8
  %397 = call i32 @spin_unlock_irqrestore(i32* %395, i64 %396)
  %398 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %399 = load i32, i32* @COMP_CMD, align 4
  %400 = load i32, i32* @DBG_LOUD, align 4
  %401 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %398, i32 %399, i32 %400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %402

402:                                              ; preds = %385, %71
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @_rtl8723e_check_fw_read_last_h2c(%struct.ieee80211_hw*, i64) #1

declare dso_local i64 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
