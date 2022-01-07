; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_program_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_program_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Key content :\00", align 1
@CAM_CONTENT_COUNT = common dso_local global i32 0, align 4
@WCAMI = common dso_local global i64 0, align 8
@RWCAM = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"WRITE %x: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"The Key ID is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"WRITE A4: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"WRITE A0: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"after set key, usconfig:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64*, i64*, i32)* @rtl_cam_program_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_cam_program_entry(%struct.ieee80211_hw* %0, i32 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %18 = load i32, i32* @COMP_SEC, align 4
  %19 = load i32, i32* @DBG_DMESG, align 4
  %20 = load i64*, i64** %9, align 8
  %21 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %20, i32 16)
  %22 = load i32, i32* @CAM_CONTENT_COUNT, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %242, %5
  %25 = load i32, i32* %14, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %245

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @CAM_CONTENT_COUNT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @BIT(i32 31)
  %35 = or i32 %33, %34
  %36 = call i32 @BIT(i32 16)
  %37 = or i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %107

40:                                               ; preds = %27
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 16
  %46 = load i64*, i64** %8, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 24
  %51 = or i32 %45, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @WCAMI, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @rtl_write_dword(%struct.rtl_priv* %54, i32 %62, i32 %63)
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @RWCAM, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @rtl_write_dword(%struct.rtl_priv* %65, i32 %73, i32 %74)
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %77 = load i32, i32* @COMP_SEC, align 4
  %78 = load i32, i32* @DBG_LOUD, align 4
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @WCAMI, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %90 = load i32, i32* @COMP_SEC, align 4
  %91 = load i32, i32* @DBG_LOUD, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %95 = load i32, i32* @COMP_SEC, align 4
  %96 = load i32, i32* @DBG_LOUD, align 4
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @RWCAM, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  br label %241

107:                                              ; preds = %27
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %165

110:                                              ; preds = %107
  %111 = load i64*, i64** %8, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 5
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %114, 24
  %116 = load i64*, i64** %8, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 4
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 16
  %121 = or i32 %115, %120
  %122 = load i64*, i64** %8, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 3
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 8
  %127 = or i32 %121, %126
  %128 = load i64*, i64** %8, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = or i32 %127, %131
  store i32 %132, i32* %13, align 4
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @WCAMI, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @rtl_write_dword(%struct.rtl_priv* %133, i32 %141, i32 %142)
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @RWCAM, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @rtl_write_dword(%struct.rtl_priv* %144, i32 %152, i32 %153)
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %156 = load i32, i32* @COMP_SEC, align 4
  %157 = load i32, i32* @DBG_LOUD, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %155, i32 %156, i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %161 = load i32, i32* @COMP_SEC, align 4
  %162 = load i32, i32* @DBG_LOUD, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %240

165:                                              ; preds = %107
  %166 = load i64*, i64** %9, align 8
  %167 = load i32, i32* %14, align 4
  %168 = mul nsw i32 %167, 4
  %169 = sub nsw i32 %168, 8
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %166, i64 %170
  %172 = getelementptr inbounds i64, i64* %171, i64 3
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = shl i32 %174, 24
  %176 = load i64*, i64** %9, align 8
  %177 = load i32, i32* %14, align 4
  %178 = mul nsw i32 %177, 4
  %179 = sub nsw i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %176, i64 %180
  %182 = getelementptr inbounds i64, i64* %181, i64 2
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = shl i32 %184, 16
  %186 = or i32 %175, %185
  %187 = load i64*, i64** %9, align 8
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 %188, 4
  %190 = sub nsw i32 %189, 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %187, i64 %191
  %193 = getelementptr inbounds i64, i64* %192, i64 1
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = shl i32 %195, 8
  %197 = or i32 %186, %196
  %198 = load i64*, i64** %9, align 8
  %199 = load i32, i32* %14, align 4
  %200 = mul nsw i32 %199, 4
  %201 = sub nsw i32 %200, 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %198, i64 %202
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = or i32 %197, %206
  store i32 %207, i32* %13, align 4
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @WCAMI, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @rtl_write_dword(%struct.rtl_priv* %208, i32 %216, i32 %217)
  %219 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %221 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @RWCAM, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @rtl_write_dword(%struct.rtl_priv* %219, i32 %227, i32 %228)
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %231 = load i32, i32* @COMP_SEC, align 4
  %232 = load i32, i32* @DBG_LOUD, align 4
  %233 = load i32, i32* %13, align 4
  %234 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %230, i32 %231, i32 %232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  %235 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %236 = load i32, i32* @COMP_SEC, align 4
  %237 = load i32, i32* @DBG_LOUD, align 4
  %238 = load i32, i32* %12, align 4
  %239 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %235, i32 %236, i32 %237, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %165, %110
  br label %241

241:                                              ; preds = %240, %40
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %14, align 4
  br label %24

245:                                              ; preds = %24
  %246 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %247 = load i32, i32* @COMP_SEC, align 4
  %248 = load i32, i32* @DBG_LOUD, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %249)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i64*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
