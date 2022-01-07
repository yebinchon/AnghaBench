; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_check_positive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_check_positive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@CHIP_VER_RTL_MASK = common dso_local global i32 0, align 4
@CHIP_VER_RTL_SHIFT = common dso_local global i32 0, align 4
@INTF_USB = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"===> [8812A] CheckPositive (cond1, cond2) = (0x%X 0x%X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"===> [8812A] CheckPositive (driver1, driver2) = (0x%X 0x%X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\09(Platform, Interface) = (0x%X, 0x%X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\09(Board, Package) = (0x%X, 0x%X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl8821ae_check_positive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_check_positive(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_hal*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %8, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %21 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %9, align 8
  %22 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %23 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CHIP_VER_RTL_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INTF_USB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = call i32 @BIT(i32 1)
  br label %38

36:                                               ; preds = %3
  %37 = call i32 @BIT(i32 0)
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %11, align 4
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @BIT(i32 4)
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 4
  %46 = shl i32 %45, 0
  %47 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %48 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @BIT(i32 3)
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 3
  %53 = shl i32 %52, 1
  %54 = or i32 %46, %53
  %55 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %56 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @BIT(i32 7)
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 7
  %61 = shl i32 %60, 2
  %62 = or i32 %54, %61
  %63 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %64 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @BIT(i32 6)
  %67 = and i32 %65, %66
  %68 = ashr i32 %67, 6
  %69 = shl i32 %68, 3
  %70 = or i32 %62, %69
  %71 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %72 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @BIT(i32 2)
  %75 = and i32 %73, %74
  %76 = ashr i32 %75, 2
  %77 = shl i32 %76, 4
  %78 = or i32 %70, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 24
  %83 = or i32 %82, 262144
  %84 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %85 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 12
  %88 = or i32 %83, %87
  %89 = load i32, i32* %11, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %88, %90
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %15, align 4
  %94 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %95 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 0
  %98 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %99 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 %97, %101
  %103 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %104 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 16
  %107 = or i32 %102, %106
  %108 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %109 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 24
  %112 = or i32 %107, %111
  store i32 %112, i32* %16, align 4
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %114 = load i32, i32* @COMP_INIT, align 4
  %115 = load i32, i32* @DBG_TRACE, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @RT_TRACE(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %120 = load i32, i32* @COMP_INIT, align 4
  %121 = load i32, i32* @DBG_TRACE, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @RT_TRACE(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %126 = load i32, i32* @COMP_INIT, align 4
  %127 = load i32, i32* @DBG_TRACE, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @RT_TRACE(%struct.rtl_priv* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 %128)
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %131 = load i32, i32* @COMP_INIT, align 4
  %132 = load i32, i32* @DBG_TRACE, align 4
  %133 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %134 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %137 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @RT_TRACE(%struct.rtl_priv* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, 61440
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %38
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %144, 61440
  %146 = load i32, i32* %15, align 4
  %147 = and i32 %146, 61440
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %219

150:                                              ; preds = %143, %38
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, 251658240
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, 251658240
  %157 = load i32, i32* %15, align 4
  %158 = and i32 %157, 251658240
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %219

161:                                              ; preds = %154, %150
  %162 = load i32, i32* %13, align 4
  %163 = and i32 %162, 16715775
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %15, align 4
  %165 = and i32 %164, 16715775
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %15, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %218

171:                                              ; preds = %161
  store i32 0, i32* %17, align 4
  %172 = load i32, i32* %13, align 4
  %173 = and i32 %172, 15
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 1, i32* %4, align 4
  br label %219

176:                                              ; preds = %171
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @BIT(i32 0)
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* %17, align 4
  %183 = or i32 %182, 255
  store i32 %183, i32* %17, align 4
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @BIT(i32 1)
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* %17, align 4
  %191 = or i32 %190, 65280
  store i32 %191, i32* %17, align 4
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @BIT(i32 2)
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %17, align 4
  %199 = or i32 %198, 16711680
  store i32 %199, i32* %17, align 4
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @BIT(i32 3)
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i32, i32* %17, align 4
  %207 = or i32 %206, -16777216
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %17, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %17, align 4
  %214 = and i32 %212, %213
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 1, i32* %4, align 4
  br label %219

217:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %219

218:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %217, %216, %175, %160, %149
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
