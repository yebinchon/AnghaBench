; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_fw.c_rtl8723e_set_p2p_ps_offload_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_fw.c_rtl8723e_set_p2p_ps_offload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_ps_ctl = type { %struct.rtl_p2p_ps_info }
%struct.rtl_p2p_ps_info = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.rtl_hal = type { %struct.p2p_ps_offload_t }
%struct.p2p_ps_offload_t = type { i32, i32, i32, i32, i32, i32, i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"P2P_PS_DISABLE\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P2P_PS_ENABLE\0A\00", align 1
@REG_TSFTR = common dso_local global i32 0, align 4
@REG_DUAL_TSF_RST = common dso_local global i32 0, align 4
@P2P_ROLE_GO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"P2P_PS_SCAN\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"P2P_PS_SCAN_DONE\0A\00", align 1
@H2C_P2P_PS_OFFLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_set_p2p_ps_offload_cmd(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_ps_ctl*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca %struct.rtl_p2p_ps_info*, align 8
  %9 = alloca %struct.p2p_ps_offload_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %17)
  store %struct.rtl_ps_ctl* %18, %struct.rtl_ps_ctl** %6, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %7, align 8
  %22 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %23 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %22, i32 0, i32 0
  store %struct.rtl_p2p_ps_info* %23, %struct.rtl_p2p_ps_info** %8, align 8
  %24 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %25 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %24, i32 0, i32 0
  store %struct.p2p_ps_offload_t* %25, %struct.p2p_ps_offload_t** %9, align 8
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %211 [
    i32 131, label %27
    i32 130, label %34
    i32 129, label %195
    i32 128, label %202
  ]

27:                                               ; preds = %2
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = load i32, i32* @COMP_FW, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %33 = call i32 @memset(%struct.p2p_ps_offload_t* %32, i32 0, i32 28)
  br label %212

34:                                               ; preds = %2
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = load i32, i32* @COMP_FW, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = call i32 @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %45 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %47 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @rtl8723e_set_p2p_ctw_period_cmd(%struct.ieee80211_hw* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %34
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %157, %52
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %56 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %160

59:                                               ; preds = %53
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 4
  %63 = call i32 @rtl_write_byte(%struct.rtl_priv* %60, i32 1487, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %68 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %72

69:                                               ; preds = %59
  %70 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %71 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %74 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %75 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rtl_write_dword(%struct.rtl_priv* %73, i32 1504, i32 %80)
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %83 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %84 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rtl_write_dword(%struct.rtl_priv* %82, i32 1508, i32 %89)
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %92 = load i32, i32* @REG_TSFTR, align 4
  %93 = call i32 @rtl_read_dword(%struct.rtl_priv* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %95 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %12, align 4
  %101 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %102 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %144

109:                                              ; preds = %72
  br label %110

110:                                              ; preds = %142, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 51200
  %114 = icmp sle i32 %111, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %117 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %126 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 255
  br i1 %132, label %133, label %142

133:                                              ; preds = %115
  %134 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %135 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %133, %115
  br label %110

143:                                              ; preds = %110
  br label %144

144:                                              ; preds = %143, %72
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @rtl_write_dword(%struct.rtl_priv* %145, i32 1512, i32 %146)
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %149 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %150 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rtl_write_dword(%struct.rtl_priv* %148, i32 1516, i32 %155)
  br label %157

157:                                              ; preds = %144
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %53

160:                                              ; preds = %53
  %161 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %162 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %167 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %165, %160
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %172 = load i32, i32* @REG_DUAL_TSF_RST, align 4
  %173 = call i32 @BIT(i32 4)
  %174 = call i32 @rtl_write_byte(%struct.rtl_priv* %171, i32 %172, i32 %173)
  %175 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %176 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  %177 = load i32, i32* @P2P_ROLE_GO, align 4
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %177, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %170
  %184 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %185 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %184, i32 0, i32 4
  store i32 1, i32* %185, align 4
  %186 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %187 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %186, i32 0, i32 6
  store i32 0, i32* %187, align 4
  br label %191

188:                                              ; preds = %170
  %189 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %190 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %189, i32 0, i32 4
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %183
  %192 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %193 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %192, i32 0, i32 5
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %165
  br label %212

195:                                              ; preds = %2
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %197 = load i32, i32* @COMP_FW, align 4
  %198 = load i32, i32* @DBG_LOUD, align 4
  %199 = call i32 @RT_TRACE(%struct.rtl_priv* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %200 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %201 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %200, i32 0, i32 5
  store i32 1, i32* %201, align 4
  br label %212

202:                                              ; preds = %2
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %204 = load i32, i32* @COMP_FW, align 4
  %205 = load i32, i32* @DBG_LOUD, align 4
  %206 = call i32 @RT_TRACE(%struct.rtl_priv* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %207 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %208 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %207, i32 0, i32 5
  store i32 0, i32* %208, align 4
  %209 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %8, align 8
  %210 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %209, i32 0, i32 6
  store i32 130, i32* %210, align 4
  br label %212

211:                                              ; preds = %2
  br label %212

212:                                              ; preds = %211, %202, %195, %194, %27
  %213 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %214 = load i32, i32* @H2C_P2P_PS_OFFLOAD, align 4
  %215 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %9, align 8
  %216 = bitcast %struct.p2p_ps_offload_t* %215 to i32*
  %217 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %213, i32 %214, i32 1, i32* %216)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.p2p_ps_offload_t*, i32, i32) #1

declare dso_local i32 @rtl8723e_set_p2p_ctw_period_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
