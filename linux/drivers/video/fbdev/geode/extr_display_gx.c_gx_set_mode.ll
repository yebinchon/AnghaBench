; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_display_gx.c_gx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_display_gx.c_gx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.gxfb_par* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gxfb_par = type { i32 }

@DC_UNLOCK = common dso_local global i32 0, align 4
@DC_UNLOCK_UNLOCK = common dso_local global i32 0, align 4
@DC_GENERAL_CFG = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_TGEN = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFLE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_CMPE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DECE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_YUVM = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_VDSE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFHPEL_SHIFT = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFHPSL_SHIFT = common dso_local global i32 0, align 4
@DC_FB_ST_OFFSET = common dso_local global i32 0, align 4
@DC_GFX_PITCH = common dso_local global i32 0, align 4
@DC_LINE_SIZE = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_GDEN = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_VDEN = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_A20M = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_A18M = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DISP_MODE_8BPP = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DISP_MODE_16BPP = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DISP_MODE_24BPP = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_PALB = common dso_local global i32 0, align 4
@DC_H_ACTIVE_TIMING = common dso_local global i32 0, align 4
@DC_H_BLANK_TIMING = common dso_local global i32 0, align 4
@DC_H_SYNC_TIMING = common dso_local global i32 0, align 4
@DC_V_ACTIVE_TIMING = common dso_local global i32 0, align 4
@DC_V_BLANK_TIMING = common dso_local global i32 0, align 4
@DC_V_SYNC_TIMING = common dso_local global i32 0, align 4
@DC_UNLOCK_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_set_mode(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.gxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = load %struct.gxfb_par*, %struct.gxfb_par** %19, align 8
  store %struct.gxfb_par* %20, %struct.gxfb_par** %3, align 8
  %21 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %22 = load i32, i32* @DC_UNLOCK, align 4
  %23 = load i32, i32* @DC_UNLOCK_UNLOCK, align 4
  %24 = call i32 @write_dc(%struct.gxfb_par* %21, i32 %22, i32 %23)
  %25 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %26 = load i32, i32* @DC_GENERAL_CFG, align 4
  %27 = call i32 @read_dc(%struct.gxfb_par* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %29 = load i32, i32* @DC_DISPLAY_CFG, align 4
  %30 = call i32 @read_dc(%struct.gxfb_par* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @DC_DISPLAY_CFG_TGEN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %36 = load i32, i32* @DC_DISPLAY_CFG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @write_dc(%struct.gxfb_par* %35, i32 %36, i32 %37)
  %39 = call i32 @udelay(i32 100)
  %40 = load i32, i32* @DC_GENERAL_CFG_DFLE, align 4
  %41 = load i32, i32* @DC_GENERAL_CFG_CMPE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @DC_GENERAL_CFG_DECE, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %49 = load i32, i32* @DC_GENERAL_CFG, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @write_dc(%struct.gxfb_par* %48, i32 %49, i32 %50)
  %52 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %53 = call i32 @gx_set_dclk_frequency(%struct.fb_info* %52)
  %54 = load i32, i32* @DC_GENERAL_CFG_YUVM, align 4
  %55 = load i32, i32* @DC_GENERAL_CFG_VDSE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %59 = load i32, i32* @DC_GENERAL_CFG_DFHPEL_SHIFT, align 4
  %60 = shl i32 6, %59
  %61 = load i32, i32* @DC_GENERAL_CFG_DFHPSL_SHIFT, align 4
  %62 = shl i32 5, %61
  %63 = or i32 %60, %62
  %64 = load i32, i32* @DC_GENERAL_CFG_DFLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %69 = load i32, i32* @DC_FB_ST_OFFSET, align 4
  %70 = call i32 @write_dc(%struct.gxfb_par* %68, i32 %69, i32 0)
  %71 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %72 = load i32, i32* @DC_GFX_PITCH, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 3
  %78 = call i32 @write_dc(%struct.gxfb_par* %71, i32 %72, i32 %77)
  %79 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %80 = load i32, i32* @DC_LINE_SIZE, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %84, %88
  %90 = sdiv i32 %89, 8
  %91 = ashr i32 %90, 3
  %92 = add nsw i32 %91, 2
  %93 = call i32 @write_dc(%struct.gxfb_par* %79, i32 %80, i32 %92)
  %94 = load i32, i32* @DC_DISPLAY_CFG_GDEN, align 4
  %95 = load i32, i32* @DC_DISPLAY_CFG_VDEN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @DC_DISPLAY_CFG_A20M, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @DC_DISPLAY_CFG_A18M, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %122 [
    i32 8, label %107
    i32 16, label %111
    i32 32, label %115
  ]

107:                                              ; preds = %1
  %108 = load i32, i32* @DC_DISPLAY_CFG_DISP_MODE_8BPP, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %122

111:                                              ; preds = %1
  %112 = load i32, i32* @DC_DISPLAY_CFG_DISP_MODE_16BPP, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %122

115:                                              ; preds = %1
  %116 = load i32, i32* @DC_DISPLAY_CFG_DISP_MODE_24BPP, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* @DC_DISPLAY_CFG_PALB, align 4
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %1, %115, %111, %107
  %123 = load i32, i32* @DC_DISPLAY_CFG_TGEN, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  %126 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %131, %135
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %137, %141
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %143, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %11, align 4
  %150 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %155, %159
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %161, %165
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %167, %171
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %17, align 4
  %174 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %175 = load i32, i32* @DC_H_ACTIVE_TIMING, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %178, 1
  %180 = shl i32 %179, 16
  %181 = or i32 %177, %180
  %182 = call i32 @write_dc(%struct.gxfb_par* %174, i32 %175, i32 %181)
  %183 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %184 = load i32, i32* @DC_H_BLANK_TIMING, align 4
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %185, 1
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %187, 1
  %189 = shl i32 %188, 16
  %190 = or i32 %186, %189
  %191 = call i32 @write_dc(%struct.gxfb_par* %183, i32 %184, i32 %190)
  %192 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %193 = load i32, i32* @DC_H_SYNC_TIMING, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 %196, 1
  %198 = shl i32 %197, 16
  %199 = or i32 %195, %198
  %200 = call i32 @write_dc(%struct.gxfb_par* %192, i32 %193, i32 %199)
  %201 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %202 = load i32, i32* @DC_V_ACTIVE_TIMING, align 4
  %203 = load i32, i32* %12, align 4
  %204 = sub nsw i32 %203, 1
  %205 = load i32, i32* %17, align 4
  %206 = sub nsw i32 %205, 1
  %207 = shl i32 %206, 16
  %208 = or i32 %204, %207
  %209 = call i32 @write_dc(%struct.gxfb_par* %201, i32 %202, i32 %208)
  %210 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %211 = load i32, i32* @DC_V_BLANK_TIMING, align 4
  %212 = load i32, i32* %13, align 4
  %213 = sub nsw i32 %212, 1
  %214 = load i32, i32* %16, align 4
  %215 = sub nsw i32 %214, 1
  %216 = shl i32 %215, 16
  %217 = or i32 %213, %216
  %218 = call i32 @write_dc(%struct.gxfb_par* %210, i32 %211, i32 %217)
  %219 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %220 = load i32, i32* @DC_V_SYNC_TIMING, align 4
  %221 = load i32, i32* %14, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, i32* %15, align 4
  %224 = sub nsw i32 %223, 1
  %225 = shl i32 %224, 16
  %226 = or i32 %222, %225
  %227 = call i32 @write_dc(%struct.gxfb_par* %219, i32 %220, i32 %226)
  %228 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %229 = load i32, i32* @DC_DISPLAY_CFG, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @write_dc(%struct.gxfb_par* %228, i32 %229, i32 %230)
  %232 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %233 = load i32, i32* @DC_GENERAL_CFG, align 4
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @write_dc(%struct.gxfb_par* %232, i32 %233, i32 %234)
  %236 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %237 = call i32 @gx_configure_display(%struct.fb_info* %236)
  %238 = load %struct.gxfb_par*, %struct.gxfb_par** %3, align 8
  %239 = load i32, i32* @DC_UNLOCK, align 4
  %240 = load i32, i32* @DC_UNLOCK_LOCK, align 4
  %241 = call i32 @write_dc(%struct.gxfb_par* %238, i32 %239, i32 %240)
  ret void
}

declare dso_local i32 @write_dc(%struct.gxfb_par*, i32, i32) #1

declare dso_local i32 @read_dc(%struct.gxfb_par*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gx_set_dclk_frequency(%struct.fb_info*) #1

declare dso_local i32 @gx_configure_display(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
