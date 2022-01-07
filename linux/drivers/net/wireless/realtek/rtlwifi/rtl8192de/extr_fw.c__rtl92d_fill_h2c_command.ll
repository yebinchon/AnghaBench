; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_fill_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_fill_h2c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32, i64 }
%struct.rtl_ps_ctl = type { i64, i64 }

@ERFOFF = common dso_local global i64 0, align 8
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Return as RF is off!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"come in\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"H2C set in progress! Wait to set..element_id(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Wait 100 us (%d times)...\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Write H2C fail because no trigger for FW INT!\0A\00", align 1
@REG_HMEBOX_0 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_0 = common dso_local global i64 0, align 8
@REG_HMEBOX_1 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_1 = common dso_local global i64 0, align 8
@REG_HMEBOX_2 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_2 = common dso_local global i64 0, align 8
@REG_HMEBOX_3 = common dso_local global i64 0, align 8
@REG_HMEBOX_EXT_3 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x1BF = %2x\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"go out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32, i64*)* @_rtl92d_fill_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_fill_h2c_command(%struct.ieee80211_hw* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca %struct.rtl_ps_ctl*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [4 x i64], align 16
  %22 = alloca [2 x i64], align 16
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  store %struct.rtl_priv* %27, %struct.rtl_priv** %9, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %29 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %28)
  %30 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %29)
  store %struct.rtl_hal* %30, %struct.rtl_hal** %10, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %31)
  %33 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %32)
  store %struct.rtl_ps_ctl* %33, %struct.rtl_ps_ctl** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i64 100, i64* %19, align 8
  store i64 100, i64* %20, align 8
  store i32 0, i32* %23, align 4
  %34 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %35 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ERFOFF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %4
  %40 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %41 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ERFOFF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %47 = load i32, i32* @COMP_CMD, align 4
  %48 = load i32, i32* @DBG_LOUD, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %423

50:                                               ; preds = %39
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %52 = load i32, i32* @COMP_CMD, align 4
  %53 = load i32, i32* @DBG_LOUD, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %113
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %24, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %62 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %55
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %67 = load i32, i32* @COMP_CMD, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %93, %65
  %72 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %73 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %24, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %23, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %23, align 4
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %85 = load i32, i32* @COMP_CMD, align 4
  %86 = load i32, i32* @DBG_LOUD, align 4
  %87 = load i32, i32* %23, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = call i32 @udelay(i32 100)
  %90 = load i32, i32* %23, align 4
  %91 = icmp sgt i32 %90, 1000
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %423

93:                                               ; preds = %76
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %24, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  br label %71

99:                                               ; preds = %71
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %101 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %24, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %113

105:                                              ; preds = %55
  %106 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %107 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %24, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  br label %114

113:                                              ; preds = %99
  br label %55

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %398, %114
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %119, label %406

119:                                              ; preds = %115
  %120 = load i64, i64* %20, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %20, align 8
  %122 = load i64, i64* %20, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %406

126:                                              ; preds = %119
  %127 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %128 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  switch i64 %130, label %143 [
    i64 0, label %131
    i64 1, label %134
    i64 2, label %137
    i64 3, label %140
  ]

131:                                              ; preds = %126
  %132 = load i64, i64* @REG_HMEBOX_0, align 8
  store i64 %132, i64* %13, align 8
  %133 = load i64, i64* @REG_HMEBOX_EXT_0, align 8
  store i64 %133, i64* %14, align 8
  br label %146

134:                                              ; preds = %126
  %135 = load i64, i64* @REG_HMEBOX_1, align 8
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* @REG_HMEBOX_EXT_1, align 8
  store i64 %136, i64* %14, align 8
  br label %146

137:                                              ; preds = %126
  %138 = load i64, i64* @REG_HMEBOX_2, align 8
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* @REG_HMEBOX_EXT_2, align 8
  store i64 %139, i64* %14, align 8
  br label %146

140:                                              ; preds = %126
  %141 = load i64, i64* @REG_HMEBOX_3, align 8
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* @REG_HMEBOX_EXT_3, align 8
  store i64 %142, i64* %14, align 8
  br label %146

143:                                              ; preds = %126
  %144 = load i64, i64* %12, align 8
  %145 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %143, %140, %137, %134, %131
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @_rtl92d_check_fw_read_last_h2c(%struct.ieee80211_hw* %147, i64 %148)
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %165, %146
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  %155 = load i64, i64* %19, align 8
  %156 = add nsw i64 %155, -1
  store i64 %156, i64* %19, align 8
  %157 = load i64, i64* %19, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %161 = load i32, i32* @COMP_CMD, align 4
  %162 = load i32, i32* @DBG_LOUD, align 4
  %163 = load i64, i64* %12, align 8
  %164 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %163)
  br label %178

165:                                              ; preds = %154
  %166 = call i32 @udelay(i32 10)
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %168 = load i64, i64* %12, align 8
  %169 = call i32 @_rtl92d_check_fw_read_last_h2c(%struct.ieee80211_hw* %167, i64 %168)
  store i32 %169, i32* %16, align 4
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %171 = call i64 @rtl_read_byte(%struct.rtl_priv* %170, i32 447)
  store i64 %171, i64* %15, align 8
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %173 = load i32, i32* @COMP_CMD, align 4
  %174 = load i32, i32* @DBG_LOUD, align 4
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %172, i32 %173, i32 %174, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %175, i64 %176)
  br label %150

178:                                              ; preds = %159, %150
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %183 = load i32, i32* @COMP_CMD, align 4
  %184 = load i32, i32* @DBG_LOUD, align 4
  %185 = load i64, i64* %12, align 8
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %182, i32 %183, i32 %184, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i64 %185)
  br label %406

187:                                              ; preds = %178
  %188 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %189 = call i32 @memset(i64* %188, i32 0, i32 32)
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %191 = call i32 @memset(i64* %190, i32 0, i32 16)
  %192 = load i64, i64* %6, align 8
  %193 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  store i64 %192, i64* %193, align 16
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %195 = load i32, i32* @COMP_CMD, align 4
  %196 = load i32, i32* @DBG_LOUD, align 4
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* %6, align 8
  %199 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %194, i32 %195, i32 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %197, i64 %198)
  %200 = load i32, i32* %7, align 4
  switch i32 %200, label %383 [
    i32 1, label %201
    i32 2, label %229
    i32 3, label %257
    i32 4, label %285
    i32 5, label %334
  ]

201:                                              ; preds = %187
  %202 = call i64 @BIT(i32 7)
  %203 = xor i64 %202, -1
  %204 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %205 = load i64, i64* %204, align 16
  %206 = and i64 %205, %203
  store i64 %206, i64* %204, align 16
  %207 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64*, i64** %8, align 8
  %210 = load i64, i64* %17, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = call i32 @memcpy(i64* %208, i64* %211, i32 1)
  store i64 0, i64* %25, align 8
  br label %213

213:                                              ; preds = %225, %201
  %214 = load i64, i64* %25, align 8
  %215 = icmp slt i64 %214, 4
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %218 = load i64, i64* %13, align 8
  %219 = load i64, i64* %25, align 8
  %220 = add nsw i64 %218, %219
  %221 = load i64, i64* %25, align 8
  %222 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @rtl_write_byte(%struct.rtl_priv* %217, i64 %220, i64 %223)
  br label %225

225:                                              ; preds = %216
  %226 = load i64, i64* %25, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %25, align 8
  br label %213

228:                                              ; preds = %213
  br label %386

229:                                              ; preds = %187
  %230 = call i64 @BIT(i32 7)
  %231 = xor i64 %230, -1
  %232 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %233 = load i64, i64* %232, align 16
  %234 = and i64 %233, %231
  store i64 %234, i64* %232, align 16
  %235 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %236 = getelementptr inbounds i64, i64* %235, i64 1
  %237 = load i64*, i64** %8, align 8
  %238 = load i64, i64* %17, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = call i32 @memcpy(i64* %236, i64* %239, i32 2)
  store i64 0, i64* %25, align 8
  br label %241

241:                                              ; preds = %253, %229
  %242 = load i64, i64* %25, align 8
  %243 = icmp slt i64 %242, 4
  br i1 %243, label %244, label %256

244:                                              ; preds = %241
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load i64, i64* %25, align 8
  %248 = add nsw i64 %246, %247
  %249 = load i64, i64* %25, align 8
  %250 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @rtl_write_byte(%struct.rtl_priv* %245, i64 %248, i64 %251)
  br label %253

253:                                              ; preds = %244
  %254 = load i64, i64* %25, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %25, align 8
  br label %241

256:                                              ; preds = %241
  br label %386

257:                                              ; preds = %187
  %258 = call i64 @BIT(i32 7)
  %259 = xor i64 %258, -1
  %260 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %261 = load i64, i64* %260, align 16
  %262 = and i64 %261, %259
  store i64 %262, i64* %260, align 16
  %263 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %264 = getelementptr inbounds i64, i64* %263, i64 1
  %265 = load i64*, i64** %8, align 8
  %266 = load i64, i64* %17, align 8
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  %268 = call i32 @memcpy(i64* %264, i64* %267, i32 3)
  store i64 0, i64* %25, align 8
  br label %269

269:                                              ; preds = %281, %257
  %270 = load i64, i64* %25, align 8
  %271 = icmp slt i64 %270, 4
  br i1 %271, label %272, label %284

272:                                              ; preds = %269
  %273 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %274 = load i64, i64* %13, align 8
  %275 = load i64, i64* %25, align 8
  %276 = add nsw i64 %274, %275
  %277 = load i64, i64* %25, align 8
  %278 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @rtl_write_byte(%struct.rtl_priv* %273, i64 %276, i64 %279)
  br label %281

281:                                              ; preds = %272
  %282 = load i64, i64* %25, align 8
  %283 = add nsw i64 %282, 1
  store i64 %283, i64* %25, align 8
  br label %269

284:                                              ; preds = %269
  br label %386

285:                                              ; preds = %187
  %286 = call i64 @BIT(i32 7)
  %287 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %288 = load i64, i64* %287, align 16
  %289 = or i64 %288, %286
  store i64 %289, i64* %287, align 16
  %290 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %291 = load i64*, i64** %8, align 8
  %292 = load i64, i64* %17, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = call i32 @memcpy(i64* %290, i64* %293, i32 2)
  %295 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %296 = getelementptr inbounds i64, i64* %295, i64 1
  %297 = load i64*, i64** %8, align 8
  %298 = load i64, i64* %17, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = getelementptr inbounds i64, i64* %299, i64 2
  %301 = call i32 @memcpy(i64* %296, i64* %300, i32 2)
  store i64 0, i64* %25, align 8
  br label %302

302:                                              ; preds = %314, %285
  %303 = load i64, i64* %25, align 8
  %304 = icmp slt i64 %303, 2
  br i1 %304, label %305, label %317

305:                                              ; preds = %302
  %306 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %307 = load i64, i64* %14, align 8
  %308 = load i64, i64* %25, align 8
  %309 = add nsw i64 %307, %308
  %310 = load i64, i64* %25, align 8
  %311 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @rtl_write_byte(%struct.rtl_priv* %306, i64 %309, i64 %312)
  br label %314

314:                                              ; preds = %305
  %315 = load i64, i64* %25, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %25, align 8
  br label %302

317:                                              ; preds = %302
  store i64 0, i64* %25, align 8
  br label %318

318:                                              ; preds = %330, %317
  %319 = load i64, i64* %25, align 8
  %320 = icmp slt i64 %319, 4
  br i1 %320, label %321, label %333

321:                                              ; preds = %318
  %322 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* %25, align 8
  %325 = add nsw i64 %323, %324
  %326 = load i64, i64* %25, align 8
  %327 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @rtl_write_byte(%struct.rtl_priv* %322, i64 %325, i64 %328)
  br label %330

330:                                              ; preds = %321
  %331 = load i64, i64* %25, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %25, align 8
  br label %318

333:                                              ; preds = %318
  br label %386

334:                                              ; preds = %187
  %335 = call i64 @BIT(i32 7)
  %336 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %337 = load i64, i64* %336, align 16
  %338 = or i64 %337, %335
  store i64 %338, i64* %336, align 16
  %339 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %340 = load i64*, i64** %8, align 8
  %341 = load i64, i64* %17, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  %343 = call i32 @memcpy(i64* %339, i64* %342, i32 2)
  %344 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %345 = getelementptr inbounds i64, i64* %344, i64 1
  %346 = load i64*, i64** %8, align 8
  %347 = load i64, i64* %17, align 8
  %348 = getelementptr inbounds i64, i64* %346, i64 %347
  %349 = getelementptr inbounds i64, i64* %348, i64 2
  %350 = call i32 @memcpy(i64* %345, i64* %349, i32 3)
  store i64 0, i64* %25, align 8
  br label %351

351:                                              ; preds = %363, %334
  %352 = load i64, i64* %25, align 8
  %353 = icmp slt i64 %352, 2
  br i1 %353, label %354, label %366

354:                                              ; preds = %351
  %355 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %356 = load i64, i64* %14, align 8
  %357 = load i64, i64* %25, align 8
  %358 = add nsw i64 %356, %357
  %359 = load i64, i64* %25, align 8
  %360 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @rtl_write_byte(%struct.rtl_priv* %355, i64 %358, i64 %361)
  br label %363

363:                                              ; preds = %354
  %364 = load i64, i64* %25, align 8
  %365 = add nsw i64 %364, 1
  store i64 %365, i64* %25, align 8
  br label %351

366:                                              ; preds = %351
  store i64 0, i64* %25, align 8
  br label %367

367:                                              ; preds = %379, %366
  %368 = load i64, i64* %25, align 8
  %369 = icmp slt i64 %368, 4
  br i1 %369, label %370, label %382

370:                                              ; preds = %367
  %371 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %372 = load i64, i64* %13, align 8
  %373 = load i64, i64* %25, align 8
  %374 = add nsw i64 %372, %373
  %375 = load i64, i64* %25, align 8
  %376 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = call i32 @rtl_write_byte(%struct.rtl_priv* %371, i64 %374, i64 %377)
  br label %379

379:                                              ; preds = %370
  %380 = load i64, i64* %25, align 8
  %381 = add nsw i64 %380, 1
  store i64 %381, i64* %25, align 8
  br label %367

382:                                              ; preds = %367
  br label %386

383:                                              ; preds = %187
  %384 = load i32, i32* %7, align 4
  %385 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %383, %382, %333, %284, %256, %228
  store i32 1, i32* %18, align 4
  %387 = load i64, i64* %12, align 8
  %388 = add nsw i64 %387, 1
  %389 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %390 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %389, i32 0, i32 1
  store i64 %388, i64* %390, align 8
  %391 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %392 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 4
  br i1 %394, label %395, label %398

395:                                              ; preds = %386
  %396 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %397 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %396, i32 0, i32 1
  store i64 0, i64* %397, align 8
  br label %398

398:                                              ; preds = %395, %386
  %399 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %400 = load i32, i32* @COMP_CMD, align 4
  %401 = load i32, i32* @DBG_LOUD, align 4
  %402 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %403 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %399, i32 %400, i32 %401, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %404)
  br label %115

406:                                              ; preds = %181, %124, %115
  %407 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %408 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  %410 = load i64, i64* %24, align 8
  %411 = call i32 @spin_lock_irqsave(i32* %409, i64 %410)
  %412 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %413 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %412, i32 0, i32 0
  store i32 0, i32* %413, align 8
  %414 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %415 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 0
  %417 = load i64, i64* %24, align 8
  %418 = call i32 @spin_unlock_irqrestore(i32* %416, i64 %417)
  %419 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %420 = load i32, i32* @COMP_CMD, align 4
  %421 = load i32, i32* @DBG_LOUD, align 4
  %422 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %419, i32 %420, i32 %421, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %423

423:                                              ; preds = %406, %92, %45
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @_rtl92d_check_fw_read_last_h2c(%struct.ieee80211_hw*, i64) #1

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
