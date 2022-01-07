; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_get_rate_values_of_txpwr_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_get_rate_values_of_txpwr_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@DESC_RATE6M = common dso_local global i32 0, align 4
@DESC_RATE9M = common dso_local global i32 0, align 4
@DESC_RATE12M = common dso_local global i32 0, align 4
@DESC_RATE18M = common dso_local global i32 0, align 4
@DESC_RATE24M = common dso_local global i32 0, align 4
@DESC_RATE36M = common dso_local global i32 0, align 4
@DESC_RATE48M = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@DESC_RATE1M = common dso_local global i32 0, align 4
@DESC_RATE2M = common dso_local global i32 0, align 4
@DESC_RATE5_5M = common dso_local global i32 0, align 4
@DESC_RATE11M = common dso_local global i32 0, align 4
@DESC_RATEMCS0 = common dso_local global i32 0, align 4
@DESC_RATEMCS1 = common dso_local global i32 0, align 4
@DESC_RATEMCS2 = common dso_local global i32 0, align 4
@DESC_RATEMCS3 = common dso_local global i32 0, align 4
@DESC_RATEMCS4 = common dso_local global i32 0, align 4
@DESC_RATEMCS5 = common dso_local global i32 0, align 4
@DESC_RATEMCS6 = common dso_local global i32 0, align 4
@DESC_RATEMCS7 = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i32 0, align 4
@DESC_RATEMCS9 = common dso_local global i32 0, align 4
@DESC_RATEMCS10 = common dso_local global i32 0, align 4
@DESC_RATEMCS11 = common dso_local global i32 0, align 4
@DESC_RATEMCS12 = common dso_local global i32 0, align 4
@DESC_RATEMCS13 = common dso_local global i32 0, align 4
@DESC_RATEMCS14 = common dso_local global i32 0, align 4
@DESC_RATEMCS15 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS0 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS1 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS2 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS3 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS4 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS5 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS6 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS9 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS0 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS1 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS2 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS3 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS4 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS5 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS6 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS9 = common dso_local global i32 0, align 4
@DESC_RATEMCS16 = common dso_local global i32 0, align 4
@DESC_RATEMCS17 = common dso_local global i32 0, align 4
@DESC_RATEMCS18 = common dso_local global i32 0, align 4
@DESC_RATEMCS19 = common dso_local global i32 0, align 4
@DESC_RATEMCS20 = common dso_local global i32 0, align 4
@DESC_RATEMCS21 = common dso_local global i32 0, align 4
@DESC_RATEMCS22 = common dso_local global i32 0, align 4
@DESC_RATEMCS23 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS0 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS1 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS2 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS3 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS4 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS5 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS6 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT3SS_MCS9 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid tx power index addr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32, i32*, i32*, i32*)* @rtw_phy_get_rate_values_of_txpwr_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_get_rate_values_of_txpwr_by_rate(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.rtw_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %783 [
    i32 3584, label %17
    i32 2096, label %17
    i32 3588, label %47
    i32 2100, label %47
    i32 3592, label %77
    i32 2156, label %86
    i32 3600, label %131
    i32 2108, label %131
    i32 3604, label %161
    i32 2120, label %161
    i32 3608, label %191
    i32 2124, label %191
    i32 3612, label %221
    i32 2152, label %221
    i32 2104, label %251
    i32 3104, label %279
    i32 3616, label %279
    i32 6176, label %279
    i32 6688, label %279
    i32 3108, label %309
    i32 3620, label %309
    i32 6180, label %309
    i32 6692, label %309
    i32 3112, label %339
    i32 3624, label %339
    i32 6184, label %339
    i32 6696, label %339
    i32 3116, label %369
    i32 3628, label %369
    i32 6188, label %369
    i32 6700, label %369
    i32 3120, label %399
    i32 3632, label %399
    i32 6192, label %399
    i32 6704, label %399
    i32 3124, label %429
    i32 3636, label %429
    i32 6196, label %429
    i32 6708, label %429
    i32 3128, label %459
    i32 3640, label %459
    i32 6200, label %459
    i32 6712, label %459
    i32 3132, label %489
    i32 3644, label %489
    i32 6204, label %489
    i32 6716, label %489
    i32 3136, label %519
    i32 3648, label %519
    i32 6208, label %519
    i32 6720, label %519
    i32 3140, label %549
    i32 3652, label %549
    i32 6212, label %549
    i32 6724, label %549
    i32 3144, label %579
    i32 3656, label %579
    i32 6216, label %579
    i32 6728, label %579
    i32 3148, label %609
    i32 3660, label %609
    i32 6220, label %609
    i32 6732, label %609
    i32 3288, label %639
    i32 3800, label %639
    i32 6360, label %639
    i32 6872, label %639
    i32 3292, label %669
    i32 3804, label %669
    i32 6364, label %669
    i32 6876, label %669
    i32 3296, label %699
    i32 3808, label %699
    i32 6368, label %699
    i32 6880, label %699
    i32 3300, label %729
    i32 3812, label %729
    i32 6372, label %729
    i32 6884, label %729
    i32 3304, label %759
    i32 3816, label %759
    i32 6376, label %759
    i32 6888, label %759
  ]

17:                                               ; preds = %7, %7
  %18 = load i32, i32* @DESC_RATE6M, align 4
  %19 = load i32*, i32** %12, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DESC_RATE9M, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DESC_RATE12M, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DESC_RATE18M, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %42, %17
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load i32*, i32** %14, align 8
  store i32 4, i32* %46, align 4
  br label %787

47:                                               ; preds = %7, %7
  %48 = load i32, i32* @DESC_RATE24M, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DESC_RATE36M, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DESC_RATE48M, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @DESC_RATE54M, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %72, %47
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load i32*, i32** %14, align 8
  store i32 4, i32* %76, align 4
  br label %787

77:                                               ; preds = %7
  %78 = load i32, i32* @DESC_RATE1M, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @bcd_to_dec_pwr_by_rate(i32 %81, i32 1)
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %14, align 8
  store i32 1, i32* %85, align 4
  br label %787

86:                                               ; preds = %7
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, -256
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = load i32, i32* @DESC_RATE2M, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @DESC_RATE5_5M, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DESC_RATE11M, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %96, i32* %98, align 4
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %112, %89
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load i32*, i32** %14, align 8
  store i32 3, i32* %116, align 4
  br label %130

117:                                              ; preds = %86
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* @DESC_RATE11M, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @bcd_to_dec_pwr_by_rate(i32 %124, i32 0)
  %126 = load i32*, i32** %13, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** %14, align 8
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %117
  br label %130

130:                                              ; preds = %129, %115
  br label %787

131:                                              ; preds = %7, %7
  %132 = load i32, i32* @DESC_RATEMCS0, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @DESC_RATEMCS1, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @DESC_RATEMCS2, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @DESC_RATEMCS3, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  store i32 %141, i32* %143, align 4
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %156, %131
  %145 = load i32, i32* %15, align 4
  %146 = icmp slt i32 %145, 4
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %148, i32 %149, i32 %150)
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %144

159:                                              ; preds = %144
  %160 = load i32*, i32** %14, align 8
  store i32 4, i32* %160, align 4
  br label %787

161:                                              ; preds = %7, %7
  %162 = load i32, i32* @DESC_RATEMCS4, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @DESC_RATEMCS5, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @DESC_RATEMCS6, align 4
  %169 = load i32*, i32** %12, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @DESC_RATEMCS7, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  store i32 %171, i32* %173, align 4
  store i32 0, i32* %15, align 4
  br label %174

174:                                              ; preds = %186, %161
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 4
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %178, i32 %179, i32 %180)
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %177
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %174

189:                                              ; preds = %174
  %190 = load i32*, i32** %14, align 8
  store i32 4, i32* %190, align 4
  br label %787

191:                                              ; preds = %7, %7
  %192 = load i32, i32* @DESC_RATEMCS8, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @DESC_RATEMCS9, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @DESC_RATEMCS10, align 4
  %199 = load i32*, i32** %12, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @DESC_RATEMCS11, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  store i32 %201, i32* %203, align 4
  store i32 0, i32* %15, align 4
  br label %204

204:                                              ; preds = %216, %191
  %205 = load i32, i32* %15, align 4
  %206 = icmp slt i32 %205, 4
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %208, i32 %209, i32 %210)
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  br label %216

216:                                              ; preds = %207
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %204

219:                                              ; preds = %204
  %220 = load i32*, i32** %14, align 8
  store i32 4, i32* %220, align 4
  br label %787

221:                                              ; preds = %7, %7
  %222 = load i32, i32* @DESC_RATEMCS12, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @DESC_RATEMCS13, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @DESC_RATEMCS14, align 4
  %229 = load i32*, i32** %12, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 2
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @DESC_RATEMCS15, align 4
  %232 = load i32*, i32** %12, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  store i32 %231, i32* %233, align 4
  store i32 0, i32* %15, align 4
  br label %234

234:                                              ; preds = %246, %221
  %235 = load i32, i32* %15, align 4
  %236 = icmp slt i32 %235, 4
  br i1 %236, label %237, label %249

237:                                              ; preds = %234
  %238 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %238, i32 %239, i32 %240)
  %242 = load i32*, i32** %13, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %237
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %234

249:                                              ; preds = %234
  %250 = load i32*, i32** %14, align 8
  store i32 4, i32* %250, align 4
  br label %787

251:                                              ; preds = %7
  %252 = load i32, i32* @DESC_RATE1M, align 4
  %253 = load i32*, i32** %12, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @DESC_RATE2M, align 4
  %256 = load i32*, i32** %12, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* @DESC_RATE5_5M, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  store i32 %258, i32* %260, align 4
  store i32 1, i32* %15, align 4
  br label %261

261:                                              ; preds = %274, %251
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %262, 4
  br i1 %263, label %264, label %277

264:                                              ; preds = %261
  %265 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %265, i32 %266, i32 %267)
  %269 = load i32*, i32** %13, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sub nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  store i32 %268, i32* %273, align 4
  br label %274

274:                                              ; preds = %264
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %15, align 4
  br label %261

277:                                              ; preds = %261
  %278 = load i32*, i32** %14, align 8
  store i32 3, i32* %278, align 4
  br label %787

279:                                              ; preds = %7, %7, %7, %7
  %280 = load i32, i32* @DESC_RATE1M, align 4
  %281 = load i32*, i32** %12, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* @DESC_RATE2M, align 4
  %284 = load i32*, i32** %12, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* @DESC_RATE5_5M, align 4
  %287 = load i32*, i32** %12, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* @DESC_RATE11M, align 4
  %290 = load i32*, i32** %12, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 3
  store i32 %289, i32* %291, align 4
  store i32 0, i32* %15, align 4
  br label %292

292:                                              ; preds = %304, %279
  %293 = load i32, i32* %15, align 4
  %294 = icmp slt i32 %293, 4
  br i1 %294, label %295, label %307

295:                                              ; preds = %292
  %296 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %15, align 4
  %299 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %296, i32 %297, i32 %298)
  %300 = load i32*, i32** %13, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %299, i32* %303, align 4
  br label %304

304:                                              ; preds = %295
  %305 = load i32, i32* %15, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %15, align 4
  br label %292

307:                                              ; preds = %292
  %308 = load i32*, i32** %14, align 8
  store i32 4, i32* %308, align 4
  br label %787

309:                                              ; preds = %7, %7, %7, %7
  %310 = load i32, i32* @DESC_RATE6M, align 4
  %311 = load i32*, i32** %12, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* @DESC_RATE9M, align 4
  %314 = load i32*, i32** %12, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* @DESC_RATE12M, align 4
  %317 = load i32*, i32** %12, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  store i32 %316, i32* %318, align 4
  %319 = load i32, i32* @DESC_RATE18M, align 4
  %320 = load i32*, i32** %12, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 3
  store i32 %319, i32* %321, align 4
  store i32 0, i32* %15, align 4
  br label %322

322:                                              ; preds = %334, %309
  %323 = load i32, i32* %15, align 4
  %324 = icmp slt i32 %323, 4
  br i1 %324, label %325, label %337

325:                                              ; preds = %322
  %326 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %15, align 4
  %329 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %326, i32 %327, i32 %328)
  %330 = load i32*, i32** %13, align 8
  %331 = load i32, i32* %15, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 %329, i32* %333, align 4
  br label %334

334:                                              ; preds = %325
  %335 = load i32, i32* %15, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %322

337:                                              ; preds = %322
  %338 = load i32*, i32** %14, align 8
  store i32 4, i32* %338, align 4
  br label %787

339:                                              ; preds = %7, %7, %7, %7
  %340 = load i32, i32* @DESC_RATE24M, align 4
  %341 = load i32*, i32** %12, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* @DESC_RATE36M, align 4
  %344 = load i32*, i32** %12, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* @DESC_RATE48M, align 4
  %347 = load i32*, i32** %12, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* @DESC_RATE54M, align 4
  %350 = load i32*, i32** %12, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 3
  store i32 %349, i32* %351, align 4
  store i32 0, i32* %15, align 4
  br label %352

352:                                              ; preds = %364, %339
  %353 = load i32, i32* %15, align 4
  %354 = icmp slt i32 %353, 4
  br i1 %354, label %355, label %367

355:                                              ; preds = %352
  %356 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %15, align 4
  %359 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %356, i32 %357, i32 %358)
  %360 = load i32*, i32** %13, align 8
  %361 = load i32, i32* %15, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  store i32 %359, i32* %363, align 4
  br label %364

364:                                              ; preds = %355
  %365 = load i32, i32* %15, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %15, align 4
  br label %352

367:                                              ; preds = %352
  %368 = load i32*, i32** %14, align 8
  store i32 4, i32* %368, align 4
  br label %787

369:                                              ; preds = %7, %7, %7, %7
  %370 = load i32, i32* @DESC_RATEMCS0, align 4
  %371 = load i32*, i32** %12, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  store i32 %370, i32* %372, align 4
  %373 = load i32, i32* @DESC_RATEMCS1, align 4
  %374 = load i32*, i32** %12, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  store i32 %373, i32* %375, align 4
  %376 = load i32, i32* @DESC_RATEMCS2, align 4
  %377 = load i32*, i32** %12, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 2
  store i32 %376, i32* %378, align 4
  %379 = load i32, i32* @DESC_RATEMCS3, align 4
  %380 = load i32*, i32** %12, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 3
  store i32 %379, i32* %381, align 4
  store i32 0, i32* %15, align 4
  br label %382

382:                                              ; preds = %394, %369
  %383 = load i32, i32* %15, align 4
  %384 = icmp slt i32 %383, 4
  br i1 %384, label %385, label %397

385:                                              ; preds = %382
  %386 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %15, align 4
  %389 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %386, i32 %387, i32 %388)
  %390 = load i32*, i32** %13, align 8
  %391 = load i32, i32* %15, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %389, i32* %393, align 4
  br label %394

394:                                              ; preds = %385
  %395 = load i32, i32* %15, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %15, align 4
  br label %382

397:                                              ; preds = %382
  %398 = load i32*, i32** %14, align 8
  store i32 4, i32* %398, align 4
  br label %787

399:                                              ; preds = %7, %7, %7, %7
  %400 = load i32, i32* @DESC_RATEMCS4, align 4
  %401 = load i32*, i32** %12, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 0
  store i32 %400, i32* %402, align 4
  %403 = load i32, i32* @DESC_RATEMCS5, align 4
  %404 = load i32*, i32** %12, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* @DESC_RATEMCS6, align 4
  %407 = load i32*, i32** %12, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 2
  store i32 %406, i32* %408, align 4
  %409 = load i32, i32* @DESC_RATEMCS7, align 4
  %410 = load i32*, i32** %12, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 3
  store i32 %409, i32* %411, align 4
  store i32 0, i32* %15, align 4
  br label %412

412:                                              ; preds = %424, %399
  %413 = load i32, i32* %15, align 4
  %414 = icmp slt i32 %413, 4
  br i1 %414, label %415, label %427

415:                                              ; preds = %412
  %416 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %417 = load i32, i32* %11, align 4
  %418 = load i32, i32* %15, align 4
  %419 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %416, i32 %417, i32 %418)
  %420 = load i32*, i32** %13, align 8
  %421 = load i32, i32* %15, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  store i32 %419, i32* %423, align 4
  br label %424

424:                                              ; preds = %415
  %425 = load i32, i32* %15, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %15, align 4
  br label %412

427:                                              ; preds = %412
  %428 = load i32*, i32** %14, align 8
  store i32 4, i32* %428, align 4
  br label %787

429:                                              ; preds = %7, %7, %7, %7
  %430 = load i32, i32* @DESC_RATEMCS8, align 4
  %431 = load i32*, i32** %12, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 0
  store i32 %430, i32* %432, align 4
  %433 = load i32, i32* @DESC_RATEMCS9, align 4
  %434 = load i32*, i32** %12, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 1
  store i32 %433, i32* %435, align 4
  %436 = load i32, i32* @DESC_RATEMCS10, align 4
  %437 = load i32*, i32** %12, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 2
  store i32 %436, i32* %438, align 4
  %439 = load i32, i32* @DESC_RATEMCS11, align 4
  %440 = load i32*, i32** %12, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 3
  store i32 %439, i32* %441, align 4
  store i32 0, i32* %15, align 4
  br label %442

442:                                              ; preds = %454, %429
  %443 = load i32, i32* %15, align 4
  %444 = icmp slt i32 %443, 4
  br i1 %444, label %445, label %457

445:                                              ; preds = %442
  %446 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %447 = load i32, i32* %11, align 4
  %448 = load i32, i32* %15, align 4
  %449 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %446, i32 %447, i32 %448)
  %450 = load i32*, i32** %13, align 8
  %451 = load i32, i32* %15, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  store i32 %449, i32* %453, align 4
  br label %454

454:                                              ; preds = %445
  %455 = load i32, i32* %15, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %15, align 4
  br label %442

457:                                              ; preds = %442
  %458 = load i32*, i32** %14, align 8
  store i32 4, i32* %458, align 4
  br label %787

459:                                              ; preds = %7, %7, %7, %7
  %460 = load i32, i32* @DESC_RATEMCS12, align 4
  %461 = load i32*, i32** %12, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 0
  store i32 %460, i32* %462, align 4
  %463 = load i32, i32* @DESC_RATEMCS13, align 4
  %464 = load i32*, i32** %12, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 1
  store i32 %463, i32* %465, align 4
  %466 = load i32, i32* @DESC_RATEMCS14, align 4
  %467 = load i32*, i32** %12, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 2
  store i32 %466, i32* %468, align 4
  %469 = load i32, i32* @DESC_RATEMCS15, align 4
  %470 = load i32*, i32** %12, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 3
  store i32 %469, i32* %471, align 4
  store i32 0, i32* %15, align 4
  br label %472

472:                                              ; preds = %484, %459
  %473 = load i32, i32* %15, align 4
  %474 = icmp slt i32 %473, 4
  br i1 %474, label %475, label %487

475:                                              ; preds = %472
  %476 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %477 = load i32, i32* %11, align 4
  %478 = load i32, i32* %15, align 4
  %479 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %476, i32 %477, i32 %478)
  %480 = load i32*, i32** %13, align 8
  %481 = load i32, i32* %15, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  store i32 %479, i32* %483, align 4
  br label %484

484:                                              ; preds = %475
  %485 = load i32, i32* %15, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %15, align 4
  br label %472

487:                                              ; preds = %472
  %488 = load i32*, i32** %14, align 8
  store i32 4, i32* %488, align 4
  br label %787

489:                                              ; preds = %7, %7, %7, %7
  %490 = load i32, i32* @DESC_RATEVHT1SS_MCS0, align 4
  %491 = load i32*, i32** %12, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 0
  store i32 %490, i32* %492, align 4
  %493 = load i32, i32* @DESC_RATEVHT1SS_MCS1, align 4
  %494 = load i32*, i32** %12, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  store i32 %493, i32* %495, align 4
  %496 = load i32, i32* @DESC_RATEVHT1SS_MCS2, align 4
  %497 = load i32*, i32** %12, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 2
  store i32 %496, i32* %498, align 4
  %499 = load i32, i32* @DESC_RATEVHT1SS_MCS3, align 4
  %500 = load i32*, i32** %12, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 3
  store i32 %499, i32* %501, align 4
  store i32 0, i32* %15, align 4
  br label %502

502:                                              ; preds = %514, %489
  %503 = load i32, i32* %15, align 4
  %504 = icmp slt i32 %503, 4
  br i1 %504, label %505, label %517

505:                                              ; preds = %502
  %506 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %507 = load i32, i32* %11, align 4
  %508 = load i32, i32* %15, align 4
  %509 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %506, i32 %507, i32 %508)
  %510 = load i32*, i32** %13, align 8
  %511 = load i32, i32* %15, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  store i32 %509, i32* %513, align 4
  br label %514

514:                                              ; preds = %505
  %515 = load i32, i32* %15, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %15, align 4
  br label %502

517:                                              ; preds = %502
  %518 = load i32*, i32** %14, align 8
  store i32 4, i32* %518, align 4
  br label %787

519:                                              ; preds = %7, %7, %7, %7
  %520 = load i32, i32* @DESC_RATEVHT1SS_MCS4, align 4
  %521 = load i32*, i32** %12, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 0
  store i32 %520, i32* %522, align 4
  %523 = load i32, i32* @DESC_RATEVHT1SS_MCS5, align 4
  %524 = load i32*, i32** %12, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 1
  store i32 %523, i32* %525, align 4
  %526 = load i32, i32* @DESC_RATEVHT1SS_MCS6, align 4
  %527 = load i32*, i32** %12, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 2
  store i32 %526, i32* %528, align 4
  %529 = load i32, i32* @DESC_RATEVHT1SS_MCS7, align 4
  %530 = load i32*, i32** %12, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 3
  store i32 %529, i32* %531, align 4
  store i32 0, i32* %15, align 4
  br label %532

532:                                              ; preds = %544, %519
  %533 = load i32, i32* %15, align 4
  %534 = icmp slt i32 %533, 4
  br i1 %534, label %535, label %547

535:                                              ; preds = %532
  %536 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %537 = load i32, i32* %11, align 4
  %538 = load i32, i32* %15, align 4
  %539 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %536, i32 %537, i32 %538)
  %540 = load i32*, i32** %13, align 8
  %541 = load i32, i32* %15, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  store i32 %539, i32* %543, align 4
  br label %544

544:                                              ; preds = %535
  %545 = load i32, i32* %15, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %15, align 4
  br label %532

547:                                              ; preds = %532
  %548 = load i32*, i32** %14, align 8
  store i32 4, i32* %548, align 4
  br label %787

549:                                              ; preds = %7, %7, %7, %7
  %550 = load i32, i32* @DESC_RATEVHT1SS_MCS8, align 4
  %551 = load i32*, i32** %12, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 0
  store i32 %550, i32* %552, align 4
  %553 = load i32, i32* @DESC_RATEVHT1SS_MCS9, align 4
  %554 = load i32*, i32** %12, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 1
  store i32 %553, i32* %555, align 4
  %556 = load i32, i32* @DESC_RATEVHT2SS_MCS0, align 4
  %557 = load i32*, i32** %12, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 2
  store i32 %556, i32* %558, align 4
  %559 = load i32, i32* @DESC_RATEVHT2SS_MCS1, align 4
  %560 = load i32*, i32** %12, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 3
  store i32 %559, i32* %561, align 4
  store i32 0, i32* %15, align 4
  br label %562

562:                                              ; preds = %574, %549
  %563 = load i32, i32* %15, align 4
  %564 = icmp slt i32 %563, 4
  br i1 %564, label %565, label %577

565:                                              ; preds = %562
  %566 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %567 = load i32, i32* %11, align 4
  %568 = load i32, i32* %15, align 4
  %569 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %566, i32 %567, i32 %568)
  %570 = load i32*, i32** %13, align 8
  %571 = load i32, i32* %15, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %570, i64 %572
  store i32 %569, i32* %573, align 4
  br label %574

574:                                              ; preds = %565
  %575 = load i32, i32* %15, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %15, align 4
  br label %562

577:                                              ; preds = %562
  %578 = load i32*, i32** %14, align 8
  store i32 4, i32* %578, align 4
  br label %787

579:                                              ; preds = %7, %7, %7, %7
  %580 = load i32, i32* @DESC_RATEVHT2SS_MCS2, align 4
  %581 = load i32*, i32** %12, align 8
  %582 = getelementptr inbounds i32, i32* %581, i64 0
  store i32 %580, i32* %582, align 4
  %583 = load i32, i32* @DESC_RATEVHT2SS_MCS3, align 4
  %584 = load i32*, i32** %12, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 1
  store i32 %583, i32* %585, align 4
  %586 = load i32, i32* @DESC_RATEVHT2SS_MCS4, align 4
  %587 = load i32*, i32** %12, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 2
  store i32 %586, i32* %588, align 4
  %589 = load i32, i32* @DESC_RATEVHT2SS_MCS5, align 4
  %590 = load i32*, i32** %12, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 3
  store i32 %589, i32* %591, align 4
  store i32 0, i32* %15, align 4
  br label %592

592:                                              ; preds = %604, %579
  %593 = load i32, i32* %15, align 4
  %594 = icmp slt i32 %593, 4
  br i1 %594, label %595, label %607

595:                                              ; preds = %592
  %596 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %597 = load i32, i32* %11, align 4
  %598 = load i32, i32* %15, align 4
  %599 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %596, i32 %597, i32 %598)
  %600 = load i32*, i32** %13, align 8
  %601 = load i32, i32* %15, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32* %600, i64 %602
  store i32 %599, i32* %603, align 4
  br label %604

604:                                              ; preds = %595
  %605 = load i32, i32* %15, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %15, align 4
  br label %592

607:                                              ; preds = %592
  %608 = load i32*, i32** %14, align 8
  store i32 4, i32* %608, align 4
  br label %787

609:                                              ; preds = %7, %7, %7, %7
  %610 = load i32, i32* @DESC_RATEVHT2SS_MCS6, align 4
  %611 = load i32*, i32** %12, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 0
  store i32 %610, i32* %612, align 4
  %613 = load i32, i32* @DESC_RATEVHT2SS_MCS7, align 4
  %614 = load i32*, i32** %12, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 1
  store i32 %613, i32* %615, align 4
  %616 = load i32, i32* @DESC_RATEVHT2SS_MCS8, align 4
  %617 = load i32*, i32** %12, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 2
  store i32 %616, i32* %618, align 4
  %619 = load i32, i32* @DESC_RATEVHT2SS_MCS9, align 4
  %620 = load i32*, i32** %12, align 8
  %621 = getelementptr inbounds i32, i32* %620, i64 3
  store i32 %619, i32* %621, align 4
  store i32 0, i32* %15, align 4
  br label %622

622:                                              ; preds = %634, %609
  %623 = load i32, i32* %15, align 4
  %624 = icmp slt i32 %623, 4
  br i1 %624, label %625, label %637

625:                                              ; preds = %622
  %626 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %627 = load i32, i32* %11, align 4
  %628 = load i32, i32* %15, align 4
  %629 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %626, i32 %627, i32 %628)
  %630 = load i32*, i32** %13, align 8
  %631 = load i32, i32* %15, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  store i32 %629, i32* %633, align 4
  br label %634

634:                                              ; preds = %625
  %635 = load i32, i32* %15, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %15, align 4
  br label %622

637:                                              ; preds = %622
  %638 = load i32*, i32** %14, align 8
  store i32 4, i32* %638, align 4
  br label %787

639:                                              ; preds = %7, %7, %7, %7
  %640 = load i32, i32* @DESC_RATEMCS16, align 4
  %641 = load i32*, i32** %12, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 0
  store i32 %640, i32* %642, align 4
  %643 = load i32, i32* @DESC_RATEMCS17, align 4
  %644 = load i32*, i32** %12, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 1
  store i32 %643, i32* %645, align 4
  %646 = load i32, i32* @DESC_RATEMCS18, align 4
  %647 = load i32*, i32** %12, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 2
  store i32 %646, i32* %648, align 4
  %649 = load i32, i32* @DESC_RATEMCS19, align 4
  %650 = load i32*, i32** %12, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 3
  store i32 %649, i32* %651, align 4
  store i32 0, i32* %15, align 4
  br label %652

652:                                              ; preds = %664, %639
  %653 = load i32, i32* %15, align 4
  %654 = icmp slt i32 %653, 4
  br i1 %654, label %655, label %667

655:                                              ; preds = %652
  %656 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %657 = load i32, i32* %11, align 4
  %658 = load i32, i32* %15, align 4
  %659 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %656, i32 %657, i32 %658)
  %660 = load i32*, i32** %13, align 8
  %661 = load i32, i32* %15, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32, i32* %660, i64 %662
  store i32 %659, i32* %663, align 4
  br label %664

664:                                              ; preds = %655
  %665 = load i32, i32* %15, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %15, align 4
  br label %652

667:                                              ; preds = %652
  %668 = load i32*, i32** %14, align 8
  store i32 4, i32* %668, align 4
  br label %787

669:                                              ; preds = %7, %7, %7, %7
  %670 = load i32, i32* @DESC_RATEMCS20, align 4
  %671 = load i32*, i32** %12, align 8
  %672 = getelementptr inbounds i32, i32* %671, i64 0
  store i32 %670, i32* %672, align 4
  %673 = load i32, i32* @DESC_RATEMCS21, align 4
  %674 = load i32*, i32** %12, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 1
  store i32 %673, i32* %675, align 4
  %676 = load i32, i32* @DESC_RATEMCS22, align 4
  %677 = load i32*, i32** %12, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 2
  store i32 %676, i32* %678, align 4
  %679 = load i32, i32* @DESC_RATEMCS23, align 4
  %680 = load i32*, i32** %12, align 8
  %681 = getelementptr inbounds i32, i32* %680, i64 3
  store i32 %679, i32* %681, align 4
  store i32 0, i32* %15, align 4
  br label %682

682:                                              ; preds = %694, %669
  %683 = load i32, i32* %15, align 4
  %684 = icmp slt i32 %683, 4
  br i1 %684, label %685, label %697

685:                                              ; preds = %682
  %686 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %687 = load i32, i32* %11, align 4
  %688 = load i32, i32* %15, align 4
  %689 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %686, i32 %687, i32 %688)
  %690 = load i32*, i32** %13, align 8
  %691 = load i32, i32* %15, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %690, i64 %692
  store i32 %689, i32* %693, align 4
  br label %694

694:                                              ; preds = %685
  %695 = load i32, i32* %15, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %15, align 4
  br label %682

697:                                              ; preds = %682
  %698 = load i32*, i32** %14, align 8
  store i32 4, i32* %698, align 4
  br label %787

699:                                              ; preds = %7, %7, %7, %7
  %700 = load i32, i32* @DESC_RATEVHT3SS_MCS0, align 4
  %701 = load i32*, i32** %12, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 0
  store i32 %700, i32* %702, align 4
  %703 = load i32, i32* @DESC_RATEVHT3SS_MCS1, align 4
  %704 = load i32*, i32** %12, align 8
  %705 = getelementptr inbounds i32, i32* %704, i64 1
  store i32 %703, i32* %705, align 4
  %706 = load i32, i32* @DESC_RATEVHT3SS_MCS2, align 4
  %707 = load i32*, i32** %12, align 8
  %708 = getelementptr inbounds i32, i32* %707, i64 2
  store i32 %706, i32* %708, align 4
  %709 = load i32, i32* @DESC_RATEVHT3SS_MCS3, align 4
  %710 = load i32*, i32** %12, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 3
  store i32 %709, i32* %711, align 4
  store i32 0, i32* %15, align 4
  br label %712

712:                                              ; preds = %724, %699
  %713 = load i32, i32* %15, align 4
  %714 = icmp slt i32 %713, 4
  br i1 %714, label %715, label %727

715:                                              ; preds = %712
  %716 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %717 = load i32, i32* %11, align 4
  %718 = load i32, i32* %15, align 4
  %719 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %716, i32 %717, i32 %718)
  %720 = load i32*, i32** %13, align 8
  %721 = load i32, i32* %15, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, i32* %720, i64 %722
  store i32 %719, i32* %723, align 4
  br label %724

724:                                              ; preds = %715
  %725 = load i32, i32* %15, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %15, align 4
  br label %712

727:                                              ; preds = %712
  %728 = load i32*, i32** %14, align 8
  store i32 4, i32* %728, align 4
  br label %787

729:                                              ; preds = %7, %7, %7, %7
  %730 = load i32, i32* @DESC_RATEVHT3SS_MCS4, align 4
  %731 = load i32*, i32** %12, align 8
  %732 = getelementptr inbounds i32, i32* %731, i64 0
  store i32 %730, i32* %732, align 4
  %733 = load i32, i32* @DESC_RATEVHT3SS_MCS5, align 4
  %734 = load i32*, i32** %12, align 8
  %735 = getelementptr inbounds i32, i32* %734, i64 1
  store i32 %733, i32* %735, align 4
  %736 = load i32, i32* @DESC_RATEVHT3SS_MCS6, align 4
  %737 = load i32*, i32** %12, align 8
  %738 = getelementptr inbounds i32, i32* %737, i64 2
  store i32 %736, i32* %738, align 4
  %739 = load i32, i32* @DESC_RATEVHT3SS_MCS7, align 4
  %740 = load i32*, i32** %12, align 8
  %741 = getelementptr inbounds i32, i32* %740, i64 3
  store i32 %739, i32* %741, align 4
  store i32 0, i32* %15, align 4
  br label %742

742:                                              ; preds = %754, %729
  %743 = load i32, i32* %15, align 4
  %744 = icmp slt i32 %743, 4
  br i1 %744, label %745, label %757

745:                                              ; preds = %742
  %746 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %747 = load i32, i32* %11, align 4
  %748 = load i32, i32* %15, align 4
  %749 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %746, i32 %747, i32 %748)
  %750 = load i32*, i32** %13, align 8
  %751 = load i32, i32* %15, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, i32* %750, i64 %752
  store i32 %749, i32* %753, align 4
  br label %754

754:                                              ; preds = %745
  %755 = load i32, i32* %15, align 4
  %756 = add nsw i32 %755, 1
  store i32 %756, i32* %15, align 4
  br label %742

757:                                              ; preds = %742
  %758 = load i32*, i32** %14, align 8
  store i32 4, i32* %758, align 4
  br label %787

759:                                              ; preds = %7, %7, %7, %7
  %760 = load i32, i32* @DESC_RATEVHT3SS_MCS8, align 4
  %761 = load i32*, i32** %12, align 8
  %762 = getelementptr inbounds i32, i32* %761, i64 0
  store i32 %760, i32* %762, align 4
  %763 = load i32, i32* @DESC_RATEVHT3SS_MCS9, align 4
  %764 = load i32*, i32** %12, align 8
  %765 = getelementptr inbounds i32, i32* %764, i64 1
  store i32 %763, i32* %765, align 4
  store i32 0, i32* %15, align 4
  br label %766

766:                                              ; preds = %778, %759
  %767 = load i32, i32* %15, align 4
  %768 = icmp slt i32 %767, 2
  br i1 %768, label %769, label %781

769:                                              ; preds = %766
  %770 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %771 = load i32, i32* %11, align 4
  %772 = load i32, i32* %15, align 4
  %773 = call i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev* %770, i32 %771, i32 %772)
  %774 = load i32*, i32** %13, align 8
  %775 = load i32, i32* %15, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, i32* %774, i64 %776
  store i32 %773, i32* %777, align 4
  br label %778

778:                                              ; preds = %769
  %779 = load i32, i32* %15, align 4
  %780 = add nsw i32 %779, 1
  store i32 %780, i32* %15, align 4
  br label %766

781:                                              ; preds = %766
  %782 = load i32*, i32** %14, align 8
  store i32 2, i32* %782, align 4
  br label %787

783:                                              ; preds = %7
  %784 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %785 = load i32, i32* %9, align 4
  %786 = call i32 @rtw_warn(%struct.rtw_dev* %784, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %785)
  br label %787

787:                                              ; preds = %783, %781, %757, %727, %697, %667, %637, %607, %577, %547, %517, %487, %457, %427, %397, %367, %337, %307, %277, %249, %219, %189, %159, %130, %77, %75, %45
  ret void
}

declare dso_local i32 @tbl_to_dec_pwr_by_rate(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @bcd_to_dec_pwr_by_rate(i32, i32) #1

declare dso_local i32 @rtw_warn(%struct.rtw_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
