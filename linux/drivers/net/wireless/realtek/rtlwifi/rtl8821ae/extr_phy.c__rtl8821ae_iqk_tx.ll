; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_hal = type { i32 }

@cal_num = common dso_local global i32 0, align 4
@COMP_IQK = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"BandWidth = %d.\0A\00", align 1
@HT_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"VDF_enable\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"vdf_y[1] = %x;;;vdf_y[0] = %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"vdf_x[1] = %x;;;vdf_x[0] = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"RXVDF Start\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"VDF_Y[1] = %x;;;VDF_Y[0] = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"VDF_X[1] = %x;;;VDF_X[0] = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Rx_dt = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"RXK Step 1 fail\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"========Path_A =======\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"TX_X0_RXK[%d] = %x ;; TX_Y0_RXK[%d] = %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"TX_X0[%d] = %x ;; TX_Y0[%d] = %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"RX_X0[%d] = %x ;; RX_Y0[%d] = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl8821ae_iqk_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_iqk_tx(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [3 x i32], align 4
  %36 = alloca [3 x i32], align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %42)
  store %struct.rtl_priv* %43, %struct.rtl_priv** %5, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  store %struct.rtl_phy* %45, %struct.rtl_phy** %6, align 8
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %46)
  %48 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %47)
  store %struct.rtl_hal* %48, %struct.rtl_hal** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %49 = load i32, i32* @cal_num, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %21, align 8
  %52 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %22, align 8
  %53 = load i32, i32* @cal_num, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %23, align 8
  %56 = load i32, i32* @cal_num, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %24, align 8
  %59 = load i32, i32* @cal_num, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %25, align 8
  %62 = load i32, i32* @cal_num, align 4
  %63 = zext i32 %62 to i64
  %64 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %26, align 8
  %65 = load i32, i32* @cal_num, align 4
  %66 = zext i32 %65 to i64
  %67 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %27, align 8
  %68 = load i32, i32* @cal_num, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %28, align 8
  %71 = load i32, i32* @cal_num, align 4
  %72 = zext i32 %71 to i64
  %73 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %29, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %75 = load i32, i32* @COMP_IQK, align 4
  %76 = load i32, i32* @DBG_LOUD, align 4
  %77 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %78 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %82 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %2
  store i32 1, i32* %32, align 4
  br label %87

87:                                               ; preds = %86, %2
  br label %88

88:                                               ; preds = %1323, %87
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @cal_num, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %1326

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  switch i32 %93, label %1322 [
    i32 128, label %94
  ]

94:                                               ; preds = %92
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %95, i32 %96, i32 101, i32 -1)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %99 = call i32 @BIT(i32 31)
  %100 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %98, i32 2092, i32 %99, i32 0)
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %102 = call i32 @rtl_write_dword(%struct.rtl_priv* %101, i32 3168, i32 2004318071)
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %104 = call i32 @rtl_write_dword(%struct.rtl_priv* %103, i32 3172, i32 2004318071)
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %106 = call i32 @rtl_write_dword(%struct.rtl_priv* %105, i32 3176, i32 427366777)
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %108 = call i32 @rtl_write_dword(%struct.rtl_priv* %107, i32 3180, i32 427366777)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %110 = call i32 @rtl_write_dword(%struct.rtl_priv* %109, i32 3184, i32 427366777)
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %112 = call i32 @rtl_write_dword(%struct.rtl_priv* %111, i32 3188, i32 427366777)
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %114 = call i32 @rtl_write_dword(%struct.rtl_priv* %113, i32 3192, i32 427366777)
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = call i32 @rtl_write_dword(%struct.rtl_priv* %115, i32 3196, i32 427366777)
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %118 = call i32 @rtl_write_dword(%struct.rtl_priv* %117, i32 3200, i32 427366777)
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %120 = call i32 @rtl_write_dword(%struct.rtl_priv* %119, i32 3204, i32 427366777)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %122 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %121, i32 3072, i32 15, i32 4)
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %124 = call i32 @BIT(i32 26)
  %125 = call i32 @BIT(i32 25)
  %126 = or i32 %124, %125
  %127 = call i32 @BIT(i32 24)
  %128 = or i32 %126, %127
  %129 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %123, i32 3164, i32 %128, i32 7)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %133 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %130, i32 %131, i32 239, i32 %132, i32 524290)
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %134, i32 %135, i32 24, i32 3072, i32 3)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %140 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %137, i32 %138, i32 48, i32 %139, i32 131072)
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %144 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %141, i32 %142, i32 49, i32 %143, i32 63)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %148 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %145, i32 %146, i32 50, i32 %147, i32 999363)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %152 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %149, i32 %150, i32 101, i32 %151, i32 602581)
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %156 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %153, i32 %154, i32 143, i32 %155, i32 565249)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %158 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %157, i32 3256, i32 15, i32 13)
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %160 = call i32 @rtl_write_dword(%struct.rtl_priv* %159, i32 2316, i32 32768)
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %162 = call i32 @rtl_write_dword(%struct.rtl_priv* %161, i32 2816, i32 50331904)
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %164 = call i32 @BIT(i32 0)
  %165 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %163, i32 3220, i32 %164, i32 1)
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %167 = call i32 @rtl_write_dword(%struct.rtl_priv* %166, i32 2424, i32 687874048)
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %169 = call i32 @rtl_write_dword(%struct.rtl_priv* %168, i32 2428, i32 -1459609600)
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %171 = call i32 @rtl_write_dword(%struct.rtl_priv* %170, i32 2436, i32 4598032)
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %173 = call i32 @BIT(i32 31)
  %174 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %172, i32 2092, i32 %173, i32 1)
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %176 = call i32 @rtl_write_dword(%struct.rtl_priv* %175, i32 3208, i32 -2112617484)
  %177 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %178 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %94
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %183 = call i32 @rtl_write_dword(%struct.rtl_priv* %182, i32 3212, i32 1746288278)
  br label %187

184:                                              ; preds = %94
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %186 = call i32 @rtl_write_dword(%struct.rtl_priv* %185, i32 3212, i32 672546454)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %189 = call i32 @rtl_write_dword(%struct.rtl_priv* %188, i32 3200, i32 402689040)
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %191 = call i32 @rtl_write_dword(%struct.rtl_priv* %190, i32 3204, i32 939559952)
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %193 = call i32 @rtl_write_dword(%struct.rtl_priv* %192, i32 3256, i32 1048576)
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %195 = call i32 @rtl_write_dword(%struct.rtl_priv* %194, i32 2432, i32 -100663296)
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %197 = call i32 @rtl_write_dword(%struct.rtl_priv* %196, i32 2432, i32 -134217728)
  %198 = call i32 @mdelay(i32 10)
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %200 = call i32 @rtl_write_dword(%struct.rtl_priv* %199, i32 3256, i32 0)
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %202 = call i32 @BIT(i32 31)
  %203 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %201, i32 2092, i32 %202, i32 0)
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %205 = load i32, i32* %4, align 4
  %206 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %206, i32 %207, i32 8, i32 1047552)
  %209 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %204, i32 %205, i32 88, i32 523776, i32 %208)
  %210 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %211 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  switch i64 %212, label %221 [
    i64 1, label %213
    i64 2, label %217
  ]

213:                                              ; preds = %187
  %214 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %214, i32 %215, i32 24, i32 3072, i32 1)
  br label %222

217:                                              ; preds = %187
  %218 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %218, i32 %219, i32 24, i32 3072, i32 0)
  br label %222

221:                                              ; preds = %187
  br label %222

222:                                              ; preds = %221, %217, %213
  %223 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %224 = call i32 @BIT(i32 31)
  %225 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %223, i32 2092, i32 %224, i32 1)
  %226 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %227 = call i32 @BIT(i32 31)
  %228 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %226, i32 2092, i32 %227, i32 0)
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %232 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %229, i32 %230, i32 239, i32 %231, i32 524288)
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %236 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %233, i32 %234, i32 48, i32 %235, i32 131072)
  %237 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %240 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %237, i32 %238, i32 49, i32 %239, i32 63)
  %241 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %244 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %241, i32 %242, i32 50, i32 %243, i32 999363)
  %245 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %248 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %245, i32 %246, i32 101, i32 %247, i32 602581)
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %252 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %249, i32 %250, i32 143, i32 %251, i32 565249)
  %253 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %256 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %253, i32 %254, i32 239, i32 %255, i32 0)
  %257 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %258 = call i32 @rtl_write_dword(%struct.rtl_priv* %257, i32 2316, i32 32768)
  %259 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %260 = call i32 @rtl_write_dword(%struct.rtl_priv* %259, i32 2816, i32 50331904)
  %261 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %262 = call i32 @BIT(i32 0)
  %263 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %261, i32 3220, i32 %262, i32 1)
  %264 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %265 = call i32 @rtl_write_dword(%struct.rtl_priv* %264, i32 2424, i32 687874048)
  %266 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %267 = call i32 @rtl_write_dword(%struct.rtl_priv* %266, i32 2428, i32 -1459609600)
  %268 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %269 = call i32 @rtl_write_dword(%struct.rtl_priv* %268, i32 2436, i32 4630800)
  %270 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %271 = call i32 @BIT(i32 31)
  %272 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %270, i32 2092, i32 %271, i32 1)
  %273 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %274 = call i32 @rtl_write_dword(%struct.rtl_priv* %273, i32 3208, i32 -2112617487)
  %275 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %276 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %222
  %280 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %281 = call i32 @rtl_write_dword(%struct.rtl_priv* %280, i32 3212, i32 1075199638)
  br label %285

282:                                              ; preds = %222
  %283 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %284 = call i32 @rtl_write_dword(%struct.rtl_priv* %283, i32 3212, i32 1457814)
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* %32, align 4
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %492

288:                                              ; preds = %285
  %289 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %290 = load i32, i32* @COMP_IQK, align 4
  %291 = load i32, i32* @DBG_LOUD, align 4
  %292 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %289, i32 %290, i32 %291, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %34, align 4
  br label %293

293:                                              ; preds = %468, %288
  %294 = load i32, i32* %34, align 4
  %295 = icmp sle i32 %294, 2
  br i1 %295, label %296, label %471

296:                                              ; preds = %293
  %297 = load i32, i32* %34, align 4
  switch i32 %297, label %390 [
    i32 0, label %298
    i32 1, label %306
    i32 2, label %316
  ]

298:                                              ; preds = %296
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %300 = call i32 @rtl_write_dword(%struct.rtl_priv* %299, i32 3200, i32 402689080)
  %301 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %302 = call i32 @rtl_write_dword(%struct.rtl_priv* %301, i32 3204, i32 939559992)
  %303 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %304 = call i32 @BIT(i32 31)
  %305 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %303, i32 3304, i32 %304, i32 0)
  br label %391

306:                                              ; preds = %296
  %307 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %308 = call i32 @BIT(i32 28)
  %309 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %307, i32 3200, i32 %308, i32 0)
  %310 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %311 = call i32 @BIT(i32 28)
  %312 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %310, i32 3204, i32 %311, i32 0)
  %313 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %314 = call i32 @BIT(i32 31)
  %315 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %313, i32 3304, i32 %314, i32 0)
  br label %391

316:                                              ; preds = %296
  %317 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %318 = load i32, i32* @COMP_IQK, align 4
  %319 = load i32, i32* @DBG_LOUD, align 4
  %320 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = ashr i32 %321, 21
  %323 = and i32 %322, 2047
  %324 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = ashr i32 %325, 21
  %327 = and i32 %326, 2047
  %328 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %317, i32 %318, i32 %319, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %323, i32 %327)
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %330 = load i32, i32* @COMP_IQK, align 4
  %331 = load i32, i32* @DBG_LOUD, align 4
  %332 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = ashr i32 %333, 21
  %335 = and i32 %334, 2047
  %336 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = ashr i32 %337, 21
  %339 = and i32 %338, 2047
  %340 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %329, i32 %330, i32 %331, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %335, i32 %339)
  %341 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 20
  %344 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = ashr i32 %345, 20
  %347 = sub nsw i32 %343, %346
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %70, i64 %349
  store i32 %347, i32* %350, align 4
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %70, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = mul nsw i32 16, %354
  %356 = mul nsw i32 %355, 10000
  %357 = sdiv i32 %356, 15708
  %358 = load i32, i32* %13, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %70, i64 %359
  store i32 %357, i32* %360, align 4
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %70, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = ashr i32 %364, 1
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %70, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @BIT(i32 0)
  %371 = and i32 %369, %370
  %372 = add nsw i32 %365, %371
  %373 = load i32, i32* %13, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %70, i64 %374
  store i32 %372, i32* %375, align 4
  %376 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %377 = call i32 @rtl_write_dword(%struct.rtl_priv* %376, i32 3200, i32 402689056)
  %378 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %379 = call i32 @rtl_write_dword(%struct.rtl_priv* %378, i32 3204, i32 939559968)
  %380 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %381 = call i32 @BIT(i32 31)
  %382 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %380, i32 3304, i32 %381, i32 1)
  %383 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %384 = load i32, i32* %13, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %70, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = and i32 %387, 16383
  %389 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %383, i32 3304, i32 1073676288, i32 %388)
  br label %391

390:                                              ; preds = %296
  br label %391

391:                                              ; preds = %390, %316, %306, %298
  %392 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %393 = call i32 @rtl_write_dword(%struct.rtl_priv* %392, i32 3256, i32 1048576)
  store i32 0, i32* %12, align 4
  br label %394

394:                                              ; preds = %466, %391
  br label %395

395:                                              ; preds = %394
  %396 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %397 = call i32 @rtl_write_dword(%struct.rtl_priv* %396, i32 2432, i32 -100663296)
  %398 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %399 = call i32 @rtl_write_dword(%struct.rtl_priv* %398, i32 2432, i32 -134217728)
  %400 = call i32 @mdelay(i32 10)
  %401 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %402 = call i32 @rtl_write_dword(%struct.rtl_priv* %401, i32 3256, i32 0)
  store i32 0, i32* %10, align 4
  br label %403

403:                                              ; preds = %419, %395
  br label %404

404:                                              ; preds = %403
  %405 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %406 = call i32 @BIT(i32 10)
  %407 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %405, i32 3328, i32 %406)
  store i32 %407, i32* %11, align 4
  %408 = load i32, i32* %11, align 4
  %409 = xor i32 %408, -1
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %404
  %412 = load i32, i32* %10, align 4
  %413 = icmp sgt i32 %412, 20
  br i1 %413, label %414, label %415

414:                                              ; preds = %411, %404
  br label %420

415:                                              ; preds = %411
  %416 = call i32 @mdelay(i32 1)
  %417 = load i32, i32* %10, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %10, align 4
  br label %419

419:                                              ; preds = %415
  br label %403

420:                                              ; preds = %414
  %421 = load i32, i32* %10, align 4
  %422 = icmp slt i32 %421, 20
  br i1 %422, label %423, label %459

423:                                              ; preds = %420
  %424 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %425 = call i32 @BIT(i32 12)
  %426 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %424, i32 3328, i32 %425)
  store i32 %426, i32* %8, align 4
  %427 = load i32, i32* %8, align 4
  %428 = xor i32 %427, -1
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %447

430:                                              ; preds = %423
  %431 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %432 = call i32 @rtl_write_dword(%struct.rtl_priv* %431, i32 3256, i32 33554432)
  %433 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %434 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %433, i32 3328, i32 134152192)
  %435 = shl i32 %434, 21
  %436 = load i32, i32* %34, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 %437
  store i32 %435, i32* %438, align 4
  %439 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %440 = call i32 @rtl_write_dword(%struct.rtl_priv* %439, i32 3256, i32 67108864)
  %441 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %442 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %441, i32 3328, i32 134152192)
  %443 = shl i32 %442, 21
  %444 = load i32, i32* %34, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 %445
  store i32 %443, i32* %446, align 4
  store i32 1, i32* %30, align 4
  br label %467

447:                                              ; preds = %423
  %448 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %449 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %448, i32 3276, i32 2047, i32 0)
  %450 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %451 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %450, i32 3284, i32 2047, i32 512)
  store i32 0, i32* %30, align 4
  %452 = load i32, i32* %12, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %12, align 4
  %454 = load i32, i32* %12, align 4
  %455 = icmp eq i32 %454, 10
  br i1 %455, label %456, label %457

456:                                              ; preds = %447
  br label %467

457:                                              ; preds = %447
  br label %458

458:                                              ; preds = %457
  br label %466

459:                                              ; preds = %420
  store i32 0, i32* %30, align 4
  %460 = load i32, i32* %12, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %12, align 4
  %462 = load i32, i32* %12, align 4
  %463 = icmp eq i32 %462, 10
  br i1 %463, label %464, label %465

464:                                              ; preds = %459
  br label %467

465:                                              ; preds = %459
  br label %466

466:                                              ; preds = %465, %458
  br label %394

467:                                              ; preds = %464, %456, %430
  br label %468

468:                                              ; preds = %467
  %469 = load i32, i32* %34, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %34, align 4
  br label %293

471:                                              ; preds = %293
  %472 = load i32, i32* %34, align 4
  %473 = icmp eq i32 %472, 3
  br i1 %473, label %474, label %491

474:                                              ; preds = %471
  %475 = load i32, i32* %34, align 4
  %476 = sub nsw i32 %475, 1
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* %13, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %52, i64 %481
  store i32 %479, i32* %482, align 4
  %483 = load i32, i32* %34, align 4
  %484 = sub nsw i32 %483, 1
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* %13, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %55, i64 %489
  store i32 %487, i32* %490, align 4
  br label %491

491:                                              ; preds = %474, %471
  br label %573

492:                                              ; preds = %285
  %493 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %494 = call i32 @rtl_write_dword(%struct.rtl_priv* %493, i32 3200, i32 402689040)
  %495 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %496 = call i32 @rtl_write_dword(%struct.rtl_priv* %495, i32 3204, i32 939559952)
  %497 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %498 = call i32 @rtl_write_dword(%struct.rtl_priv* %497, i32 3256, i32 1048576)
  store i32 0, i32* %12, align 4
  br label %499

499:                                              ; preds = %571, %492
  br label %500

500:                                              ; preds = %499
  %501 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %502 = call i32 @rtl_write_dword(%struct.rtl_priv* %501, i32 2432, i32 -100663296)
  %503 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %504 = call i32 @rtl_write_dword(%struct.rtl_priv* %503, i32 2432, i32 -134217728)
  %505 = call i32 @mdelay(i32 10)
  %506 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %507 = call i32 @rtl_write_dword(%struct.rtl_priv* %506, i32 3256, i32 0)
  store i32 0, i32* %10, align 4
  br label %508

508:                                              ; preds = %524, %500
  br label %509

509:                                              ; preds = %508
  %510 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %511 = call i32 @BIT(i32 10)
  %512 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %510, i32 3328, i32 %511)
  store i32 %512, i32* %11, align 4
  %513 = load i32, i32* %11, align 4
  %514 = xor i32 %513, -1
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %509
  %517 = load i32, i32* %10, align 4
  %518 = icmp sgt i32 %517, 20
  br i1 %518, label %519, label %520

519:                                              ; preds = %516, %509
  br label %525

520:                                              ; preds = %516
  %521 = call i32 @mdelay(i32 1)
  %522 = load i32, i32* %10, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %10, align 4
  br label %524

524:                                              ; preds = %520
  br label %508

525:                                              ; preds = %519
  %526 = load i32, i32* %10, align 4
  %527 = icmp slt i32 %526, 20
  br i1 %527, label %528, label %564

528:                                              ; preds = %525
  %529 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %530 = call i32 @BIT(i32 12)
  %531 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %529, i32 3328, i32 %530)
  store i32 %531, i32* %8, align 4
  %532 = load i32, i32* %8, align 4
  %533 = xor i32 %532, -1
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %552

535:                                              ; preds = %528
  %536 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %537 = call i32 @rtl_write_dword(%struct.rtl_priv* %536, i32 3256, i32 33554432)
  %538 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %539 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %538, i32 3328, i32 134152192)
  %540 = shl i32 %539, 21
  %541 = load i32, i32* %13, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %52, i64 %542
  store i32 %540, i32* %543, align 4
  %544 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %545 = call i32 @rtl_write_dword(%struct.rtl_priv* %544, i32 3256, i32 67108864)
  %546 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %547 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %546, i32 3328, i32 134152192)
  %548 = shl i32 %547, 21
  %549 = load i32, i32* %13, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %55, i64 %550
  store i32 %548, i32* %551, align 4
  store i32 1, i32* %30, align 4
  br label %572

552:                                              ; preds = %528
  %553 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %554 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %553, i32 3276, i32 2047, i32 0)
  %555 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %556 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %555, i32 3284, i32 2047, i32 512)
  store i32 0, i32* %30, align 4
  %557 = load i32, i32* %12, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %12, align 4
  %559 = load i32, i32* %12, align 4
  %560 = icmp eq i32 %559, 10
  br i1 %560, label %561, label %562

561:                                              ; preds = %552
  br label %572

562:                                              ; preds = %552
  br label %563

563:                                              ; preds = %562
  br label %571

564:                                              ; preds = %525
  store i32 0, i32* %30, align 4
  %565 = load i32, i32* %12, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %12, align 4
  %567 = load i32, i32* %12, align 4
  %568 = icmp eq i32 %567, 10
  br i1 %568, label %569, label %570

569:                                              ; preds = %564
  br label %572

570:                                              ; preds = %564
  br label %571

571:                                              ; preds = %570, %563
  br label %499

572:                                              ; preds = %569, %561, %535
  br label %573

573:                                              ; preds = %572, %491
  %574 = load i32, i32* %30, align 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %577

576:                                              ; preds = %573
  br label %1323

577:                                              ; preds = %573
  %578 = load i32, i32* %32, align 4
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %1016

580:                                              ; preds = %577
  %581 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %582 = call i32 @BIT(i32 31)
  %583 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %581, i32 3304, i32 %582, i32 0)
  %584 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %585 = load i32, i32* @COMP_IQK, align 4
  %586 = load i32, i32* @DBG_LOUD, align 4
  %587 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %584, i32 %585, i32 %586, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %34, align 4
  br label %588

588:                                              ; preds = %989, %580
  %589 = load i32, i32* %34, align 4
  %590 = icmp sle i32 %589, 2
  br i1 %590, label %591, label %992

591:                                              ; preds = %588
  %592 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %593 = call i32 @BIT(i32 31)
  %594 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %592, i32 2092, i32 %593, i32 0)
  %595 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %596 = load i32, i32* %4, align 4
  %597 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %598 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %595, i32 %596, i32 239, i32 %597, i32 524288)
  %599 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %600 = load i32, i32* %4, align 4
  %601 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %602 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %599, i32 %600, i32 48, i32 %601, i32 196608)
  %603 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %604 = load i32, i32* %4, align 4
  %605 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %606 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %603, i32 %604, i32 49, i32 %605, i32 41)
  %607 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %608 = load i32, i32* %4, align 4
  %609 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %610 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %607, i32 %608, i32 50, i32 %609, i32 884731)
  %611 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %612 = load i32, i32* %4, align 4
  %613 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %614 = load i32, i32* %14, align 4
  %615 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %611, i32 %612, i32 101, i32 %613, i32 %614)
  %616 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %617 = load i32, i32* %4, align 4
  %618 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %619 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %616, i32 %617, i32 143, i32 %618, i32 565249)
  %620 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %621 = load i32, i32* %4, align 4
  %622 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %623 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %620, i32 %621, i32 239, i32 %622, i32 0)
  %624 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %625 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %624, i32 3256, i32 15, i32 13)
  %626 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %627 = call i32 @rtl_write_dword(%struct.rtl_priv* %626, i32 2424, i32 687874048)
  %628 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %629 = call i32 @rtl_write_dword(%struct.rtl_priv* %628, i32 2428, i32 -1459609600)
  %630 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %631 = call i32 @rtl_write_dword(%struct.rtl_priv* %630, i32 2436, i32 4630800)
  %632 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %633 = call i32 @rtl_write_dword(%struct.rtl_priv* %632, i32 2316, i32 32768)
  %634 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %635 = call i32 @rtl_write_dword(%struct.rtl_priv* %634, i32 2816, i32 50331904)
  %636 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %637 = call i32 @BIT(i32 31)
  %638 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %636, i32 2092, i32 %637, i32 1)
  %639 = load i32, i32* %34, align 4
  switch i32 %639, label %735 [
    i32 0, label %640
    i32 1, label %648
    i32 2, label %656
  ]

640:                                              ; preds = %591
  %641 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %642 = call i32 @rtl_write_dword(%struct.rtl_priv* %641, i32 3200, i32 402689080)
  %643 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %644 = call i32 @rtl_write_dword(%struct.rtl_priv* %643, i32 3204, i32 939559992)
  %645 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %646 = call i32 @BIT(i32 30)
  %647 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %645, i32 3304, i32 %646, i32 0)
  br label %736

648:                                              ; preds = %591
  %649 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %650 = call i32 @rtl_write_dword(%struct.rtl_priv* %649, i32 3200, i32 134253624)
  %651 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %652 = call i32 @rtl_write_dword(%struct.rtl_priv* %651, i32 3204, i32 671124536)
  %653 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %654 = call i32 @BIT(i32 30)
  %655 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %653, i32 3304, i32 %654, i32 0)
  br label %736

656:                                              ; preds = %591
  %657 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %658 = load i32, i32* @COMP_IQK, align 4
  %659 = load i32, i32* @DBG_LOUD, align 4
  %660 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 1
  %661 = load i32, i32* %660, align 4
  %662 = ashr i32 %661, 21
  %663 = and i32 %662, 2047
  %664 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 0
  %665 = load i32, i32* %664, align 4
  %666 = ashr i32 %665, 21
  %667 = and i32 %666, 2047
  %668 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %657, i32 %658, i32 %659, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %663, i32 %667)
  %669 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %670 = load i32, i32* @COMP_IQK, align 4
  %671 = load i32, i32* @DBG_LOUD, align 4
  %672 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 1
  %673 = load i32, i32* %672, align 4
  %674 = ashr i32 %673, 21
  %675 = and i32 %674, 2047
  %676 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %677 = load i32, i32* %676, align 4
  %678 = ashr i32 %677, 21
  %679 = and i32 %678, 2047
  %680 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %669, i32 %670, i32 %671, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %675, i32 %679)
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 1
  %682 = load i32, i32* %681, align 4
  %683 = ashr i32 %682, 20
  %684 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 0
  %685 = load i32, i32* %684, align 4
  %686 = ashr i32 %685, 20
  %687 = sub nsw i32 %683, %686
  %688 = load i32, i32* %13, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, i32* %73, i64 %689
  store i32 %687, i32* %690, align 4
  %691 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %692 = load i32, i32* @COMP_IQK, align 4
  %693 = load i32, i32* @DBG_LOUD, align 4
  %694 = load i32, i32* %13, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %73, i64 %695
  %697 = load i32, i32* %696, align 4
  %698 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %691, i32 %692, i32 %693, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %697)
  %699 = load i32, i32* %13, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, i32* %73, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = mul nsw i32 16, %702
  %704 = mul nsw i32 %703, 10000
  %705 = sdiv i32 %704, 13823
  %706 = load i32, i32* %13, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32, i32* %73, i64 %707
  store i32 %705, i32* %708, align 4
  %709 = load i32, i32* %13, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %73, i64 %710
  %712 = load i32, i32* %711, align 4
  %713 = ashr i32 %712, 1
  %714 = load i32, i32* %13, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %73, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = call i32 @BIT(i32 0)
  %719 = and i32 %717, %718
  %720 = add nsw i32 %713, %719
  %721 = load i32, i32* %13, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, i32* %73, i64 %722
  store i32 %720, i32* %723, align 4
  %724 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %725 = call i32 @rtl_write_dword(%struct.rtl_priv* %724, i32 3200, i32 402689056)
  %726 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %727 = call i32 @rtl_write_dword(%struct.rtl_priv* %726, i32 3204, i32 939559968)
  %728 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %729 = load i32, i32* %13, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %73, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = and i32 %732, 16383
  %734 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %728, i32 3304, i32 16383, i32 %733)
  br label %736

735:                                              ; preds = %591
  br label %736

736:                                              ; preds = %735, %656, %648, %640
  %737 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %738 = call i32 @rtl_write_dword(%struct.rtl_priv* %737, i32 3208, i32 -2112486432)
  %739 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %740 = call i32 @rtl_write_dword(%struct.rtl_priv* %739, i32 3212, i32 1746288278)
  %741 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %742 = call i32 @rtl_write_dword(%struct.rtl_priv* %741, i32 3256, i32 1048576)
  store i32 0, i32* %12, align 4
  br label %743

743:                                              ; preds = %811, %736
  br label %744

744:                                              ; preds = %743
  %745 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %746 = call i32 @rtl_write_dword(%struct.rtl_priv* %745, i32 2432, i32 -100663296)
  %747 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %748 = call i32 @rtl_write_dword(%struct.rtl_priv* %747, i32 2432, i32 -134217728)
  %749 = call i32 @mdelay(i32 10)
  %750 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %751 = call i32 @rtl_write_dword(%struct.rtl_priv* %750, i32 3256, i32 0)
  store i32 0, i32* %10, align 4
  br label %752

752:                                              ; preds = %768, %744
  br label %753

753:                                              ; preds = %752
  %754 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %755 = call i32 @BIT(i32 10)
  %756 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %754, i32 3328, i32 %755)
  store i32 %756, i32* %11, align 4
  %757 = load i32, i32* %11, align 4
  %758 = xor i32 %757, -1
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %763, label %760

760:                                              ; preds = %753
  %761 = load i32, i32* %10, align 4
  %762 = icmp sgt i32 %761, 20
  br i1 %762, label %763, label %764

763:                                              ; preds = %760, %753
  br label %769

764:                                              ; preds = %760
  %765 = call i32 @mdelay(i32 1)
  %766 = load i32, i32* %10, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %10, align 4
  br label %768

768:                                              ; preds = %764
  br label %752

769:                                              ; preds = %763
  %770 = load i32, i32* %10, align 4
  %771 = icmp slt i32 %770, 20
  br i1 %771, label %772, label %804

772:                                              ; preds = %769
  %773 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %774 = call i32 @BIT(i32 12)
  %775 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %773, i32 3328, i32 %774)
  store i32 %775, i32* %8, align 4
  %776 = load i32, i32* %8, align 4
  %777 = xor i32 %776, -1
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %796

779:                                              ; preds = %772
  %780 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %781 = call i32 @rtl_write_dword(%struct.rtl_priv* %780, i32 3256, i32 33554432)
  %782 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %783 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %782, i32 3328, i32 134152192)
  %784 = shl i32 %783, 21
  %785 = load i32, i32* %13, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i32, i32* %58, i64 %786
  store i32 %784, i32* %787, align 4
  %788 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %789 = call i32 @rtl_write_dword(%struct.rtl_priv* %788, i32 3256, i32 67108864)
  %790 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %791 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %790, i32 3328, i32 134152192)
  %792 = shl i32 %791, 21
  %793 = load i32, i32* %13, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i32, i32* %61, i64 %794
  store i32 %792, i32* %795, align 4
  store i32 1, i32* %30, align 4
  br label %812

796:                                              ; preds = %772
  store i32 0, i32* %30, align 4
  %797 = load i32, i32* %12, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %12, align 4
  %799 = load i32, i32* %12, align 4
  %800 = icmp eq i32 %799, 10
  br i1 %800, label %801, label %802

801:                                              ; preds = %796
  br label %812

802:                                              ; preds = %796
  br label %803

803:                                              ; preds = %802
  br label %811

804:                                              ; preds = %769
  store i32 0, i32* %30, align 4
  %805 = load i32, i32* %12, align 4
  %806 = add nsw i32 %805, 1
  store i32 %806, i32* %12, align 4
  %807 = load i32, i32* %12, align 4
  %808 = icmp eq i32 %807, 10
  br i1 %808, label %809, label %810

809:                                              ; preds = %804
  br label %812

810:                                              ; preds = %804
  br label %811

811:                                              ; preds = %810, %803
  br label %743

812:                                              ; preds = %809, %801, %779
  %813 = load i32, i32* %30, align 4
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %834

815:                                              ; preds = %812
  %816 = load i32, i32* %13, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i32, i32* %52, i64 %817
  %819 = load i32, i32* %818, align 4
  %820 = load i32, i32* %13, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i32, i32* %58, i64 %821
  store i32 %819, i32* %822, align 4
  %823 = load i32, i32* %13, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i32, i32* %55, i64 %824
  %826 = load i32, i32* %825, align 4
  %827 = load i32, i32* %13, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i32, i32* %61, i64 %828
  store i32 %826, i32* %829, align 4
  store i32 1, i32* %30, align 4
  %830 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %831 = load i32, i32* @COMP_IQK, align 4
  %832 = load i32, i32* @DBG_LOUD, align 4
  %833 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %830, i32 %831, i32 %832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %834

834:                                              ; preds = %815, %812
  %835 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %836 = call i32 @BIT(i32 31)
  %837 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %835, i32 2092, i32 %836, i32 0)
  %838 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %839 = load i32, i32* %4, align 4
  %840 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %841 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %838, i32 %839, i32 239, i32 %840, i32 524288)
  %842 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %843 = load i32, i32* %4, align 4
  %844 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %845 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %842, i32 %843, i32 48, i32 %844, i32 196608)
  %846 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %847 = load i32, i32* %4, align 4
  %848 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %849 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %846, i32 %847, i32 49, i32 %848, i32 47)
  %850 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %851 = load i32, i32* %4, align 4
  %852 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %853 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %850, i32 %851, i32 50, i32 %852, i32 1048507)
  %854 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %855 = load i32, i32* %4, align 4
  %856 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %857 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %854, i32 %855, i32 143, i32 %856, i32 557057)
  %858 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %859 = load i32, i32* %4, align 4
  %860 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %861 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %858, i32 %859, i32 101, i32 %860, i32 602584)
  %862 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %863 = load i32, i32* %4, align 4
  %864 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %865 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %862, i32 %863, i32 239, i32 %864, i32 0)
  %866 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %867 = load i32, i32* %13, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i32, i32* %58, i64 %868
  %870 = load i32, i32* %869, align 4
  %871 = ashr i32 %870, 21
  %872 = and i32 %871, 2047
  %873 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %866, i32 2424, i32 67076096, i32 %872)
  %874 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %875 = load i32, i32* %13, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i32, i32* %61, i64 %876
  %878 = load i32, i32* %877, align 4
  %879 = ashr i32 %878, 21
  %880 = and i32 %879, 2047
  %881 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %874, i32 2424, i32 2047, i32 %880)
  %882 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %883 = call i32 @BIT(i32 31)
  %884 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %882, i32 2424, i32 %883, i32 1)
  %885 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %886 = call i32 @BIT(i32 31)
  %887 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %885, i32 2428, i32 %886, i32 0)
  %888 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %889 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %888, i32 3256, i32 15, i32 14)
  %890 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %891 = call i32 @rtl_write_dword(%struct.rtl_priv* %890, i32 2316, i32 32768)
  %892 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %893 = call i32 @rtl_write_dword(%struct.rtl_priv* %892, i32 2436, i32 4630801)
  %894 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %895 = call i32 @BIT(i32 31)
  %896 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %894, i32 2092, i32 %895, i32 1)
  %897 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %898 = call i32 @BIT(i32 29)
  %899 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %897, i32 3200, i32 %898, i32 1)
  %900 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %901 = call i32 @BIT(i32 29)
  %902 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %900, i32 3204, i32 %901, i32 0)
  %903 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %904 = call i32 @rtl_write_dword(%struct.rtl_priv* %903, i32 3208, i32 34865433)
  %905 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %906 = call i32 @rtl_write_dword(%struct.rtl_priv* %905, i32 3212, i32 672533760)
  %907 = load i32, i32* %34, align 4
  %908 = icmp eq i32 %907, 2
  br i1 %908, label %909, label %913

909:                                              ; preds = %834
  %910 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %911 = call i32 @BIT(i32 30)
  %912 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %910, i32 3304, i32 %911, i32 1)
  br label %913

913:                                              ; preds = %909, %834
  %914 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %915 = call i32 @rtl_write_dword(%struct.rtl_priv* %914, i32 3256, i32 1048576)
  store i32 0, i32* %12, align 4
  br label %916

916:                                              ; preds = %987, %913
  br label %917

917:                                              ; preds = %916
  %918 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %919 = call i32 @rtl_write_dword(%struct.rtl_priv* %918, i32 2432, i32 -100663296)
  %920 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %921 = call i32 @rtl_write_dword(%struct.rtl_priv* %920, i32 2432, i32 -134217728)
  %922 = call i32 @mdelay(i32 10)
  %923 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %924 = call i32 @rtl_write_dword(%struct.rtl_priv* %923, i32 3256, i32 0)
  store i32 0, i32* %10, align 4
  br label %925

925:                                              ; preds = %941, %917
  br label %926

926:                                              ; preds = %925
  %927 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %928 = call i32 @BIT(i32 10)
  %929 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %927, i32 3328, i32 %928)
  store i32 %929, i32* %11, align 4
  %930 = load i32, i32* %11, align 4
  %931 = xor i32 %930, -1
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %936, label %933

933:                                              ; preds = %926
  %934 = load i32, i32* %10, align 4
  %935 = icmp sgt i32 %934, 20
  br i1 %935, label %936, label %937

936:                                              ; preds = %933, %926
  br label %942

937:                                              ; preds = %933
  %938 = call i32 @mdelay(i32 1)
  %939 = load i32, i32* %10, align 4
  %940 = add nsw i32 %939, 1
  store i32 %940, i32* %10, align 4
  br label %941

941:                                              ; preds = %937
  br label %925

942:                                              ; preds = %936
  %943 = load i32, i32* %10, align 4
  %944 = icmp slt i32 %943, 20
  br i1 %944, label %945, label %980

945:                                              ; preds = %942
  %946 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %947 = call i32 @BIT(i32 11)
  %948 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %946, i32 3328, i32 %947)
  store i32 %948, i32* %9, align 4
  %949 = load i32, i32* %9, align 4
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %968

951:                                              ; preds = %945
  %952 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %953 = call i32 @rtl_write_dword(%struct.rtl_priv* %952, i32 3256, i32 100663296)
  %954 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %955 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %954, i32 3328, i32 134152192)
  %956 = shl i32 %955, 21
  %957 = load i32, i32* %34, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 %958
  store i32 %956, i32* %959, align 4
  %960 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %961 = call i32 @rtl_write_dword(%struct.rtl_priv* %960, i32 3256, i32 134217728)
  %962 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %963 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %962, i32 3328, i32 134152192)
  %964 = shl i32 %963, 21
  %965 = load i32, i32* %34, align 4
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 %966
  store i32 %964, i32* %967, align 4
  store i32 1, i32* %31, align 4
  br label %988

968:                                              ; preds = %945
  %969 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %970 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %969, i32 3088, i32 1023, i32 256)
  %971 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %972 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %971, i32 3088, i32 67043328, i32 0)
  store i32 0, i32* %31, align 4
  %973 = load i32, i32* %12, align 4
  %974 = add nsw i32 %973, 1
  store i32 %974, i32* %12, align 4
  %975 = load i32, i32* %12, align 4
  %976 = icmp eq i32 %975, 10
  br i1 %976, label %977, label %978

977:                                              ; preds = %968
  br label %988

978:                                              ; preds = %968
  br label %979

979:                                              ; preds = %978
  br label %987

980:                                              ; preds = %942
  store i32 0, i32* %31, align 4
  %981 = load i32, i32* %12, align 4
  %982 = add nsw i32 %981, 1
  store i32 %982, i32* %12, align 4
  %983 = load i32, i32* %12, align 4
  %984 = icmp eq i32 %983, 10
  br i1 %984, label %985, label %986

985:                                              ; preds = %980
  br label %988

986:                                              ; preds = %980
  br label %987

987:                                              ; preds = %986, %979
  br label %916

988:                                              ; preds = %985, %977, %951
  br label %989

989:                                              ; preds = %988
  %990 = load i32, i32* %34, align 4
  %991 = add nsw i32 %990, 1
  store i32 %991, i32* %34, align 4
  br label %588

992:                                              ; preds = %588
  %993 = load i32, i32* %34, align 4
  %994 = icmp eq i32 %993, 3
  br i1 %994, label %995, label %1012

995:                                              ; preds = %992
  %996 = load i32, i32* %34, align 4
  %997 = sub nsw i32 %996, 1
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 %998
  %1000 = load i32, i32* %999, align 4
  %1001 = load i32, i32* %13, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds i32, i32* %64, i64 %1002
  store i32 %1000, i32* %1003, align 4
  %1004 = load i32, i32* %34, align 4
  %1005 = sub nsw i32 %1004, 1
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 %1006
  %1008 = load i32, i32* %1007, align 4
  %1009 = load i32, i32* %13, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds i32, i32* %67, i64 %1010
  store i32 %1008, i32* %1011, align 4
  br label %1012

1012:                                             ; preds = %995, %992
  %1013 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1014 = call i32 @BIT(i32 31)
  %1015 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1013, i32 3304, i32 %1014, i32 1)
  br label %1301

1016:                                             ; preds = %577
  %1017 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1018 = call i32 @BIT(i32 31)
  %1019 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1017, i32 2092, i32 %1018, i32 0)
  %1020 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1021 = load i32, i32* %4, align 4
  %1022 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1023 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1020, i32 %1021, i32 239, i32 %1022, i32 524288)
  %1024 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1025 = load i32, i32* %4, align 4
  %1026 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1027 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1024, i32 %1025, i32 48, i32 %1026, i32 196608)
  %1028 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1029 = load i32, i32* %4, align 4
  %1030 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1031 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1028, i32 %1029, i32 49, i32 %1030, i32 41)
  %1032 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1033 = load i32, i32* %4, align 4
  %1034 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1035 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1032, i32 %1033, i32 50, i32 %1034, i32 884731)
  %1036 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1037 = load i32, i32* %4, align 4
  %1038 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1039 = load i32, i32* %14, align 4
  %1040 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1036, i32 %1037, i32 101, i32 %1038, i32 %1039)
  %1041 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1042 = load i32, i32* %4, align 4
  %1043 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1044 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1041, i32 %1042, i32 143, i32 %1043, i32 565249)
  %1045 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1046 = load i32, i32* %4, align 4
  %1047 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1048 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1045, i32 %1046, i32 239, i32 %1047, i32 0)
  %1049 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1050 = call i32 @rtl_write_dword(%struct.rtl_priv* %1049, i32 2316, i32 32768)
  %1051 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1052 = call i32 @rtl_write_dword(%struct.rtl_priv* %1051, i32 2816, i32 50331904)
  %1053 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1054 = call i32 @rtl_write_dword(%struct.rtl_priv* %1053, i32 2436, i32 4630800)
  %1055 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1056 = call i32 @BIT(i32 31)
  %1057 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1055, i32 2092, i32 %1056, i32 1)
  %1058 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1059 = call i32 @rtl_write_dword(%struct.rtl_priv* %1058, i32 3200, i32 402689040)
  %1060 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1061 = call i32 @rtl_write_dword(%struct.rtl_priv* %1060, i32 3204, i32 939559952)
  %1062 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1063 = call i32 @rtl_write_dword(%struct.rtl_priv* %1062, i32 3208, i32 -2112486432)
  %1064 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1065 = call i32 @rtl_write_dword(%struct.rtl_priv* %1064, i32 3256, i32 1048576)
  store i32 0, i32* %12, align 4
  br label %1066

1066:                                             ; preds = %1134, %1016
  br label %1067

1067:                                             ; preds = %1066
  %1068 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1069 = call i32 @rtl_write_dword(%struct.rtl_priv* %1068, i32 2432, i32 -100663296)
  %1070 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1071 = call i32 @rtl_write_dword(%struct.rtl_priv* %1070, i32 2432, i32 -134217728)
  %1072 = call i32 @mdelay(i32 10)
  %1073 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1074 = call i32 @rtl_write_dword(%struct.rtl_priv* %1073, i32 3256, i32 0)
  store i32 0, i32* %10, align 4
  br label %1075

1075:                                             ; preds = %1091, %1067
  br label %1076

1076:                                             ; preds = %1075
  %1077 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1078 = call i32 @BIT(i32 10)
  %1079 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1077, i32 3328, i32 %1078)
  store i32 %1079, i32* %11, align 4
  %1080 = load i32, i32* %11, align 4
  %1081 = xor i32 %1080, -1
  %1082 = icmp ne i32 %1081, 0
  br i1 %1082, label %1086, label %1083

1083:                                             ; preds = %1076
  %1084 = load i32, i32* %10, align 4
  %1085 = icmp sgt i32 %1084, 20
  br i1 %1085, label %1086, label %1087

1086:                                             ; preds = %1083, %1076
  br label %1092

1087:                                             ; preds = %1083
  %1088 = call i32 @mdelay(i32 1)
  %1089 = load i32, i32* %10, align 4
  %1090 = add nsw i32 %1089, 1
  store i32 %1090, i32* %10, align 4
  br label %1091

1091:                                             ; preds = %1087
  br label %1075

1092:                                             ; preds = %1086
  %1093 = load i32, i32* %10, align 4
  %1094 = icmp slt i32 %1093, 20
  br i1 %1094, label %1095, label %1127

1095:                                             ; preds = %1092
  %1096 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1097 = call i32 @BIT(i32 12)
  %1098 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1096, i32 3328, i32 %1097)
  store i32 %1098, i32* %8, align 4
  %1099 = load i32, i32* %8, align 4
  %1100 = xor i32 %1099, -1
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1102, label %1119

1102:                                             ; preds = %1095
  %1103 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1104 = call i32 @rtl_write_dword(%struct.rtl_priv* %1103, i32 3256, i32 33554432)
  %1105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1106 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1105, i32 3328, i32 134152192)
  %1107 = shl i32 %1106, 21
  %1108 = load i32, i32* %13, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds i32, i32* %58, i64 %1109
  store i32 %1107, i32* %1110, align 4
  %1111 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1112 = call i32 @rtl_write_dword(%struct.rtl_priv* %1111, i32 3256, i32 67108864)
  %1113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1114 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1113, i32 3328, i32 134152192)
  %1115 = shl i32 %1114, 21
  %1116 = load i32, i32* %13, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds i32, i32* %61, i64 %1117
  store i32 %1115, i32* %1118, align 4
  store i32 1, i32* %30, align 4
  br label %1135

1119:                                             ; preds = %1095
  store i32 0, i32* %30, align 4
  %1120 = load i32, i32* %12, align 4
  %1121 = add nsw i32 %1120, 1
  store i32 %1121, i32* %12, align 4
  %1122 = load i32, i32* %12, align 4
  %1123 = icmp eq i32 %1122, 10
  br i1 %1123, label %1124, label %1125

1124:                                             ; preds = %1119
  br label %1135

1125:                                             ; preds = %1119
  br label %1126

1126:                                             ; preds = %1125
  br label %1134

1127:                                             ; preds = %1092
  store i32 0, i32* %30, align 4
  %1128 = load i32, i32* %12, align 4
  %1129 = add nsw i32 %1128, 1
  store i32 %1129, i32* %12, align 4
  %1130 = load i32, i32* %12, align 4
  %1131 = icmp eq i32 %1130, 10
  br i1 %1131, label %1132, label %1133

1132:                                             ; preds = %1127
  br label %1135

1133:                                             ; preds = %1127
  br label %1134

1134:                                             ; preds = %1133, %1126
  br label %1066

1135:                                             ; preds = %1132, %1124, %1102
  %1136 = load i32, i32* %30, align 4
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1138, label %1157

1138:                                             ; preds = %1135
  %1139 = load i32, i32* %13, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds i32, i32* %52, i64 %1140
  %1142 = load i32, i32* %1141, align 4
  %1143 = load i32, i32* %13, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i32, i32* %58, i64 %1144
  store i32 %1142, i32* %1145, align 4
  %1146 = load i32, i32* %13, align 4
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds i32, i32* %55, i64 %1147
  %1149 = load i32, i32* %1148, align 4
  %1150 = load i32, i32* %13, align 4
  %1151 = sext i32 %1150 to i64
  %1152 = getelementptr inbounds i32, i32* %61, i64 %1151
  store i32 %1149, i32* %1152, align 4
  store i32 1, i32* %30, align 4
  %1153 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1154 = load i32, i32* @COMP_IQK, align 4
  %1155 = load i32, i32* @DBG_LOUD, align 4
  %1156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1153, i32 %1154, i32 %1155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %1157

1157:                                             ; preds = %1138, %1135
  %1158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1159 = call i32 @BIT(i32 31)
  %1160 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1158, i32 2092, i32 %1159, i32 0)
  %1161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1162 = load i32, i32* %4, align 4
  %1163 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1164 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1161, i32 %1162, i32 239, i32 %1163, i32 524288)
  %1165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1166 = load i32, i32* %4, align 4
  %1167 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1168 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1165, i32 %1166, i32 48, i32 %1167, i32 196608)
  %1169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1170 = load i32, i32* %4, align 4
  %1171 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1172 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1169, i32 %1170, i32 49, i32 %1171, i32 47)
  %1173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1174 = load i32, i32* %4, align 4
  %1175 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1176 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1173, i32 %1174, i32 50, i32 %1175, i32 1048507)
  %1177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1178 = load i32, i32* %4, align 4
  %1179 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1180 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1177, i32 %1178, i32 143, i32 %1179, i32 557057)
  %1181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1182 = load i32, i32* %4, align 4
  %1183 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1184 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1181, i32 %1182, i32 101, i32 %1183, i32 602584)
  %1185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1186 = load i32, i32* %4, align 4
  %1187 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1188 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1185, i32 %1186, i32 239, i32 %1187, i32 0)
  %1189 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1190 = load i32, i32* %13, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds i32, i32* %58, i64 %1191
  %1193 = load i32, i32* %1192, align 4
  %1194 = ashr i32 %1193, 21
  %1195 = and i32 %1194, 2047
  %1196 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1189, i32 2424, i32 67076096, i32 %1195)
  %1197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1198 = load i32, i32* %13, align 4
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i32, i32* %61, i64 %1199
  %1201 = load i32, i32* %1200, align 4
  %1202 = ashr i32 %1201, 21
  %1203 = and i32 %1202, 2047
  %1204 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1197, i32 2424, i32 2047, i32 %1203)
  %1205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1206 = call i32 @BIT(i32 31)
  %1207 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1205, i32 2424, i32 %1206, i32 1)
  %1208 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1209 = call i32 @BIT(i32 31)
  %1210 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1208, i32 2428, i32 %1209, i32 0)
  %1211 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1212 = call i32 @rtl_write_dword(%struct.rtl_priv* %1211, i32 2316, i32 32768)
  %1213 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1214 = call i32 @rtl_write_dword(%struct.rtl_priv* %1213, i32 2436, i32 4630801)
  %1215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1216 = call i32 @BIT(i32 31)
  %1217 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1215, i32 2092, i32 %1216, i32 1)
  %1218 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1219 = call i32 @rtl_write_dword(%struct.rtl_priv* %1218, i32 3200, i32 939559952)
  %1220 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1221 = call i32 @rtl_write_dword(%struct.rtl_priv* %1220, i32 3204, i32 402689040)
  %1222 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1223 = call i32 @rtl_write_dword(%struct.rtl_priv* %1222, i32 3208, i32 34865433)
  %1224 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1225 = call i32 @rtl_write_dword(%struct.rtl_priv* %1224, i32 3212, i32 672533760)
  %1226 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1227 = call i32 @rtl_write_dword(%struct.rtl_priv* %1226, i32 3256, i32 1048576)
  store i32 0, i32* %12, align 4
  br label %1228

1228:                                             ; preds = %1299, %1157
  br label %1229

1229:                                             ; preds = %1228
  %1230 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1231 = call i32 @rtl_write_dword(%struct.rtl_priv* %1230, i32 2432, i32 -100663296)
  %1232 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1233 = call i32 @rtl_write_dword(%struct.rtl_priv* %1232, i32 2432, i32 -134217728)
  %1234 = call i32 @mdelay(i32 10)
  %1235 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1236 = call i32 @rtl_write_dword(%struct.rtl_priv* %1235, i32 3256, i32 0)
  store i32 0, i32* %10, align 4
  br label %1237

1237:                                             ; preds = %1253, %1229
  br label %1238

1238:                                             ; preds = %1237
  %1239 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1240 = call i32 @BIT(i32 10)
  %1241 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1239, i32 3328, i32 %1240)
  store i32 %1241, i32* %11, align 4
  %1242 = load i32, i32* %11, align 4
  %1243 = xor i32 %1242, -1
  %1244 = icmp ne i32 %1243, 0
  br i1 %1244, label %1248, label %1245

1245:                                             ; preds = %1238
  %1246 = load i32, i32* %10, align 4
  %1247 = icmp sgt i32 %1246, 20
  br i1 %1247, label %1248, label %1249

1248:                                             ; preds = %1245, %1238
  br label %1254

1249:                                             ; preds = %1245
  %1250 = call i32 @mdelay(i32 1)
  %1251 = load i32, i32* %10, align 4
  %1252 = add nsw i32 %1251, 1
  store i32 %1252, i32* %10, align 4
  br label %1253

1253:                                             ; preds = %1249
  br label %1237

1254:                                             ; preds = %1248
  %1255 = load i32, i32* %10, align 4
  %1256 = icmp slt i32 %1255, 20
  br i1 %1256, label %1257, label %1292

1257:                                             ; preds = %1254
  %1258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1259 = call i32 @BIT(i32 11)
  %1260 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1258, i32 3328, i32 %1259)
  store i32 %1260, i32* %9, align 4
  %1261 = load i32, i32* %9, align 4
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1263, label %1280

1263:                                             ; preds = %1257
  %1264 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1265 = call i32 @rtl_write_dword(%struct.rtl_priv* %1264, i32 3256, i32 100663296)
  %1266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1267 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1266, i32 3328, i32 134152192)
  %1268 = shl i32 %1267, 21
  %1269 = load i32, i32* %13, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds i32, i32* %64, i64 %1270
  store i32 %1268, i32* %1271, align 4
  %1272 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1273 = call i32 @rtl_write_dword(%struct.rtl_priv* %1272, i32 3256, i32 134217728)
  %1274 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1275 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %1274, i32 3328, i32 134152192)
  %1276 = shl i32 %1275, 21
  %1277 = load i32, i32* %13, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = getelementptr inbounds i32, i32* %67, i64 %1278
  store i32 %1276, i32* %1279, align 4
  store i32 1, i32* %31, align 4
  br label %1300

1280:                                             ; preds = %1257
  %1281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1282 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1281, i32 3088, i32 1023, i32 256)
  %1283 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1284 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1283, i32 3088, i32 67043328, i32 0)
  store i32 0, i32* %31, align 4
  %1285 = load i32, i32* %12, align 4
  %1286 = add nsw i32 %1285, 1
  store i32 %1286, i32* %12, align 4
  %1287 = load i32, i32* %12, align 4
  %1288 = icmp eq i32 %1287, 10
  br i1 %1288, label %1289, label %1290

1289:                                             ; preds = %1280
  br label %1300

1290:                                             ; preds = %1280
  br label %1291

1291:                                             ; preds = %1290
  br label %1299

1292:                                             ; preds = %1254
  store i32 0, i32* %31, align 4
  %1293 = load i32, i32* %12, align 4
  %1294 = add nsw i32 %1293, 1
  store i32 %1294, i32* %12, align 4
  %1295 = load i32, i32* %12, align 4
  %1296 = icmp eq i32 %1295, 10
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1292
  br label %1300

1298:                                             ; preds = %1292
  br label %1299

1299:                                             ; preds = %1298, %1291
  br label %1228

1300:                                             ; preds = %1297, %1289, %1263
  br label %1301

1301:                                             ; preds = %1300, %1012
  %1302 = load i32, i32* %30, align 4
  %1303 = icmp ne i32 %1302, 0
  br i1 %1303, label %1304, label %1307

1304:                                             ; preds = %1301
  %1305 = load i32, i32* %19, align 4
  %1306 = add nsw i32 %1305, 1
  store i32 %1306, i32* %19, align 4
  br label %1307

1307:                                             ; preds = %1304, %1301
  %1308 = load i32, i32* %31, align 4
  %1309 = icmp ne i32 %1308, 0
  br i1 %1309, label %1310, label %1313

1310:                                             ; preds = %1307
  %1311 = load i32, i32* %20, align 4
  %1312 = add nsw i32 %1311, 1
  store i32 %1312, i32* %20, align 4
  br label %1313

1313:                                             ; preds = %1310, %1307
  %1314 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1315 = call i32 @BIT(i32 31)
  %1316 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1314, i32 2092, i32 %1315, i32 0)
  %1317 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1318 = load i32, i32* %4, align 4
  %1319 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %1320 = load i32, i32* %14, align 4
  %1321 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %1317, i32 %1318, i32 101, i32 %1319, i32 %1320)
  br label %1323

1322:                                             ; preds = %92
  br label %1323

1323:                                             ; preds = %1322, %1313, %576
  %1324 = load i32, i32* %13, align 4
  %1325 = add nsw i32 %1324, 1
  store i32 %1325, i32* %13, align 4
  br label %88

1326:                                             ; preds = %88
  %1327 = load i32, i32* %4, align 4
  switch i32 %1327, label %1607 [
    i32 128, label %1328
  ]

1328:                                             ; preds = %1326
  %1329 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1330 = load i32, i32* @COMP_IQK, align 4
  %1331 = load i32, i32* @DBG_LOUD, align 4
  %1332 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1329, i32 %1330, i32 %1331, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %1333 = load i32, i32* %19, align 4
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1336

1335:                                             ; preds = %1328
  br label %1608

1336:                                             ; preds = %1328
  store i32 0, i32* %33, align 4
  br label %1337

1337:                                             ; preds = %1378, %1336
  %1338 = load i32, i32* %33, align 4
  %1339 = load i32, i32* %19, align 4
  %1340 = icmp slt i32 %1338, %1339
  br i1 %1340, label %1341, label %1381

1341:                                             ; preds = %1337
  %1342 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1343 = load i32, i32* @COMP_IQK, align 4
  %1344 = load i32, i32* @DBG_LOUD, align 4
  %1345 = load i32, i32* %33, align 4
  %1346 = load i32, i32* %33, align 4
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds i32, i32* %58, i64 %1347
  %1349 = load i32, i32* %1348, align 4
  %1350 = ashr i32 %1349, 21
  %1351 = and i32 %1350, 2047
  %1352 = load i32, i32* %33, align 4
  %1353 = load i32, i32* %33, align 4
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds i32, i32* %61, i64 %1354
  %1356 = load i32, i32* %1355, align 4
  %1357 = ashr i32 %1356, 21
  %1358 = and i32 %1357, 2047
  %1359 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1342, i32 %1343, i32 %1344, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %1345, i32 %1351, i32 %1352, i32 %1358)
  %1360 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1361 = load i32, i32* @COMP_IQK, align 4
  %1362 = load i32, i32* @DBG_LOUD, align 4
  %1363 = load i32, i32* %33, align 4
  %1364 = load i32, i32* %33, align 4
  %1365 = sext i32 %1364 to i64
  %1366 = getelementptr inbounds i32, i32* %52, i64 %1365
  %1367 = load i32, i32* %1366, align 4
  %1368 = ashr i32 %1367, 21
  %1369 = and i32 %1368, 2047
  %1370 = load i32, i32* %33, align 4
  %1371 = load i32, i32* %33, align 4
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds i32, i32* %55, i64 %1372
  %1374 = load i32, i32* %1373, align 4
  %1375 = ashr i32 %1374, 21
  %1376 = and i32 %1375, 2047
  %1377 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1360, i32 %1361, i32 %1362, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %1363, i32 %1369, i32 %1370, i32 %1376)
  br label %1378

1378:                                             ; preds = %1341
  %1379 = load i32, i32* %33, align 4
  %1380 = add nsw i32 %1379, 1
  store i32 %1380, i32* %33, align 4
  br label %1337

1381:                                             ; preds = %1337
  store i32 0, i32* %33, align 4
  br label %1382

1382:                                             ; preds = %1462, %1381
  %1383 = load i32, i32* %33, align 4
  %1384 = load i32, i32* %19, align 4
  %1385 = icmp slt i32 %1383, %1384
  br i1 %1385, label %1386, label %1465

1386:                                             ; preds = %1382
  %1387 = load i32, i32* %33, align 4
  %1388 = add nsw i32 %1387, 1
  store i32 %1388, i32* %37, align 4
  br label %1389

1389:                                             ; preds = %1454, %1386
  %1390 = load i32, i32* %37, align 4
  %1391 = load i32, i32* %19, align 4
  %1392 = icmp slt i32 %1390, %1391
  br i1 %1392, label %1393, label %1457

1393:                                             ; preds = %1389
  %1394 = load i32, i32* %33, align 4
  %1395 = sext i32 %1394 to i64
  %1396 = getelementptr inbounds i32, i32* %52, i64 %1395
  %1397 = load i32, i32* %1396, align 4
  %1398 = ashr i32 %1397, 21
  %1399 = load i32, i32* %37, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds i32, i32* %52, i64 %1400
  %1402 = load i32, i32* %1401, align 4
  %1403 = ashr i32 %1402, 21
  %1404 = sub nsw i32 %1398, %1403
  store i32 %1404, i32* %38, align 4
  %1405 = load i32, i32* %38, align 4
  %1406 = icmp slt i32 %1405, 3
  br i1 %1406, label %1407, label %1453

1407:                                             ; preds = %1393
  %1408 = load i32, i32* %38, align 4
  %1409 = icmp sgt i32 %1408, -3
  br i1 %1409, label %1410, label %1453

1410:                                             ; preds = %1407
  %1411 = load i32, i32* %33, align 4
  %1412 = sext i32 %1411 to i64
  %1413 = getelementptr inbounds i32, i32* %55, i64 %1412
  %1414 = load i32, i32* %1413, align 4
  %1415 = ashr i32 %1414, 21
  %1416 = load i32, i32* %37, align 4
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds i32, i32* %55, i64 %1417
  %1419 = load i32, i32* %1418, align 4
  %1420 = ashr i32 %1419, 21
  %1421 = sub nsw i32 %1415, %1420
  store i32 %1421, i32* %39, align 4
  %1422 = load i32, i32* %39, align 4
  %1423 = icmp slt i32 %1422, 3
  br i1 %1423, label %1424, label %1452

1424:                                             ; preds = %1410
  %1425 = load i32, i32* %39, align 4
  %1426 = icmp sgt i32 %1425, -3
  br i1 %1426, label %1427, label %1452

1427:                                             ; preds = %1424
  %1428 = load i32, i32* %33, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds i32, i32* %52, i64 %1429
  %1431 = load i32, i32* %1430, align 4
  %1432 = ashr i32 %1431, 21
  %1433 = load i32, i32* %37, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds i32, i32* %52, i64 %1434
  %1436 = load i32, i32* %1435, align 4
  %1437 = ashr i32 %1436, 21
  %1438 = add nsw i32 %1432, %1437
  %1439 = sdiv i32 %1438, 2
  store i32 %1439, i32* %15, align 4
  %1440 = load i32, i32* %33, align 4
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds i32, i32* %55, i64 %1441
  %1443 = load i32, i32* %1442, align 4
  %1444 = ashr i32 %1443, 21
  %1445 = load i32, i32* %37, align 4
  %1446 = sext i32 %1445 to i64
  %1447 = getelementptr inbounds i32, i32* %55, i64 %1446
  %1448 = load i32, i32* %1447, align 4
  %1449 = ashr i32 %1448, 21
  %1450 = add nsw i32 %1444, %1449
  %1451 = sdiv i32 %1450, 2
  store i32 %1451, i32* %16, align 4
  store i32 1, i32* %40, align 4
  br label %1457

1452:                                             ; preds = %1424, %1410
  br label %1453

1453:                                             ; preds = %1452, %1407, %1393
  br label %1454

1454:                                             ; preds = %1453
  %1455 = load i32, i32* %37, align 4
  %1456 = add nsw i32 %1455, 1
  store i32 %1456, i32* %37, align 4
  br label %1389

1457:                                             ; preds = %1427, %1389
  %1458 = load i32, i32* %40, align 4
  %1459 = icmp eq i32 %1458, 1
  br i1 %1459, label %1460, label %1461

1460:                                             ; preds = %1457
  br label %1465

1461:                                             ; preds = %1457
  br label %1462

1462:                                             ; preds = %1461
  %1463 = load i32, i32* %33, align 4
  %1464 = add nsw i32 %1463, 1
  store i32 %1464, i32* %33, align 4
  br label %1382

1465:                                             ; preds = %1460, %1382
  %1466 = load i32, i32* %40, align 4
  %1467 = icmp eq i32 %1466, 1
  br i1 %1467, label %1468, label %1474

1468:                                             ; preds = %1465
  %1469 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1470 = load i32, i32* %4, align 4
  %1471 = load i32, i32* %15, align 4
  %1472 = load i32, i32* %16, align 4
  %1473 = call i32 @_rtl8821ae_iqk_tx_fill_iqc(%struct.ieee80211_hw* %1469, i32 %1470, i32 %1471, i32 %1472)
  br label %1478

1474:                                             ; preds = %1465
  %1475 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1476 = load i32, i32* %4, align 4
  %1477 = call i32 @_rtl8821ae_iqk_tx_fill_iqc(%struct.ieee80211_hw* %1475, i32 %1476, i32 512, i32 0)
  br label %1478

1478:                                             ; preds = %1474, %1468
  %1479 = load i32, i32* %20, align 4
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1481, label %1482

1481:                                             ; preds = %1478
  br label %1608

1482:                                             ; preds = %1478
  store i32 0, i32* %33, align 4
  br label %1483

1483:                                             ; preds = %1506, %1482
  %1484 = load i32, i32* %33, align 4
  %1485 = load i32, i32* %20, align 4
  %1486 = icmp slt i32 %1484, %1485
  br i1 %1486, label %1487, label %1509

1487:                                             ; preds = %1483
  %1488 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %1489 = load i32, i32* @COMP_IQK, align 4
  %1490 = load i32, i32* @DBG_LOUD, align 4
  %1491 = load i32, i32* %33, align 4
  %1492 = load i32, i32* %33, align 4
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds i32, i32* %64, i64 %1493
  %1495 = load i32, i32* %1494, align 4
  %1496 = ashr i32 %1495, 21
  %1497 = and i32 %1496, 2047
  %1498 = load i32, i32* %33, align 4
  %1499 = load i32, i32* %33, align 4
  %1500 = sext i32 %1499 to i64
  %1501 = getelementptr inbounds i32, i32* %67, i64 %1500
  %1502 = load i32, i32* %1501, align 4
  %1503 = ashr i32 %1502, 21
  %1504 = and i32 %1503, 2047
  %1505 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1488, i32 %1489, i32 %1490, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %1491, i32 %1497, i32 %1498, i32 %1504)
  br label %1506

1506:                                             ; preds = %1487
  %1507 = load i32, i32* %33, align 4
  %1508 = add nsw i32 %1507, 1
  store i32 %1508, i32* %33, align 4
  br label %1483

1509:                                             ; preds = %1483
  store i32 0, i32* %33, align 4
  br label %1510

1510:                                             ; preds = %1590, %1509
  %1511 = load i32, i32* %33, align 4
  %1512 = load i32, i32* %20, align 4
  %1513 = icmp slt i32 %1511, %1512
  br i1 %1513, label %1514, label %1593

1514:                                             ; preds = %1510
  %1515 = load i32, i32* %33, align 4
  %1516 = add nsw i32 %1515, 1
  store i32 %1516, i32* %37, align 4
  br label %1517

1517:                                             ; preds = %1582, %1514
  %1518 = load i32, i32* %37, align 4
  %1519 = load i32, i32* %20, align 4
  %1520 = icmp slt i32 %1518, %1519
  br i1 %1520, label %1521, label %1585

1521:                                             ; preds = %1517
  %1522 = load i32, i32* %33, align 4
  %1523 = sext i32 %1522 to i64
  %1524 = getelementptr inbounds i32, i32* %64, i64 %1523
  %1525 = load i32, i32* %1524, align 4
  %1526 = ashr i32 %1525, 21
  %1527 = load i32, i32* %37, align 4
  %1528 = sext i32 %1527 to i64
  %1529 = getelementptr inbounds i32, i32* %64, i64 %1528
  %1530 = load i32, i32* %1529, align 4
  %1531 = ashr i32 %1530, 21
  %1532 = sub nsw i32 %1526, %1531
  store i32 %1532, i32* %38, align 4
  %1533 = load i32, i32* %38, align 4
  %1534 = icmp slt i32 %1533, 4
  br i1 %1534, label %1535, label %1581

1535:                                             ; preds = %1521
  %1536 = load i32, i32* %38, align 4
  %1537 = icmp sgt i32 %1536, -4
  br i1 %1537, label %1538, label %1581

1538:                                             ; preds = %1535
  %1539 = load i32, i32* %33, align 4
  %1540 = sext i32 %1539 to i64
  %1541 = getelementptr inbounds i32, i32* %67, i64 %1540
  %1542 = load i32, i32* %1541, align 4
  %1543 = ashr i32 %1542, 21
  %1544 = load i32, i32* %37, align 4
  %1545 = sext i32 %1544 to i64
  %1546 = getelementptr inbounds i32, i32* %67, i64 %1545
  %1547 = load i32, i32* %1546, align 4
  %1548 = ashr i32 %1547, 21
  %1549 = sub nsw i32 %1543, %1548
  store i32 %1549, i32* %39, align 4
  %1550 = load i32, i32* %39, align 4
  %1551 = icmp slt i32 %1550, 4
  br i1 %1551, label %1552, label %1580

1552:                                             ; preds = %1538
  %1553 = load i32, i32* %39, align 4
  %1554 = icmp sgt i32 %1553, -4
  br i1 %1554, label %1555, label %1580

1555:                                             ; preds = %1552
  %1556 = load i32, i32* %33, align 4
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds i32, i32* %64, i64 %1557
  %1559 = load i32, i32* %1558, align 4
  %1560 = ashr i32 %1559, 21
  %1561 = load i32, i32* %37, align 4
  %1562 = sext i32 %1561 to i64
  %1563 = getelementptr inbounds i32, i32* %64, i64 %1562
  %1564 = load i32, i32* %1563, align 4
  %1565 = ashr i32 %1564, 21
  %1566 = add nsw i32 %1560, %1565
  %1567 = sdiv i32 %1566, 2
  store i32 %1567, i32* %17, align 4
  %1568 = load i32, i32* %33, align 4
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds i32, i32* %67, i64 %1569
  %1571 = load i32, i32* %1570, align 4
  %1572 = ashr i32 %1571, 21
  %1573 = load i32, i32* %37, align 4
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds i32, i32* %67, i64 %1574
  %1576 = load i32, i32* %1575, align 4
  %1577 = ashr i32 %1576, 21
  %1578 = add nsw i32 %1572, %1577
  %1579 = sdiv i32 %1578, 2
  store i32 %1579, i32* %18, align 4
  store i32 1, i32* %41, align 4
  br label %1585

1580:                                             ; preds = %1552, %1538
  br label %1581

1581:                                             ; preds = %1580, %1535, %1521
  br label %1582

1582:                                             ; preds = %1581
  %1583 = load i32, i32* %37, align 4
  %1584 = add nsw i32 %1583, 1
  store i32 %1584, i32* %37, align 4
  br label %1517

1585:                                             ; preds = %1555, %1517
  %1586 = load i32, i32* %41, align 4
  %1587 = icmp eq i32 %1586, 1
  br i1 %1587, label %1588, label %1589

1588:                                             ; preds = %1585
  br label %1593

1589:                                             ; preds = %1585
  br label %1590

1590:                                             ; preds = %1589
  %1591 = load i32, i32* %33, align 4
  %1592 = add nsw i32 %1591, 1
  store i32 %1592, i32* %33, align 4
  br label %1510

1593:                                             ; preds = %1588, %1510
  %1594 = load i32, i32* %41, align 4
  %1595 = icmp eq i32 %1594, 1
  br i1 %1595, label %1596, label %1602

1596:                                             ; preds = %1593
  %1597 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1598 = load i32, i32* %4, align 4
  %1599 = load i32, i32* %17, align 4
  %1600 = load i32, i32* %18, align 4
  %1601 = call i32 @_rtl8821ae_iqk_rx_fill_iqc(%struct.ieee80211_hw* %1597, i32 %1598, i32 %1599, i32 %1600)
  br label %1606

1602:                                             ; preds = %1593
  %1603 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %1604 = load i32, i32* %4, align 4
  %1605 = call i32 @_rtl8821ae_iqk_rx_fill_iqc(%struct.ieee80211_hw* %1603, i32 %1604, i32 512, i32 0)
  br label %1606

1606:                                             ; preds = %1602, %1596
  br label %1608

1607:                                             ; preds = %1326
  br label %1608

1608:                                             ; preds = %1607, %1606, %1481, %1335
  %1609 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %1609)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_iqk_tx_fill_iqc(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl8821ae_iqk_rx_fill_iqc(%struct.ieee80211_hw*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
