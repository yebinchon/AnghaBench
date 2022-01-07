; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_sw_chnl_step_by_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c__rtl92c_phy_sw_chnl_step_by_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32* }
%struct.swchnlcmd = type { i32, i32, i64, i32 }

@MAX_PRECMD_CNT = common dso_local global i32 0, align 4
@MAX_POSTCMD_CNT = common dso_local global i32 0, align 4
@MAX_RFDEPENDCMD_CNT = common dso_local global i32 0, align 4
@CMDID_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"rtl8192c-common: illegal channel for Zebra: %d\0A\00", align 1
@RF_CHNLBW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid 'stage' = %d, Check it!\0A\00", align 1
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl92c_phy_sw_chnl_step_by_step(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca %struct.rtl_phy*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.swchnlcmd*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %12, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  store %struct.rtl_phy* %28, %struct.rtl_phy** %13, align 8
  %29 = load i32, i32* @MAX_PRECMD_CNT, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca %struct.swchnlcmd, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = load i32, i32* @MAX_POSTCMD_CNT, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca %struct.swchnlcmd, i64 %34, align 16
  store i64 %34, i64* %17, align 8
  %36 = load i32, i32* @MAX_RFDEPENDCMD_CNT, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca %struct.swchnlcmd, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  store %struct.swchnlcmd* null, %struct.swchnlcmd** %21, align 8
  %39 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %40 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %23, align 4
  store i64 0, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %16, align 8
  %44 = trunc i64 %42 to i32
  %45 = load i32, i32* @MAX_PRECMD_CNT, align 4
  %46 = call i32 @_rtl92c_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %32, i32 %44, i32 %45, i32 131, i32 0, i32 0, i32 0)
  %47 = load i64, i64* %16, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %16, align 8
  %49 = trunc i64 %47 to i32
  %50 = load i32, i32* @MAX_PRECMD_CNT, align 4
  %51 = load i32, i32* @CMDID_END, align 4
  %52 = call i32 @_rtl92c_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %32, i32 %49, i32 %50, i32 %51, i32 0, i32 0, i32 0)
  store i64 0, i64* %18, align 8
  %53 = load i64, i64* %18, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %18, align 8
  %55 = trunc i64 %53 to i32
  %56 = load i32, i32* @MAX_POSTCMD_CNT, align 4
  %57 = load i32, i32* @CMDID_END, align 4
  %58 = call i32 @_rtl92c_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %35, i32 %55, i32 %56, i32 %57, i32 0, i32 0, i32 0)
  store i64 0, i64* %20, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %5
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 14
  br label %64

64:                                               ; preds = %61, %5
  %65 = phi i1 [ true, %5 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @WARN_ONCE(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* %20, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %20, align 8
  %71 = trunc i64 %69 to i32
  %72 = load i32, i32* @MAX_RFDEPENDCMD_CNT, align 4
  %73 = load i32, i32* @RF_CHNLBW, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @_rtl92c_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %38, i32 %71, i32 %72, i32 132, i32 %73, i32 %74, i32 10)
  %76 = load i64, i64* %20, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %20, align 8
  %78 = trunc i64 %76 to i32
  %79 = load i32, i32* @MAX_RFDEPENDCMD_CNT, align 4
  %80 = load i32, i32* @CMDID_END, align 4
  %81 = call i32 @_rtl92c_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %38, i32 %78, i32 %79, i32 %80, i32 0, i32 0, i32 0)
  br label %82

82:                                               ; preds = %209, %64
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %100 [
    i32 0, label %85
    i32 1, label %90
    i32 2, label %95
  ]

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %32, i64 %88
  store %struct.swchnlcmd* %89, %struct.swchnlcmd** %21, align 8
  br label %104

90:                                               ; preds = %82
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %38, i64 %93
  store %struct.swchnlcmd* %94, %struct.swchnlcmd** %21, align 8
  br label %104

95:                                               ; preds = %82
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %35, i64 %98
  store %struct.swchnlcmd* %99, %struct.swchnlcmd** %21, align 8
  br label %104

100:                                              ; preds = %82
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %218

104:                                              ; preds = %95, %90, %85
  %105 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %106 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CMDID_END, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %218

115:                                              ; preds = %110
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32*, i32** %10, align 8
  store i32 0, i32* %119, align 4
  br label %209

120:                                              ; preds = %104
  %121 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %122 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %200 [
    i32 131, label %124
    i32 129, label %128
    i32 128, label %137
    i32 130, label %146
    i32 132, label %155
  ]

124:                                              ; preds = %120
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw* %125, i32 %126)
  br label %208

128:                                              ; preds = %120
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %130 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %131 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %134 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rtl_write_dword(%struct.rtl_priv* %129, i32 %132, i32 %135)
  br label %208

137:                                              ; preds = %120
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %139 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %140 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %143 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @rtl_write_word(%struct.rtl_priv* %138, i32 %141, i32 %144)
  br label %208

146:                                              ; preds = %120
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %148 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %149 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %152 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @rtl_write_byte(%struct.rtl_priv* %147, i32 %150, i32 %153)
  br label %208

155:                                              ; preds = %120
  store i32 0, i32* %22, align 4
  br label %156

156:                                              ; preds = %193, %155
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %23, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %196

160:                                              ; preds = %156
  %161 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %162 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %22, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, -1024
  %169 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %170 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %168, %171
  %173 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %174 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %22, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %180 = load i32, i32* %22, align 4
  %181 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %182 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %185 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %186 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %179, i32 %180, i32 %183, i32 %184, i32 %191)
  br label %193

193:                                              ; preds = %160
  %194 = load i32, i32* %22, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %22, align 4
  br label %156

196:                                              ; preds = %156
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @_rtl92c_phy_sw_rf_seting(%struct.ieee80211_hw* %197, i32 %198)
  br label %208

200:                                              ; preds = %120
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %202 = load i32, i32* @COMP_ERR, align 4
  %203 = load i32, i32* @DBG_LOUD, align 4
  %204 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %205 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @RT_TRACE(%struct.rtl_priv* %201, i32 %202, i32 %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %200, %196, %146, %137, %128, %124
  br label %210

209:                                              ; preds = %115
  br i1 true, label %82, label %210

210:                                              ; preds = %209, %208
  %211 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %212 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** %11, align 8
  store i64 %213, i64* %214, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %218

218:                                              ; preds = %210, %114, %100
  %219 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_rtl92c_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_sw_rf_seting(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
