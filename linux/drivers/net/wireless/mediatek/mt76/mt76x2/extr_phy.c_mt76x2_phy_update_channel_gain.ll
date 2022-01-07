; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_update_channel_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_update_channel_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8**, i32, i32, i8**, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@NL80211_CHAN_WIDTH_80 = common dso_local global i64 0, align 8
@RXO = common dso_local global i32 0, align 4
@AGC = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@MT_RX_STAT_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_phy_update_channel_gain(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %3, align 8
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %15, i32 0, i32 1
  %17 = call i32 @mt76_get_min_avg_rssi(%struct.TYPE_8__* %16)
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 -75, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = call i32 @mt76x02_get_rssi_gain_thresh(%struct.mt76x02_dev* %35)
  %37 = icmp sgt i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %44 = call i32 @mt76x02_get_low_rssi_gain_thresh(%struct.mt76x02_dev* %43)
  %45 = icmp sgt i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %38, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %30
  %54 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 2
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 2
  %61 = xor i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %53, %30
  %64 = phi i1 [ true, %30 ], [ %62, %53 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %68 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %74 = call i64 @mt76x02_phy_adjust_vga_gain(%struct.mt76x02_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %78 = call i32 @mt76x2_phy_set_gain_val(%struct.mt76x02_dev* %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %221

80:                                               ; preds = %63
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %82 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_CHAN_WIDTH_80, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %80
  %89 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %90 = load i32, i32* @RXO, align 4
  %91 = call i32 @MT_BBP(i32 %90, i32 14)
  %92 = call i32 @mt76_wr(%struct.mt76x02_dev* %89, i32 %91, i32 5636625)
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %94 = load i32, i32* @AGC, align 4
  %95 = call i32 @MT_BBP(i32 %94, i32 26)
  %96 = call i32 @mt76_rr(%struct.mt76x02_dev* %93, i32 %95)
  %97 = and i32 %96, -16
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, 3
  store i32 %102, i32* %10, align 4
  br label %106

103:                                              ; preds = %88
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, 5
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %108 = load i32, i32* @AGC, align 4
  %109 = call i32 @MT_BBP(i32 %108, i32 26)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @mt76_wr(%struct.mt76x02_dev* %107, i32 %109, i32 %110)
  br label %117

112:                                              ; preds = %80
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %114 = load i32, i32* @RXO, align 4
  %115 = call i32 @MT_BBP(i32 %114, i32 14)
  %116 = call i32 @mt76_wr(%struct.mt76x02_dev* %113, i32 %115, i32 5637155)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %119 = call i64 @mt76x2_has_ext_lna(%struct.mt76x02_dev* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8* inttoptr (i64 10 to i8*), i8** %4, align 8
  br label %123

122:                                              ; preds = %117
  store i8* inttoptr (i64 14 to i8*), i8** %4, align 8
  br label %123

123:                                              ; preds = %122, %121
  store i32 555820588, i32* %7, align 4
  %124 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %125 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i32 286332182, i32* %6, align 4
  br label %150

134:                                              ; preds = %123
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 134744072, i32* %7, align 4
  store i32 134744072, i32* %6, align 4
  br label %149

138:                                              ; preds = %134
  %139 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %140 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NL80211_CHAN_WIDTH_80, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  store i32 269488148, i32* %6, align 4
  br label %148

147:                                              ; preds = %138
  store i32 286331158, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %146
  br label %149

149:                                              ; preds = %148, %137
  br label %150

150:                                              ; preds = %149, %133
  %151 = load i32, i32* %9, align 4
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %155 = load i32, i32* @RXO, align 4
  %156 = call i32 @MT_BBP(i32 %155, i32 18)
  %157 = call i32 @mt76_wr(%struct.mt76x02_dev* %154, i32 %156, i32 -268392048)
  %158 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %159 = load i32, i32* @AGC, align 4
  %160 = call i32 @MT_BBP(i32 %159, i32 35)
  %161 = call i32 @mt76_wr(%struct.mt76x02_dev* %158, i32 %160, i32 134744072)
  %162 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %163 = load i32, i32* @AGC, align 4
  %164 = call i32 @MT_BBP(i32 %163, i32 37)
  %165 = call i32 @mt76_wr(%struct.mt76x02_dev* %162, i32 %164, i32 134744072)
  %166 = load i8*, i8** %4, align 8
  store i8* %166, i8** %5, align 8
  %167 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %168 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  store i8* null, i8** %169, align 8
  br label %179

170:                                              ; preds = %150
  %171 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %172 = load i32, i32* @RXO, align 4
  %173 = call i32 @MT_BBP(i32 %172, i32 18)
  %174 = call i32 @mt76_wr(%struct.mt76x02_dev* %171, i32 %173, i32 -268392047)
  store i8* null, i8** %5, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %177 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  store i8* %175, i8** %178, align 8
  br label %179

179:                                              ; preds = %170, %153
  %180 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %181 = load i32, i32* @AGC, align 4
  %182 = call i32 @MT_BBP(i32 %181, i32 35)
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @mt76_wr(%struct.mt76x02_dev* %180, i32 %182, i32 %183)
  %185 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %186 = load i32, i32* @AGC, align 4
  %187 = call i32 @MT_BBP(i32 %186, i32 37)
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @mt76_wr(%struct.mt76x02_dev* %185, i32 %187, i32 %188)
  %190 = load i8**, i8*** %3, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %5, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %199 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  store i8* %197, i8** %202, align 8
  %203 = load i8**, i8*** %3, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  %205 = load i8*, i8** %204, align 8
  %206 = load i8*, i8** %5, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = inttoptr i64 %209 to i8*
  %211 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %212 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 3
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  store i8* %210, i8** %215, align 8
  %216 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %217 = call i32 @mt76x2_phy_set_gain_val(%struct.mt76x02_dev* %216)
  %218 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %219 = load i32, i32* @MT_RX_STAT_1, align 4
  %220 = call i32 @mt76_rr(%struct.mt76x02_dev* %218, i32 %219)
  br label %221

221:                                              ; preds = %179, %79
  ret void
}

declare dso_local i32 @mt76_get_min_avg_rssi(%struct.TYPE_8__*) #1

declare dso_local i32 @mt76x02_get_rssi_gain_thresh(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_get_low_rssi_gain_thresh(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76x02_phy_adjust_vga_gain(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_phy_set_gain_val(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i64 @mt76x2_has_ext_lna(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
