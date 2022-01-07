; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"[BTCoex], ********** TDMA(on, %d) **********\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[BTCoex], ********** TDMA(off, %d) **********\0A\00", align 1
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@BTC_ANT_PATH_WIFI = common dso_local global i32 0, align 4
@BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8821a1ant_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %37 = load i32, i32* @COMP_BT_COEXIST, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35, %27
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %231

61:                                               ; preds = %51, %43
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %185

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  switch i32 %66, label %67 [
    i32 1, label %70
    i32 2, label %73
    i32 3, label %76
    i32 4, label %79
    i32 5, label %82
    i32 6, label %85
    i32 7, label %88
    i32 8, label %91
    i32 9, label %94
    i32 10, label %97
    i32 11, label %100
    i32 12, label %103
    i32 13, label %106
    i32 14, label %109
    i32 15, label %112
    i32 16, label %115
    i32 18, label %118
    i32 20, label %121
    i32 21, label %124
    i32 22, label %127
    i32 23, label %130
    i32 24, label %133
    i32 25, label %136
    i32 26, label %139
    i32 27, label %142
    i32 28, label %145
    i32 29, label %148
    i32 30, label %151
    i32 31, label %154
    i32 32, label %157
    i32 33, label %160
    i32 34, label %163
    i32 35, label %166
    i32 36, label %169
    i32 40, label %172
    i32 41, label %175
    i32 42, label %178
    i32 43, label %181
  ]

67:                                               ; preds = %65
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %69 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %68, i32 81, i32 26, i32 26, i32 0, i32 80)
  br label %184

70:                                               ; preds = %65
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %72 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %71, i32 81, i32 58, i32 3, i32 16, i32 80)
  store i32 11, i32* %10, align 4
  br label %184

73:                                               ; preds = %65
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %75 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %74, i32 81, i32 43, i32 3, i32 16, i32 80)
  store i32 14, i32* %10, align 4
  br label %184

76:                                               ; preds = %65
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %78 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %77, i32 81, i32 29, i32 29, i32 0, i32 16)
  br label %184

79:                                               ; preds = %65
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %81 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %80, i32 147, i32 21, i32 3, i32 20, i32 0)
  store i32 17, i32* %10, align 4
  br label %184

82:                                               ; preds = %65
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %84 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %83, i32 97, i32 21, i32 3, i32 17, i32 16)
  br label %184

85:                                               ; preds = %65
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %87 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %86, i32 97, i32 32, i32 3, i32 17, i32 19)
  br label %184

88:                                               ; preds = %65
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %90 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %89, i32 19, i32 12, i32 5, i32 0, i32 0)
  br label %184

91:                                               ; preds = %65
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %93 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %92, i32 147, i32 37, i32 3, i32 16, i32 0)
  br label %184

94:                                               ; preds = %65
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %96 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %95, i32 81, i32 33, i32 3, i32 16, i32 80)
  store i32 18, i32* %10, align 4
  br label %184

97:                                               ; preds = %65
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %99 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %98, i32 19, i32 10, i32 10, i32 0, i32 64)
  br label %184

100:                                              ; preds = %65
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %102 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %101, i32 81, i32 21, i32 3, i32 16, i32 80)
  store i32 20, i32* %10, align 4
  br label %184

103:                                              ; preds = %65
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %105 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %104, i32 81, i32 10, i32 10, i32 0, i32 80)
  br label %184

106:                                              ; preds = %65
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %108 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %107, i32 81, i32 18, i32 18, i32 0, i32 80)
  br label %184

109:                                              ; preds = %65
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %111 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %110, i32 81, i32 30, i32 3, i32 16, i32 20)
  br label %184

112:                                              ; preds = %65
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %114 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %113, i32 19, i32 10, i32 3, i32 8, i32 0)
  br label %184

115:                                              ; preds = %65
  %116 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %117 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %116, i32 147, i32 21, i32 3, i32 16, i32 0)
  store i32 18, i32* %10, align 4
  br label %184

118:                                              ; preds = %65
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %120 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %119, i32 147, i32 37, i32 3, i32 16, i32 0)
  store i32 14, i32* %10, align 4
  br label %184

121:                                              ; preds = %65
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %123 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %122, i32 97, i32 53, i32 3, i32 17, i32 16)
  br label %184

124:                                              ; preds = %65
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %126 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %125, i32 97, i32 37, i32 3, i32 17, i32 17)
  br label %184

127:                                              ; preds = %65
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %129 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %128, i32 97, i32 37, i32 3, i32 17, i32 16)
  br label %184

130:                                              ; preds = %65
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %132 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %131, i32 227, i32 37, i32 3, i32 49, i32 24)
  store i32 22, i32* %10, align 4
  br label %184

133:                                              ; preds = %65
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %135 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %134, i32 227, i32 21, i32 3, i32 49, i32 24)
  store i32 22, i32* %10, align 4
  br label %184

136:                                              ; preds = %65
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %138 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %137, i32 227, i32 10, i32 3, i32 49, i32 24)
  store i32 22, i32* %10, align 4
  br label %184

139:                                              ; preds = %65
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %141 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %140, i32 227, i32 10, i32 3, i32 49, i32 24)
  store i32 22, i32* %10, align 4
  br label %184

142:                                              ; preds = %65
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %144 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %143, i32 227, i32 37, i32 3, i32 49, i32 152)
  store i32 22, i32* %10, align 4
  br label %184

145:                                              ; preds = %65
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %147 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %146, i32 105, i32 37, i32 3, i32 49, i32 0)
  br label %184

148:                                              ; preds = %65
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %150 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %149, i32 171, i32 26, i32 26, i32 1, i32 16)
  br label %184

151:                                              ; preds = %65
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %153 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %152, i32 81, i32 48, i32 3, i32 16, i32 16)
  br label %184

154:                                              ; preds = %65
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %156 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %155, i32 211, i32 26, i32 26, i32 0, i32 88)
  br label %184

157:                                              ; preds = %65
  %158 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %159 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %158, i32 97, i32 53, i32 3, i32 17, i32 17)
  br label %184

160:                                              ; preds = %65
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %162 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %161, i32 163, i32 37, i32 3, i32 48, i32 144)
  br label %184

163:                                              ; preds = %65
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %165 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %164, i32 83, i32 26, i32 26, i32 0, i32 16)
  br label %184

166:                                              ; preds = %65
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %168 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %167, i32 99, i32 26, i32 26, i32 0, i32 16)
  br label %184

169:                                              ; preds = %65
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %171 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %170, i32 211, i32 18, i32 3, i32 20, i32 80)
  br label %184

172:                                              ; preds = %65
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %174 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %173, i32 35, i32 24, i32 0, i32 16, i32 36)
  br label %184

175:                                              ; preds = %65
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %177 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %176, i32 81, i32 21, i32 3, i32 17, i32 17)
  br label %184

178:                                              ; preds = %65
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %180 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %179, i32 81, i32 32, i32 3, i32 17, i32 17)
  br label %184

181:                                              ; preds = %65
  %182 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %183 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %182, i32 81, i32 48, i32 3, i32 16, i32 17)
  br label %184

184:                                              ; preds = %181, %178, %175, %172, %169, %166, %163, %160, %157, %154, %151, %148, %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67
  br label %213

185:                                              ; preds = %62
  %186 = load i32, i32* %8, align 4
  switch i32 %186, label %194 [
    i32 8, label %187
    i32 0, label %193
    i32 9, label %200
    i32 10, label %206
  ]

187:                                              ; preds = %185
  %188 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %189 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %188, i32 8, i32 0, i32 0, i32 0, i32 0)
  %190 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %191 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %192 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %190, i32 %191, i32 0, i32 0)
  br label %212

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %185, %193
  %195 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %196 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %195, i32 0, i32 0, i32 0, i32 0, i32 0)
  %197 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %198 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %199 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %197, i32 %198, i32 0, i32 0)
  br label %212

200:                                              ; preds = %185
  %201 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %202 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %201, i32 0, i32 0, i32 0, i32 0, i32 0)
  %203 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %204 = load i32, i32* @BTC_ANT_PATH_WIFI, align 4
  %205 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %203, i32 %204, i32 0, i32 0)
  br label %212

206:                                              ; preds = %185
  %207 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %208 = call i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist* %207, i32 0, i32 0, i32 0, i32 8, i32 0)
  %209 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %210 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %211 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %209, i32 %210, i32 0, i32 0)
  br label %212

212:                                              ; preds = %206, %200, %194, %187
  br label %213

213:                                              ; preds = %212, %184
  store i32 0, i32* %10, align 4
  %214 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %215 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %214, i32 0, i32 0
  %216 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %215, align 8
  %217 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %218 = load i32, i32* @BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE, align 4
  %219 = call i32 %216(%struct.btc_coexist* %217, i32 %218, i32* %10)
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %213, %60
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @btc8821a1ant_set_fw_ps_tdma(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
