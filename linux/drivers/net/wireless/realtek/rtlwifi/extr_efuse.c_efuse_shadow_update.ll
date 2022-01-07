; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_efuse = type { i32** }

@COMP_EFUSE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EFUSE_INIT_MAP = common dso_local global i64 0, align 8
@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@EFUSE_HWSET_MAX_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"efuse out of capacity!!\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"U-efuse\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"PG section(%#x) fail!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_shadow_update(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %15)
  store %struct.rtl_efuse* %16, %struct.rtl_efuse** %5, align 8
  store i32 15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = load i32, i32* @COMP_EFUSE, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call i32 @efuse_shadow_update_chk(%struct.ieee80211_hw* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %1
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @efuse_read_all_map(%struct.ieee80211_hw* %25, i32* %32)
  %34 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %42 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @EFUSE_HWSET_MAX_SIZE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32* %40, i32* %47, i32 %55)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %58 = load i32, i32* @COMP_EFUSE, align 4
  %59 = load i32, i32* @DBG_LOUD, align 4
  %60 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %243

61:                                               ; preds = %1
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = call i32 @efuse_power_switch(%struct.ieee80211_hw* %62, i32 1, i32 1)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %201, %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %204

67:                                               ; preds = %64
  store i32 15, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %68, 8
  store i32 %69, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %164, %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %167

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = sdiv i32 %77, 2
  %79 = call i32 @BIT(i32 %78)
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %84 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %96 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %94, i32* %105, align 4
  br label %163

106:                                              ; preds = %73
  %107 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %108 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %120 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %123 = getelementptr inbounds i32*, i32** %121, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %118, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %106
  %133 = load i32, i32* %6, align 4
  %134 = sdiv i32 %133, 2
  %135 = call i32 @BIT(i32 %134)
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %140 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %143 = getelementptr inbounds i32*, i32** %141, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %152 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  store i32 %150, i32* %161, align 4
  br label %162

162:                                              ; preds = %132, %106
  br label %163

163:                                              ; preds = %162, %76
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %70

167:                                              ; preds = %70
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 15
  br i1 %169, label %170, label %200

170:                                              ; preds = %167
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %172 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %173 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %172, i32 0, i32 0
  %174 = load i32**, i32*** %173, align 8
  %175 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 @memcpy(i32* %171, i32* %180, i32 8)
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %183 = load i32, i32* @COMP_INIT, align 4
  %184 = load i32, i32* @DBG_LOUD, align 4
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %186 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %182, i32 %183, i32 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %185, i32 8)
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %9, align 4
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %191 = call i32 @efuse_pg_packet_write(%struct.ieee80211_hw* %187, i32 %188, i32 %189, i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %170
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %195 = load i32, i32* @COMP_ERR, align 4
  %196 = load i32, i32* @DBG_WARNING, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %194, i32 %195, i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %204

199:                                              ; preds = %170
  br label %200

200:                                              ; preds = %199, %167
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %64

204:                                              ; preds = %193, %64
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %206 = call i32 @efuse_power_switch(%struct.ieee80211_hw* %205, i32 1, i32 0)
  %207 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %208 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %209 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %208, i32 0, i32 0
  %210 = load i32**, i32*** %209, align 8
  %211 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %212 = getelementptr inbounds i32*, i32** %210, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = call i32 @efuse_read_all_map(%struct.ieee80211_hw* %207, i32* %214)
  %216 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %217 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %216, i32 0, i32 0
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %224 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %223, i32 0, i32 0
  %225 = load i32**, i32*** %224, align 8
  %226 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %227 = getelementptr inbounds i32*, i32** %225, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %231 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %230, i32 0, i32 0
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @EFUSE_HWSET_MAX_SIZE, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @memcpy(i32* %222, i32* %229, i32 %237)
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %240 = load i32, i32* @COMP_EFUSE, align 4
  %241 = load i32, i32* @DBG_LOUD, align 4
  %242 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %243

243:                                              ; preds = %204, %24
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @efuse_shadow_update_chk(%struct.ieee80211_hw*) #1

declare dso_local i32 @efuse_read_all_map(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @efuse_power_switch(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @efuse_pg_packet_write(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
