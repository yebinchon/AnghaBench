; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_CCKTxPowerAdjust_ThermalMeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_CCKTxPowerAdjust_ThermalMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@CCKSwingTable_Ch1_Ch13 = common dso_local global i32** null, align 8
@rCCK0_TxFilter1 = common dso_local global i32 0, align 4
@bMaskHWord = common dso_local global i32 0, align 4
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CCK not chnl 14, reg 0x%x = 0x%x\0A\00", align 1
@rCCK0_TxFilter2 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rCCK0_DebugPort = common dso_local global i32 0, align 4
@bMaskLWord = common dso_local global i32 0, align 4
@CCKSwingTable_Ch14 = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"CCK chnl 14, reg 0x%x = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @dm_CCKTxPowerAdjust_ThermalMeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_CCKTxPowerAdjust_ThermalMeter(%struct.net_device* %0, i32 %1) #0 {
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
  br i1 %10, label %113, label %11

11:                                               ; preds = %2
  %12 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %19, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* @rCCK0_TxFilter1, align 4
  %32 = load i32, i32* @bMaskHWord, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @rtl8192_setBBreg(%struct.net_device* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %36 = load i32, i32* @rCCK0_TxFilter1, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @RT_TRACE(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = add nsw i32 %46, %55
  %57 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = add nsw i32 %56, %65
  %67 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32*, i32** %67, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 24
  %76 = add nsw i32 %66, %75
  store i32 %76, i32* %5, align 4
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = load i32, i32* @rCCK0_TxFilter2, align 4
  %79 = load i32, i32* @bMaskDWord, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @rtl8192_setBBreg(%struct.net_device* %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %83 = load i32, i32* @rCCK0_TxFilter2, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @RT_TRACE(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13, align 8
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32*, i32** %94, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 7
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = add nsw i32 %93, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = load i32, i32* @rCCK0_DebugPort, align 4
  %106 = load i32, i32* @bMaskLWord, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @rtl8192_setBBreg(%struct.net_device* %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %110 = load i32, i32* @rCCK0_DebugPort, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @RT_TRACE(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  br label %215

113:                                              ; preds = %2
  %114 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32*, i32** %114, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32*, i32** %122, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = add nsw i32 %121, %130
  store i32 %131, i32* %5, align 4
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = load i32, i32* @rCCK0_TxFilter1, align 4
  %134 = load i32, i32* @bMaskHWord, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @rtl8192_setBBreg(%struct.net_device* %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %138 = load i32, i32* @rCCK0_TxFilter1, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @RT_TRACE(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32*, i32** %141, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %150 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %151 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32*, i32** %149, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = add nsw i32 %148, %157
  %159 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %160 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %161 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i32*, i32** %159, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 16
  %168 = add nsw i32 %158, %167
  %169 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32*, i32** %169, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 24
  %178 = add nsw i32 %168, %177
  store i32 %178, i32* %5, align 4
  %179 = load %struct.net_device*, %struct.net_device** %3, align 8
  %180 = load i32, i32* @rCCK0_TxFilter2, align 4
  %181 = load i32, i32* @bMaskDWord, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @rtl8192_setBBreg(%struct.net_device* %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %185 = load i32, i32* @rCCK0_TxFilter2, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @RT_TRACE(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %189 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %190 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32*, i32** %188, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 6
  %195 = load i32, i32* %194, align 4
  %196 = load i32**, i32*** @CCKSwingTable_Ch14, align 8
  %197 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %198 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32*, i32** %196, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 7
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 8
  %205 = add nsw i32 %195, %204
  store i32 %205, i32* %5, align 4
  %206 = load %struct.net_device*, %struct.net_device** %3, align 8
  %207 = load i32, i32* @rCCK0_DebugPort, align 4
  %208 = load i32, i32* @bMaskLWord, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @rtl8192_setBBreg(%struct.net_device* %206, i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %212 = load i32, i32* @rCCK0_DebugPort, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @RT_TRACE(i32 %211, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %113, %11
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
