; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_bandtype_5G.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_bandtype_5G.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_hal = type { i64, i32 }
%struct.rtl_efuse = type { i32*, i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_phy = type { i32 }

@INDEX_MAPPING_NUM = common dso_local global i32 0, align 4
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_hal*, i32*, i32*, i32, i32, i32, %struct.rtl_efuse*, %struct.rtl_priv*, %struct.rtl_phy*, i32*, i32*)* @rtl92d_bandtype_5G to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_bandtype_5G(%struct.rtl_hal* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.rtl_efuse* %6, %struct.rtl_priv* %7, %struct.rtl_phy* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.rtl_hal*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtl_efuse*, align 8
  %19 = alloca %struct.rtl_priv*, align 8
  %20 = alloca %struct.rtl_phy*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.rtl_hal* %0, %struct.rtl_hal** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.rtl_efuse* %6, %struct.rtl_efuse** %18, align 8
  store %struct.rtl_priv* %7, %struct.rtl_priv** %19, align 8
  store %struct.rtl_phy* %8, %struct.rtl_phy** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %26 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %29 = zext i32 %28 to i64
  store i32 0, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %30

30:                                               ; preds = %220, %11
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %223

34:                                               ; preds = %30
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %36 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.rtl_efuse*, %struct.rtl_efuse** %18, align 8
  %47 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  br label %61

52:                                               ; preds = %40, %34
  %53 = load %struct.rtl_efuse*, %struct.rtl_efuse** %18, align 8
  %54 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %23, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %45
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %67 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %65
  store i32 4, i32* %25, align 4
  br label %76

75:                                               ; preds = %70
  store i32 0, i32* %25, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.rtl_phy*, %struct.rtl_phy** %20, align 8
  %78 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 100
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.rtl_phy*, %struct.rtl_phy** %20, align 8
  %83 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %84, 165
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %25, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %25, align 4
  br label %89

89:                                               ; preds = %86, %81, %76
  br label %102

90:                                               ; preds = %61
  %91 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %92 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %90
  store i32 2, i32* %25, align 4
  br label %101

100:                                              ; preds = %95
  store i32 0, i32* %25, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.rtl_efuse*, %struct.rtl_efuse** %18, align 8
  %105 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %25, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %25, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %118 = sub nsw i32 %117, 1
  %119 = icmp sgt i32 %116, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i32*, i32** %22, align 8
  %122 = load i32, i32* %25, align 4
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, %29
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %24, align 4
  br label %141

131:                                              ; preds = %115
  %132 = load i32*, i32** %22, align 8
  %133 = load i32, i32* %25, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, %29
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %24, align 4
  br label %141

141:                                              ; preds = %131, %120
  br label %169

142:                                              ; preds = %111
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp sgt i32 %143, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load i32*, i32** %21, align 8
  %149 = load i32, i32* %25, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, %27
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %24, align 4
  br label %168

158:                                              ; preds = %142
  %159 = load i32*, i32** %21, align 8
  %160 = load i32, i32* %25, align 4
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, %27
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %24, align 4
  br label %168

168:                                              ; preds = %158, %147
  br label %169

169:                                              ; preds = %168, %141
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.rtl_efuse*, %struct.rtl_efuse** %18, align 8
  %172 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %170, %173
  br i1 %174, label %175, label %211

175:                                              ; preds = %169
  %176 = load i32*, i32** %14, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %175
  %180 = load i32, i32* %15, align 4
  %181 = icmp sgt i32 %180, 18
  br i1 %181, label %182, label %202

182:                                              ; preds = %179
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %23, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %16, align 4
  %192 = sdiv i32 %191, 2
  %193 = mul nsw i32 %192, 3
  %194 = load i32, i32* %16, align 4
  %195 = srem i32 %194, 2
  %196 = add nsw i32 %193, %195
  %197 = sub nsw i32 %190, %196
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %23, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  br label %210

202:                                              ; preds = %179, %175
  %203 = load i32, i32* %24, align 4
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %23, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %208, %203
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %202, %182
  br label %219

211:                                              ; preds = %169
  %212 = load i32, i32* %24, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %212
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %211, %210
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %23, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %23, align 4
  br label %30

223:                                              ; preds = %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
