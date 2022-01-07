; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_fill_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_fill_h2c_command.c"
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
@COMP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x1BF = %2x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"go out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32, i64*)* @_rtl92c_fill_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_fill_h2c_command(%struct.ieee80211_hw* %0, i64 %1, i32 %2, i64* %3) #0 {
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
  br label %408

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

94:                                               ; preds = %383, %93
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %391

98:                                               ; preds = %94
  %99 = load i64, i64* %19, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %19, align 8
  %101 = load i64, i64* %19, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %391

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
  br label %128

113:                                              ; preds = %105
  %114 = load i64, i64* @REG_HMEBOX_1, align 8
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* @REG_HMEBOX_EXT_1, align 8
  store i64 %115, i64* %13, align 8
  br label %128

116:                                              ; preds = %105
  %117 = load i64, i64* @REG_HMEBOX_2, align 8
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* @REG_HMEBOX_EXT_2, align 8
  store i64 %118, i64* %13, align 8
  br label %128

119:                                              ; preds = %105
  %120 = load i64, i64* @REG_HMEBOX_3, align 8
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* @REG_HMEBOX_EXT_3, align 8
  store i64 %121, i64* %13, align 8
  br label %128

122:                                              ; preds = %105
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %124 = load i32, i32* @COMP_ERR, align 4
  %125 = load i32, i32* @DBG_LOUD, align 4
  %126 = load i64, i64* %11, align 8
  %127 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %122, %119, %116, %113, %110
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @_rtl92c_check_fw_read_last_h2c(%struct.ieee80211_hw* %129, i64 %130)
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %147, %128
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br i1 %135, label %136, label %160

136:                                              ; preds = %132
  %137 = load i64, i64* %18, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* %18, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %143 = load i32, i32* @COMP_CMD, align 4
  %144 = load i32, i32* @DBG_LOUD, align 4
  %145 = load i64, i64* %11, align 8
  %146 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %145)
  br label %160

147:                                              ; preds = %136
  %148 = call i32 @udelay(i32 10)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @_rtl92c_check_fw_read_last_h2c(%struct.ieee80211_hw* %149, i64 %150)
  store i32 %151, i32* %15, align 4
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %153 = call i64 @rtl_read_byte(%struct.rtl_priv* %152, i32 447)
  store i64 %153, i64* %14, align 8
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %155 = load i32, i32* @COMP_CMD, align 4
  %156 = load i32, i32* @DBG_LOUD, align 4
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %14, align 8
  %159 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %154, i32 %155, i32 %156, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %157, i64 %158)
  br label %132

160:                                              ; preds = %141, %132
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %165 = load i32, i32* @COMP_CMD, align 4
  %166 = load i32, i32* @DBG_LOUD, align 4
  %167 = load i64, i64* %11, align 8
  %168 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %167)
  br label %391

169:                                              ; preds = %160
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %171 = call i32 @memset(i64* %170, i32 0, i32 32)
  %172 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %173 = call i32 @memset(i64* %172, i32 0, i32 16)
  %174 = load i64, i64* %6, align 8
  %175 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  store i64 %174, i64* %175, align 16
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %177 = load i32, i32* @COMP_CMD, align 4
  %178 = load i32, i32* @DBG_LOUD, align 4
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %179, i64 %180)
  %182 = load i32, i32* %7, align 4
  switch i32 %182, label %365 [
    i32 1, label %183
    i32 2, label %211
    i32 3, label %239
    i32 4, label %267
    i32 5, label %316
  ]

183:                                              ; preds = %169
  %184 = call i64 @BIT(i32 7)
  %185 = xor i64 %184, -1
  %186 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %187 = load i64, i64* %186, align 16
  %188 = and i64 %187, %185
  store i64 %188, i64* %186, align 16
  %189 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64*, i64** %8, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = call i32 @memcpy(i64* %190, i64* %193, i32 1)
  store i64 0, i64* %24, align 8
  br label %195

195:                                              ; preds = %207, %183
  %196 = load i64, i64* %24, align 8
  %197 = icmp slt i64 %196, 4
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load i64, i64* %24, align 8
  %202 = add nsw i64 %200, %201
  %203 = load i64, i64* %24, align 8
  %204 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @rtl_write_byte(%struct.rtl_priv* %199, i64 %202, i64 %205)
  br label %207

207:                                              ; preds = %198
  %208 = load i64, i64* %24, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %24, align 8
  br label %195

210:                                              ; preds = %195
  br label %371

211:                                              ; preds = %169
  %212 = call i64 @BIT(i32 7)
  %213 = xor i64 %212, -1
  %214 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %215 = load i64, i64* %214, align 16
  %216 = and i64 %215, %213
  store i64 %216, i64* %214, align 16
  %217 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %218 = getelementptr inbounds i64, i64* %217, i64 1
  %219 = load i64*, i64** %8, align 8
  %220 = load i64, i64* %16, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = call i32 @memcpy(i64* %218, i64* %221, i32 2)
  store i64 0, i64* %24, align 8
  br label %223

223:                                              ; preds = %235, %211
  %224 = load i64, i64* %24, align 8
  %225 = icmp slt i64 %224, 4
  br i1 %225, label %226, label %238

226:                                              ; preds = %223
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %228 = load i64, i64* %12, align 8
  %229 = load i64, i64* %24, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i64, i64* %24, align 8
  %232 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @rtl_write_byte(%struct.rtl_priv* %227, i64 %230, i64 %233)
  br label %235

235:                                              ; preds = %226
  %236 = load i64, i64* %24, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %24, align 8
  br label %223

238:                                              ; preds = %223
  br label %371

239:                                              ; preds = %169
  %240 = call i64 @BIT(i32 7)
  %241 = xor i64 %240, -1
  %242 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %243 = load i64, i64* %242, align 16
  %244 = and i64 %243, %241
  store i64 %244, i64* %242, align 16
  %245 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64*, i64** %8, align 8
  %248 = load i64, i64* %16, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = call i32 @memcpy(i64* %246, i64* %249, i32 3)
  store i64 0, i64* %24, align 8
  br label %251

251:                                              ; preds = %263, %239
  %252 = load i64, i64* %24, align 8
  %253 = icmp slt i64 %252, 4
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %256 = load i64, i64* %12, align 8
  %257 = load i64, i64* %24, align 8
  %258 = add nsw i64 %256, %257
  %259 = load i64, i64* %24, align 8
  %260 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @rtl_write_byte(%struct.rtl_priv* %255, i64 %258, i64 %261)
  br label %263

263:                                              ; preds = %254
  %264 = load i64, i64* %24, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %24, align 8
  br label %251

266:                                              ; preds = %251
  br label %371

267:                                              ; preds = %169
  %268 = call i64 @BIT(i32 7)
  %269 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %270 = load i64, i64* %269, align 16
  %271 = or i64 %270, %268
  store i64 %271, i64* %269, align 16
  %272 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %273 = load i64*, i64** %8, align 8
  %274 = load i64, i64* %16, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  %276 = call i32 @memcpy(i64* %272, i64* %275, i32 2)
  %277 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %278 = getelementptr inbounds i64, i64* %277, i64 1
  %279 = load i64*, i64** %8, align 8
  %280 = load i64, i64* %16, align 8
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  %282 = getelementptr inbounds i64, i64* %281, i64 2
  %283 = call i32 @memcpy(i64* %278, i64* %282, i32 2)
  store i64 0, i64* %24, align 8
  br label %284

284:                                              ; preds = %296, %267
  %285 = load i64, i64* %24, align 8
  %286 = icmp slt i64 %285, 2
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %289 = load i64, i64* %13, align 8
  %290 = load i64, i64* %24, align 8
  %291 = add nsw i64 %289, %290
  %292 = load i64, i64* %24, align 8
  %293 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @rtl_write_byte(%struct.rtl_priv* %288, i64 %291, i64 %294)
  br label %296

296:                                              ; preds = %287
  %297 = load i64, i64* %24, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %24, align 8
  br label %284

299:                                              ; preds = %284
  store i64 0, i64* %24, align 8
  br label %300

300:                                              ; preds = %312, %299
  %301 = load i64, i64* %24, align 8
  %302 = icmp slt i64 %301, 4
  br i1 %302, label %303, label %315

303:                                              ; preds = %300
  %304 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %305 = load i64, i64* %12, align 8
  %306 = load i64, i64* %24, align 8
  %307 = add nsw i64 %305, %306
  %308 = load i64, i64* %24, align 8
  %309 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @rtl_write_byte(%struct.rtl_priv* %304, i64 %307, i64 %310)
  br label %312

312:                                              ; preds = %303
  %313 = load i64, i64* %24, align 8
  %314 = add nsw i64 %313, 1
  store i64 %314, i64* %24, align 8
  br label %300

315:                                              ; preds = %300
  br label %371

316:                                              ; preds = %169
  %317 = call i64 @BIT(i32 7)
  %318 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %319 = load i64, i64* %318, align 16
  %320 = or i64 %319, %317
  store i64 %320, i64* %318, align 16
  %321 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %322 = load i64*, i64** %8, align 8
  %323 = load i64, i64* %16, align 8
  %324 = getelementptr inbounds i64, i64* %322, i64 %323
  %325 = call i32 @memcpy(i64* %321, i64* %324, i32 2)
  %326 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %327 = getelementptr inbounds i64, i64* %326, i64 1
  %328 = load i64*, i64** %8, align 8
  %329 = load i64, i64* %16, align 8
  %330 = getelementptr inbounds i64, i64* %328, i64 %329
  %331 = getelementptr inbounds i64, i64* %330, i64 2
  %332 = call i32 @memcpy(i64* %327, i64* %331, i32 3)
  store i64 0, i64* %24, align 8
  br label %333

333:                                              ; preds = %345, %316
  %334 = load i64, i64* %24, align 8
  %335 = icmp slt i64 %334, 2
  br i1 %335, label %336, label %348

336:                                              ; preds = %333
  %337 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %338 = load i64, i64* %13, align 8
  %339 = load i64, i64* %24, align 8
  %340 = add nsw i64 %338, %339
  %341 = load i64, i64* %24, align 8
  %342 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @rtl_write_byte(%struct.rtl_priv* %337, i64 %340, i64 %343)
  br label %345

345:                                              ; preds = %336
  %346 = load i64, i64* %24, align 8
  %347 = add nsw i64 %346, 1
  store i64 %347, i64* %24, align 8
  br label %333

348:                                              ; preds = %333
  store i64 0, i64* %24, align 8
  br label %349

349:                                              ; preds = %361, %348
  %350 = load i64, i64* %24, align 8
  %351 = icmp slt i64 %350, 4
  br i1 %351, label %352, label %364

352:                                              ; preds = %349
  %353 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %354 = load i64, i64* %12, align 8
  %355 = load i64, i64* %24, align 8
  %356 = add nsw i64 %354, %355
  %357 = load i64, i64* %24, align 8
  %358 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @rtl_write_byte(%struct.rtl_priv* %353, i64 %356, i64 %359)
  br label %361

361:                                              ; preds = %352
  %362 = load i64, i64* %24, align 8
  %363 = add nsw i64 %362, 1
  store i64 %363, i64* %24, align 8
  br label %349

364:                                              ; preds = %349
  br label %371

365:                                              ; preds = %169
  %366 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %367 = load i32, i32* @COMP_ERR, align 4
  %368 = load i32, i32* @DBG_LOUD, align 4
  %369 = load i32, i32* %7, align 4
  %370 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %366, i32 %367, i32 %368, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %369)
  br label %371

371:                                              ; preds = %365, %364, %315, %266, %238, %210
  store i32 1, i32* %17, align 4
  %372 = load i64, i64* %11, align 8
  %373 = add nsw i64 %372, 1
  %374 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %375 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %374, i32 0, i32 1
  store i64 %373, i64* %375, align 8
  %376 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %377 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp eq i64 %378, 4
  br i1 %379, label %380, label %383

380:                                              ; preds = %371
  %381 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %382 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %381, i32 0, i32 1
  store i64 0, i64* %382, align 8
  br label %383

383:                                              ; preds = %380, %371
  %384 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %385 = load i32, i32* @COMP_CMD, align 4
  %386 = load i32, i32* @DBG_LOUD, align 4
  %387 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %388 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %384, i32 %385, i32 %386, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %389)
  br label %94

391:                                              ; preds = %163, %103, %94
  %392 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %393 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 0
  %395 = load i64, i64* %23, align 8
  %396 = call i32 @spin_lock_irqsave(i32* %394, i64 %395)
  %397 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %398 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %397, i32 0, i32 0
  store i32 0, i32* %398, align 8
  %399 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %400 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 0
  %402 = load i64, i64* %23, align 8
  %403 = call i32 @spin_unlock_irqrestore(i32* %401, i64 %402)
  %404 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %405 = load i32, i32* @COMP_CMD, align 4
  %406 = load i32, i32* @DBG_LOUD, align 4
  %407 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %404, i32 %405, i32 %406, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %408

408:                                              ; preds = %391, %71
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_rtl92c_check_fw_read_last_h2c(%struct.ieee80211_hw*, i64) #1

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
