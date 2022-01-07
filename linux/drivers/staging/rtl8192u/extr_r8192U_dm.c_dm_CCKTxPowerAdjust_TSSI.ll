; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_CCKTxPowerAdjust_TSSI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_CCKTxPowerAdjust_TSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@rCCK0_TxFilter1 = common dso_local global i32 0, align 4
@bMaskHWord = common dso_local global i32 0, align 4
@rCCK0_TxFilter2 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rCCK0_DebugPort = common dso_local global i32 0, align 4
@bMaskLWord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @dm_CCKTxPowerAdjust_TSSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_CCKTxPowerAdjust_TSSI(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %125, label %11

11:                                               ; preds = %2
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = add nsw i32 %22, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i32, i32* @rCCK0_TxFilter1, align 4
  %38 = load i32, i32* @bMaskHWord, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rtl8192_setBBreg(%struct.net_device* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = add nsw i32 %51, %63
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = add nsw i32 %64, %76
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 24
  %90 = add nsw i32 %77, %89
  store i32 %90, i32* %5, align 4
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = load i32, i32* @rCCK0_TxFilter2, align 4
  %93 = load i32, i32* @bMaskDWord, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @rtl8192_setBBreg(%struct.net_device* %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = add nsw i32 %106, %118
  store i32 %119, i32* %5, align 4
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = load i32, i32* @rCCK0_DebugPort, align 4
  %122 = load i32, i32* @bMaskLWord, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @rtl8192_setBBreg(%struct.net_device* %120, i32 %121, i32 %122, i32 %123)
  br label %239

125:                                              ; preds = %2
  %126 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %127 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 8
  %149 = add nsw i32 %136, %148
  store i32 %149, i32* %5, align 4
  %150 = load %struct.net_device*, %struct.net_device** %3, align 8
  %151 = load i32, i32* @rCCK0_TxFilter1, align 4
  %152 = load i32, i32* @bMaskHWord, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @rtl8192_setBBreg(%struct.net_device* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %156 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %159 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %167 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %170 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 8
  %178 = add nsw i32 %165, %177
  %179 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %180 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %183 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 16
  %191 = add nsw i32 %178, %190
  %192 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %193 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %196 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 5
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 24
  %204 = add nsw i32 %191, %203
  store i32 %204, i32* %5, align 4
  %205 = load %struct.net_device*, %struct.net_device** %3, align 8
  %206 = load i32, i32* @rCCK0_TxFilter2, align 4
  %207 = load i32, i32* @bMaskDWord, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @rtl8192_setBBreg(%struct.net_device* %205, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %211 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %214 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 6
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %222 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 7
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 8
  %233 = add nsw i32 %220, %232
  store i32 %233, i32* %5, align 4
  %234 = load %struct.net_device*, %struct.net_device** %3, align 8
  %235 = load i32, i32* @rCCK0_DebugPort, align 4
  %236 = load i32, i32* @bMaskLWord, align 4
  %237 = load i32, i32* %5, align 4
  %238 = call i32 @rtl8192_setBBreg(%struct.net_device* %234, i32 %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %125, %11
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
