; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_fw.c__rtl88e_fill_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_fw.c__rtl88e_fill_h2c_command.c"
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
@.str.6 = private unnamed_addr constant [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"go out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32, i64*)* @_rtl88e_fill_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88e_fill_h2c_command(%struct.ieee80211_hw* %0, i64 %1, i32 %2, i64* %3) #0 {
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
  %21 = alloca [4 x i64], align 16
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
  br label %297

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

94:                                               ; preds = %272, %93
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %280

98:                                               ; preds = %94
  %99 = load i64, i64* %19, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %19, align 8
  %101 = load i64, i64* %19, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %280

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
  %131 = call i32 @_rtl88e_check_fw_read_last_h2c(%struct.ieee80211_hw* %129, i64 %130)
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
  %151 = call i32 @_rtl88e_check_fw_read_last_h2c(%struct.ieee80211_hw* %149, i64 %150)
  store i32 %151, i32* %15, align 4
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %153 = call i64 @rtl_read_byte(%struct.rtl_priv* %152, i32 304)
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
  br label %280

169:                                              ; preds = %160
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %171 = call i32 @memset(i64* %170, i32 0, i32 32)
  %172 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %173 = call i32 @memset(i64* %172, i32 0, i32 32)
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
  switch i32 %182, label %254 [
    i32 1, label %183
    i32 2, label %183
    i32 3, label %183
    i32 4, label %207
    i32 5, label %207
    i32 6, label %207
    i32 7, label %207
  ]

183:                                              ; preds = %169, %169, %169
  %184 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  %186 = load i64*, i64** %8, align 8
  %187 = load i64, i64* %16, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @memcpy(i64* %185, i64* %188, i32 %189)
  store i64 0, i64* %24, align 8
  br label %191

191:                                              ; preds = %203, %183
  %192 = load i64, i64* %24, align 8
  %193 = icmp slt i64 %192, 4
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* %24, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64, i64* %24, align 8
  %200 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @rtl_write_byte(%struct.rtl_priv* %195, i64 %198, i64 %201)
  br label %203

203:                                              ; preds = %194
  %204 = load i64, i64* %24, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %24, align 8
  br label %191

206:                                              ; preds = %191
  br label %260

207:                                              ; preds = %169, %169, %169, %169
  %208 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %209 = load i64*, i64** %8, align 8
  %210 = load i64, i64* %16, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = getelementptr inbounds i64, i64* %211, i64 3
  %213 = load i32, i32* %7, align 4
  %214 = sub nsw i32 %213, 3
  %215 = call i32 @memcpy(i64* %208, i64* %212, i32 %214)
  %216 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %217 = getelementptr inbounds i64, i64* %216, i64 1
  %218 = load i64*, i64** %8, align 8
  %219 = load i64, i64* %16, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = call i32 @memcpy(i64* %217, i64* %220, i32 3)
  store i64 0, i64* %24, align 8
  br label %222

222:                                              ; preds = %234, %207
  %223 = load i64, i64* %24, align 8
  %224 = icmp slt i64 %223, 2
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* %24, align 8
  %229 = add nsw i64 %227, %228
  %230 = load i64, i64* %24, align 8
  %231 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @rtl_write_byte(%struct.rtl_priv* %226, i64 %229, i64 %232)
  br label %234

234:                                              ; preds = %225
  %235 = load i64, i64* %24, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %24, align 8
  br label %222

237:                                              ; preds = %222
  store i64 0, i64* %24, align 8
  br label %238

238:                                              ; preds = %250, %237
  %239 = load i64, i64* %24, align 8
  %240 = icmp slt i64 %239, 4
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  %242 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* %24, align 8
  %245 = add nsw i64 %243, %244
  %246 = load i64, i64* %24, align 8
  %247 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @rtl_write_byte(%struct.rtl_priv* %242, i64 %245, i64 %248)
  br label %250

250:                                              ; preds = %241
  %251 = load i64, i64* %24, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %24, align 8
  br label %238

253:                                              ; preds = %238
  br label %260

254:                                              ; preds = %169
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %256 = load i32, i32* @COMP_ERR, align 4
  %257 = load i32, i32* @DBG_LOUD, align 4
  %258 = load i32, i32* %7, align 4
  %259 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %255, i32 %256, i32 %257, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %254, %253, %206
  store i32 1, i32* %17, align 4
  %261 = load i64, i64* %11, align 8
  %262 = add nsw i64 %261, 1
  %263 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %264 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  %265 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %266 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %267, 4
  br i1 %268, label %269, label %272

269:                                              ; preds = %260
  %270 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %271 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %270, i32 0, i32 1
  store i64 0, i64* %271, align 8
  br label %272

272:                                              ; preds = %269, %260
  %273 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %274 = load i32, i32* @COMP_CMD, align 4
  %275 = load i32, i32* @DBG_LOUD, align 4
  %276 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %277 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %273, i32 %274, i32 %275, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %278)
  br label %94

280:                                              ; preds = %163, %103, %94
  %281 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %282 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load i64, i64* %23, align 8
  %285 = call i32 @spin_lock_irqsave(i32* %283, i64 %284)
  %286 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %287 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %286, i32 0, i32 0
  store i32 0, i32* %287, align 8
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %289 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  %291 = load i64, i64* %23, align 8
  %292 = call i32 @spin_unlock_irqrestore(i32* %290, i64 %291)
  %293 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %294 = load i32, i32* @COMP_CMD, align 4
  %295 = load i32, i32* @DBG_LOUD, align 4
  %296 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %293, i32 %294, i32 %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %297

297:                                              ; preds = %280, %71
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_rtl88e_check_fw_read_last_h2c(%struct.ieee80211_hw*, i64) #1

declare dso_local i64 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
