; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c__rtl8821ae_fill_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c__rtl8821ae_fill_h2c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32, i32 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"come in\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Wait 100 us (%d times)...\0A\00", align 1
@REG_HMEBOX_0 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_0 = common dso_local global i32 0, align 4
@REG_HMEBOX_1 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_1 = common dso_local global i32 0, align 4
@REG_HMEBOX_2 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_2 = common dso_local global i32 0, align 4
@REG_HMEBOX_3 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_3 = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@REG_CR = common dso_local global i32 0, align 4
@REG_TXDMA_STATUS = common dso_local global i32 0, align 4
@REG_TXPKT_EMPTY = common dso_local global i32 0, align 4
@REG_SYS_CFG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"go out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32*)* @_rtl8821ae_fill_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_fill_h2c_command(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  store %struct.rtl_priv* %25, %struct.rtl_priv** %9, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %27)
  store %struct.rtl_hal* %28, %struct.rtl_hal** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 100, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %30 = load i32, i32* @COMP_CMD, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %4, %91
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %22, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %40 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %33
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %45 = load i32, i32* @COMP_CMD, align 4
  %46 = load i32, i32* @DBG_LOUD, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %71, %43
  %50 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %51 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %22, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %21, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %21, align 4
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %63 = load i32, i32* @COMP_CMD, align 4
  %64 = load i32, i32* @DBG_LOUD, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = call i32 @udelay(i32 100)
  %68 = load i32, i32* %21, align 4
  %69 = icmp sgt i32 %68, 1000
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %322

71:                                               ; preds = %54
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %73 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %22, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %79 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %22, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %91

83:                                               ; preds = %33
  %84 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %85 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %22, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %92

91:                                               ; preds = %77
  br label %33

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %297, %92
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %305

97:                                               ; preds = %93
  %98 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %99 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  switch i32 %101, label %114 [
    i32 0, label %102
    i32 1, label %105
    i32 2, label %108
    i32 3, label %111
  ]

102:                                              ; preds = %97
  %103 = load i32, i32* @REG_HMEBOX_0, align 4
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* @REG_HMEBOX_EXT_0, align 4
  store i32 %104, i32* %13, align 4
  br label %120

105:                                              ; preds = %97
  %106 = load i32, i32* @REG_HMEBOX_1, align 4
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @REG_HMEBOX_EXT_1, align 4
  store i32 %107, i32* %13, align 4
  br label %120

108:                                              ; preds = %97
  %109 = load i32, i32* @REG_HMEBOX_2, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @REG_HMEBOX_EXT_2, align 4
  store i32 %110, i32* %13, align 4
  br label %120

111:                                              ; preds = %97
  %112 = load i32, i32* @REG_HMEBOX_3, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @REG_HMEBOX_EXT_3, align 4
  store i32 %113, i32* %13, align 4
  br label %120

114:                                              ; preds = %97
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %116 = load i32, i32* @COMP_ERR, align 4
  %117 = load i32, i32* @DBG_LOUD, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %111, %108, %105, %102
  store i32 0, i32* %15, align 4
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %122 = load i32, i32* @REG_CR, align 4
  %123 = call i32 @rtl_read_byte(%struct.rtl_priv* %121, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 234
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 1, i32* %15, align 4
  br label %143

127:                                              ; preds = %120
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %129 = load i32, i32* @REG_TXDMA_STATUS, align 4
  %130 = call i32 @rtl_read_byte(%struct.rtl_priv* %128, i32 %129)
  %131 = icmp eq i32 %130, 234
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %134 = load i32, i32* @REG_TXPKT_EMPTY, align 4
  %135 = call i32 @rtl_read_byte(%struct.rtl_priv* %133, i32 %134)
  %136 = icmp eq i32 %135, 234
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %127
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %139 = load i32, i32* @REG_SYS_CFG1, align 4
  %140 = add nsw i32 %139, 3
  %141 = call i32 @rtl_write_byte(%struct.rtl_priv* %138, i32 %140, i32 255)
  br label %142

142:                                              ; preds = %137, %132
  br label %143

143:                                              ; preds = %142, %126
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %179

146:                                              ; preds = %143
  store i32 100, i32* %18, align 4
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @_rtl8821ae_check_fw_read_last_h2c(%struct.ieee80211_hw* %147, i32 %148)
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %165, %146
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %18, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %161 = load i32, i32* @COMP_CMD, align 4
  %162 = load i32, i32* @DBG_LOUD, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %178

165:                                              ; preds = %154
  %166 = call i32 @udelay(i32 10)
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @_rtl8821ae_check_fw_read_last_h2c(%struct.ieee80211_hw* %167, i32 %168)
  store i32 %169, i32* %15, align 4
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %171 = call i32 @rtl_read_byte(%struct.rtl_priv* %170, i32 304)
  store i32 %171, i32* %14, align 4
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %173 = load i32, i32* @COMP_CMD, align 4
  %174 = load i32, i32* @DBG_LOUD, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %172, i32 %173, i32 %174, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %175, i32 %176)
  br label %150

178:                                              ; preds = %159, %150
  br label %179

179:                                              ; preds = %178, %143
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %184 = load i32, i32* @COMP_CMD, align 4
  %185 = load i32, i32* @DBG_LOUD, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %305

188:                                              ; preds = %179
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %190 = call i32 @memset(i32* %189, i32 0, i32 16)
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %192 = call i32 @memset(i32* %191, i32 0, i32 16)
  %193 = load i32, i32* %6, align 4
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %193, i32* %194, align 16
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %196 = load i32, i32* @COMP_CMD, align 4
  %197 = load i32, i32* @DBG_LOUD, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %195, i32 %196, i32 %197, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i32, i32* %7, align 4
  switch i32 %201, label %279 [
    i32 1, label %202
    i32 2, label %202
    i32 3, label %202
    i32 4, label %228
    i32 5, label %228
    i32 6, label %228
    i32 7, label %228
  ]

202:                                              ; preds = %188, %188, %188
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @memcpy(i32* %204, i32* %208, i32 %209)
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %224, %202
  %212 = load i32, i32* %23, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %23, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @rtl_write_byte(%struct.rtl_priv* %215, i32 %218, i32 %222)
  br label %224

224:                                              ; preds = %214
  %225 = load i32, i32* %23, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %23, align 4
  br label %211

227:                                              ; preds = %211
  br label %285

228:                                              ; preds = %188, %188, %188, %188
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %7, align 4
  %236 = sub nsw i32 %235, 3
  %237 = call i32 @memcpy(i32* %229, i32* %234, i32 %236)
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = call i32 @memcpy(i32* %239, i32* %243, i32 3)
  store i32 0, i32* %23, align 4
  br label %245

245:                                              ; preds = %258, %228
  %246 = load i32, i32* %23, align 4
  %247 = icmp slt i32 %246, 4
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %23, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32, i32* %23, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @rtl_write_byte(%struct.rtl_priv* %249, i32 %252, i32 %256)
  br label %258

258:                                              ; preds = %248
  %259 = load i32, i32* %23, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %23, align 4
  br label %245

261:                                              ; preds = %245
  store i32 0, i32* %23, align 4
  br label %262

262:                                              ; preds = %275, %261
  %263 = load i32, i32* %23, align 4
  %264 = icmp slt i32 %263, 4
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %23, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %23, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @rtl_write_byte(%struct.rtl_priv* %266, i32 %269, i32 %273)
  br label %275

275:                                              ; preds = %265
  %276 = load i32, i32* %23, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %23, align 4
  br label %262

278:                                              ; preds = %262
  br label %285

279:                                              ; preds = %188
  %280 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %281 = load i32, i32* @COMP_ERR, align 4
  %282 = load i32, i32* @DBG_LOUD, align 4
  %283 = load i32, i32* %7, align 4
  %284 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %280, i32 %281, i32 %282, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %279, %278, %227
  store i32 1, i32* %17, align 4
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  %288 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %289 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %291 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 4
  br i1 %293, label %294, label %297

294:                                              ; preds = %285
  %295 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %296 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %295, i32 0, i32 1
  store i32 0, i32* %296, align 4
  br label %297

297:                                              ; preds = %294, %285
  %298 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %299 = load i32, i32* @COMP_CMD, align 4
  %300 = load i32, i32* @DBG_LOUD, align 4
  %301 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %302 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %298, i32 %299, i32 %300, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %303)
  br label %93

305:                                              ; preds = %182, %93
  %306 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %307 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i64, i64* %22, align 8
  %310 = call i32 @spin_lock_irqsave(i32* %308, i64 %309)
  %311 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %312 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %311, i32 0, i32 0
  store i32 0, i32* %312, align 4
  %313 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %314 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i64, i64* %22, align 8
  %317 = call i32 @spin_unlock_irqrestore(i32* %315, i64 %316)
  %318 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %319 = load i32, i32* @COMP_CMD, align 4
  %320 = load i32, i32* @DBG_LOUD, align 4
  %321 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %318, i32 %319, i32 %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %322

322:                                              ; preds = %305, %70
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_check_fw_read_last_h2c(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
