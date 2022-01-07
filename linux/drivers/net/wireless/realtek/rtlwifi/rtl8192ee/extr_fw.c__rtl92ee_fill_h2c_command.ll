; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_fw.c__rtl92ee_fill_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_fw.c__rtl92ee_fill_h2c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32, i32 }
%struct.rtl_ps_ctl = type { i64, i64 }

@EACTIVE = common dso_local global i64 0, align 8
@ERFOFF = common dso_local global i64 0, align 8
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"FillH2CCommand8192E(): Return because RF is off!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"come in\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Wait 100 us (%d times)...\0A\00", align 1
@REG_HMEBOX_0 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_0 = common dso_local global i32 0, align 4
@REG_HMEBOX_1 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_1 = common dso_local global i32 0, align 4
@REG_HMEBOX_2 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_2 = common dso_local global i32 0, align 4
@REG_HMEBOX_3 = common dso_local global i32 0, align 4
@REG_HMEBOX_EXT_3 = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@REG_CR = common dso_local global i32 0, align 4
@REG_TXDMA_STATUS = common dso_local global i32 0, align 4
@REG_TXPKT_EMPTY = common dso_local global i32 0, align 4
@REG_SYS_CFG1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Waiting too long for FW read clear HMEBox(%d)!!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Write H2C reg BOX[%d] fail,Fw don't read.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"go out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32*)* @_rtl92ee_fill_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_fill_h2c_command(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca %struct.rtl_ps_ctl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %9, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %28)
  store %struct.rtl_hal* %29, %struct.rtl_hal** %10, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %30)
  %32 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %31)
  store %struct.rtl_ps_ctl* %32, %struct.rtl_ps_ctl** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 100, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %33 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %34 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EACTIVE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %40 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ERFOFF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %46 = load i32, i32* @COMP_CMD, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %343

49:                                               ; preds = %38
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %51 = load i32, i32* @COMP_CMD, align 4
  %52 = load i32, i32* @DBG_LOUD, align 4
  %53 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %112
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %23, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %61 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %54
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %66 = load i32, i32* @COMP_CMD, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %92, %64
  %71 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %72 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %77 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %23, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %22, align 4
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %84 = load i32, i32* @COMP_CMD, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = call i32 @udelay(i32 100)
  %89 = load i32, i32* %22, align 4
  %90 = icmp sgt i32 %89, 1000
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %343

92:                                               ; preds = %75
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %94 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %23, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  br label %70

98:                                               ; preds = %70
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %100 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %23, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  br label %112

104:                                              ; preds = %54
  %105 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %106 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %23, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %113

112:                                              ; preds = %98
  br label %54

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %318, %113
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br i1 %117, label %118, label %326

118:                                              ; preds = %114
  %119 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %120 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  switch i32 %122, label %135 [
    i32 0, label %123
    i32 1, label %126
    i32 2, label %129
    i32 3, label %132
  ]

123:                                              ; preds = %118
  %124 = load i32, i32* @REG_HMEBOX_0, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* @REG_HMEBOX_EXT_0, align 4
  store i32 %125, i32* %14, align 4
  br label %141

126:                                              ; preds = %118
  %127 = load i32, i32* @REG_HMEBOX_1, align 4
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* @REG_HMEBOX_EXT_1, align 4
  store i32 %128, i32* %14, align 4
  br label %141

129:                                              ; preds = %118
  %130 = load i32, i32* @REG_HMEBOX_2, align 4
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* @REG_HMEBOX_EXT_2, align 4
  store i32 %131, i32* %14, align 4
  br label %141

132:                                              ; preds = %118
  %133 = load i32, i32* @REG_HMEBOX_3, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* @REG_HMEBOX_EXT_3, align 4
  store i32 %134, i32* %14, align 4
  br label %141

135:                                              ; preds = %118
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %137 = load i32, i32* @COMP_ERR, align 4
  %138 = load i32, i32* @DBG_LOUD, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %136, i32 %137, i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135, %132, %129, %126, %123
  store i32 0, i32* %16, align 4
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %143 = load i32, i32* @REG_CR, align 4
  %144 = call i32 @rtl_read_byte(%struct.rtl_priv* %142, i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 234
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 1, i32* %16, align 4
  br label %164

148:                                              ; preds = %141
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %150 = load i32, i32* @REG_TXDMA_STATUS, align 4
  %151 = call i32 @rtl_read_byte(%struct.rtl_priv* %149, i32 %150)
  %152 = icmp eq i32 %151, 234
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %155 = load i32, i32* @REG_TXPKT_EMPTY, align 4
  %156 = call i32 @rtl_read_byte(%struct.rtl_priv* %154, i32 %155)
  %157 = icmp eq i32 %156, 234
  br i1 %157, label %158, label %163

158:                                              ; preds = %153, %148
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %160 = load i32, i32* @REG_SYS_CFG1, align 4
  %161 = add nsw i32 %160, 3
  %162 = call i32 @rtl_write_byte(%struct.rtl_priv* %159, i32 %161, i32 255)
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163, %147
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %200

167:                                              ; preds = %164
  store i32 100, i32* %19, align 4
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @_rtl92ee_check_fw_read_last_h2c(%struct.ieee80211_hw* %168, i32 %169)
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %186, %167
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  br i1 %174, label %175, label %199

175:                                              ; preds = %171
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %182 = load i32, i32* @COMP_CMD, align 4
  %183 = load i32, i32* @DBG_LOUD, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  br label %199

186:                                              ; preds = %175
  %187 = call i32 @udelay(i32 10)
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @_rtl92ee_check_fw_read_last_h2c(%struct.ieee80211_hw* %188, i32 %189)
  store i32 %190, i32* %16, align 4
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %192 = call i32 @rtl_read_byte(%struct.rtl_priv* %191, i32 304)
  store i32 %192, i32* %15, align 4
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %194 = load i32, i32* @COMP_CMD, align 4
  %195 = load i32, i32* @DBG_LOUD, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %15, align 4
  %198 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %196, i32 %197)
  br label %171

199:                                              ; preds = %180, %171
  br label %200

200:                                              ; preds = %199, %164
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %205 = load i32, i32* @COMP_CMD, align 4
  %206 = load i32, i32* @DBG_LOUD, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %204, i32 %205, i32 %206, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %207)
  br label %326

209:                                              ; preds = %200
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %211 = call i32 @memset(i32* %210, i32 0, i32 16)
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %213 = call i32 @memset(i32* %212, i32 0, i32 16)
  %214 = load i32, i32* %6, align 4
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %214, i32* %215, align 16
  %216 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %217 = load i32, i32* @COMP_CMD, align 4
  %218 = load i32, i32* @DBG_LOUD, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %216, i32 %217, i32 %218, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load i32, i32* %7, align 4
  switch i32 %222, label %300 [
    i32 1, label %223
    i32 2, label %223
    i32 3, label %223
    i32 4, label %249
    i32 5, label %249
    i32 6, label %249
    i32 7, label %249
  ]

223:                                              ; preds = %209, %209, %209
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @memcpy(i32* %225, i32* %229, i32 %230)
  store i32 0, i32* %24, align 4
  br label %232

232:                                              ; preds = %245, %223
  %233 = load i32, i32* %24, align 4
  %234 = icmp slt i32 %233, 4
  br i1 %234, label %235, label %248

235:                                              ; preds = %232
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %24, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %24, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @rtl_write_byte(%struct.rtl_priv* %236, i32 %239, i32 %243)
  br label %245

245:                                              ; preds = %235
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %24, align 4
  br label %232

248:                                              ; preds = %232
  br label %306

249:                                              ; preds = %209, %209, %209, %209
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %7, align 4
  %257 = sub nsw i32 %256, 3
  %258 = call i32 @memcpy(i32* %250, i32* %255, i32 %257)
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = call i32 @memcpy(i32* %260, i32* %264, i32 3)
  store i32 0, i32* %24, align 4
  br label %266

266:                                              ; preds = %279, %249
  %267 = load i32, i32* %24, align 4
  %268 = icmp slt i32 %267, 4
  br i1 %268, label %269, label %282

269:                                              ; preds = %266
  %270 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* %24, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* %24, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @rtl_write_byte(%struct.rtl_priv* %270, i32 %273, i32 %277)
  br label %279

279:                                              ; preds = %269
  %280 = load i32, i32* %24, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %24, align 4
  br label %266

282:                                              ; preds = %266
  store i32 0, i32* %24, align 4
  br label %283

283:                                              ; preds = %296, %282
  %284 = load i32, i32* %24, align 4
  %285 = icmp slt i32 %284, 4
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %24, align 4
  %290 = add nsw i32 %288, %289
  %291 = load i32, i32* %24, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @rtl_write_byte(%struct.rtl_priv* %287, i32 %290, i32 %294)
  br label %296

296:                                              ; preds = %286
  %297 = load i32, i32* %24, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %24, align 4
  br label %283

299:                                              ; preds = %283
  br label %306

300:                                              ; preds = %209
  %301 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %302 = load i32, i32* @COMP_ERR, align 4
  %303 = load i32, i32* @DBG_LOUD, align 4
  %304 = load i32, i32* %7, align 4
  %305 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %301, i32 %302, i32 %303, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %300, %299, %248
  store i32 1, i32* %18, align 4
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  %309 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %310 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %312 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 4
  br i1 %314, label %315, label %318

315:                                              ; preds = %306
  %316 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %317 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %316, i32 0, i32 1
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %315, %306
  %319 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %320 = load i32, i32* @COMP_CMD, align 4
  %321 = load i32, i32* @DBG_LOUD, align 4
  %322 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %323 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %319, i32 %320, i32 %321, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %324)
  br label %114

326:                                              ; preds = %203, %114
  %327 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %328 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 0
  %330 = load i64, i64* %23, align 8
  %331 = call i32 @spin_lock_irqsave(i32* %329, i64 %330)
  %332 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %333 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %332, i32 0, i32 0
  store i32 0, i32* %333, align 4
  %334 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %335 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  %337 = load i64, i64* %23, align 8
  %338 = call i32 @spin_unlock_irqrestore(i32* %336, i64 %337)
  %339 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %340 = load i32, i32* @COMP_CMD, align 4
  %341 = load i32, i32* @DBG_LOUD, align 4
  %342 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %339, i32 %340, i32 %341, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %343

343:                                              ; preds = %326, %91, %44
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl92ee_check_fw_read_last_h2c(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
