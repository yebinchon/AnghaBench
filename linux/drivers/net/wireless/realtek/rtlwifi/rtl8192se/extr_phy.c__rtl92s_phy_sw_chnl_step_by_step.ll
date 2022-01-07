; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_sw_chnl_step_by_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_sw_chnl_step_by_step.c"
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
@.str = private unnamed_addr constant [42 x i8] c"rtl8192se: invalid channel for Zebra: %d\0A\00", align 1
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32*, i32*, i64*)* @_rtl92s_phy_sw_chnl_step_by_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_phy_sw_chnl_step_by_step(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32* %3, i64* %4) #0 {
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
  %46 = call i32 @_rtl92s_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %32, i32 %44, i32 %45, i32 131, i32 0, i32 0, i32 0)
  %47 = load i64, i64* %16, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %16, align 8
  %49 = trunc i64 %47 to i32
  %50 = load i32, i32* @MAX_PRECMD_CNT, align 4
  %51 = load i32, i32* @CMDID_END, align 4
  %52 = call i32 @_rtl92s_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %32, i32 %49, i32 %50, i32 %51, i32 0, i32 0, i32 0)
  store i64 0, i64* %18, align 8
  %53 = load i64, i64* %18, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %18, align 8
  %55 = trunc i64 %53 to i32
  %56 = load i32, i32* @MAX_POSTCMD_CNT, align 4
  %57 = load i32, i32* @CMDID_END, align 4
  %58 = call i32 @_rtl92s_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %35, i32 %55, i32 %56, i32 %57, i32 0, i32 0, i32 0)
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
  %68 = call i32 @WARN_ONCE(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* %20, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %20, align 8
  %71 = trunc i64 %69 to i32
  %72 = load i32, i32* @MAX_RFDEPENDCMD_CNT, align 4
  %73 = load i32, i32* @RF_CHNLBW, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @_rtl92s_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %38, i32 %71, i32 %72, i32 132, i32 %73, i32 %74, i32 10)
  %76 = load i64, i64* %20, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %20, align 8
  %78 = trunc i64 %76 to i32
  %79 = load i32, i32* @MAX_RFDEPENDCMD_CNT, align 4
  %80 = load i32, i32* @CMDID_END, align 4
  %81 = call i32 @_rtl92s_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %38, i32 %78, i32 %79, i32 %80, i32 0, i32 0, i32 0)
  br label %82

82:                                               ; preds = %200, %64
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
  br label %101

90:                                               ; preds = %82
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %38, i64 %93
  store %struct.swchnlcmd* %94, %struct.swchnlcmd** %21, align 8
  br label %101

95:                                               ; preds = %82
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %35, i64 %98
  store %struct.swchnlcmd* %99, %struct.swchnlcmd** %21, align 8
  br label %101

100:                                              ; preds = %82
  store i32 1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %209

101:                                              ; preds = %95, %90, %85
  %102 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %103 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CMDID_END, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 1, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %209

112:                                              ; preds = %107
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 0, i32* %116, align 4
  br label %200

117:                                              ; preds = %101
  %118 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %119 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %194 [
    i32 131, label %121
    i32 129, label %125
    i32 128, label %134
    i32 130, label %143
    i32 132, label %152
  ]

121:                                              ; preds = %117
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @rtl92s_phy_set_txpower(%struct.ieee80211_hw* %122, i32 %123)
  br label %199

125:                                              ; preds = %117
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %127 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %128 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %131 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @rtl_write_dword(%struct.rtl_priv* %126, i32 %129, i32 %132)
  br label %199

134:                                              ; preds = %117
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %136 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %137 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %140 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @rtl_write_word(%struct.rtl_priv* %135, i32 %138, i32 %141)
  br label %199

143:                                              ; preds = %117
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %145 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %146 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %149 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rtl_write_byte(%struct.rtl_priv* %144, i32 %147, i32 %150)
  br label %199

152:                                              ; preds = %117
  store i32 0, i32* %22, align 4
  br label %153

153:                                              ; preds = %190, %152
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %153
  %158 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %159 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, -1024
  %166 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %167 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %165, %168
  %170 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %171 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %22, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %177 = load i32, i32* %22, align 4
  %178 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %179 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %182 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %183 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %22, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %176, i32 %177, i32 %180, i32 %181, i32 %188)
  br label %190

190:                                              ; preds = %157
  %191 = load i32, i32* %22, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %22, align 4
  br label %153

193:                                              ; preds = %153
  br label %199

194:                                              ; preds = %117
  %195 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %196 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %194, %193, %143, %134, %125, %121
  br label %201

200:                                              ; preds = %112
  br i1 true, label %82, label %201

201:                                              ; preds = %200, %199
  %202 = load %struct.swchnlcmd*, %struct.swchnlcmd** %21, align 8
  %203 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %11, align 8
  store i64 %204, i64* %205, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %209

209:                                              ; preds = %201, %111, %100
  %210 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_rtl92s_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @rtl92s_phy_set_txpower(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
