; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbe_set_timing_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbe_set_timing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gbe_timing_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DOTCLK = common dso_local global i32 0, align 4
@M = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@RUN = common dso_local global i32 0, align 4
@gbe = common dso_local global %struct.TYPE_2__* null, align 8
@VT_XYMAX = common dso_local global i32 0, align 4
@MAXX = common dso_local global i32 0, align 4
@MAXY = common dso_local global i32 0, align 4
@VT_VSYNC = common dso_local global i32 0, align 4
@VSYNC_ON = common dso_local global i32 0, align 4
@VSYNC_OFF = common dso_local global i32 0, align 4
@VT_HSYNC = common dso_local global i32 0, align 4
@HSYNC_ON = common dso_local global i32 0, align 4
@HSYNC_OFF = common dso_local global i32 0, align 4
@VT_VBLANK = common dso_local global i32 0, align 4
@VBLANK_ON = common dso_local global i32 0, align 4
@VBLANK_OFF = common dso_local global i32 0, align 4
@VT_HBLANK = common dso_local global i32 0, align 4
@HBLANK_ON = common dso_local global i32 0, align 4
@HBLANK_OFF = common dso_local global i32 0, align 4
@VT_VCMAP = common dso_local global i32 0, align 4
@VCMAP_ON = common dso_local global i32 0, align 4
@VCMAP_OFF = common dso_local global i32 0, align 4
@VT_HCMAP = common dso_local global i32 0, align 4
@HCMAP_ON = common dso_local global i32 0, align 4
@HCMAP_OFF = common dso_local global i32 0, align 4
@flat_panel_enabled = common dso_local global i64 0, align 8
@DID_START_XY = common dso_local global i32 0, align 4
@DID_STARTY = common dso_local global i32 0, align 4
@DID_STARTX = common dso_local global i32 0, align 4
@CRS_START_XY = common dso_local global i32 0, align 4
@CRS_STARTY = common dso_local global i32 0, align 4
@GBE_CRS_MAGIC = common dso_local global i32 0, align 4
@CRS_STARTX = common dso_local global i32 0, align 4
@VC_START_XY = common dso_local global i32 0, align 4
@VC_STARTY = common dso_local global i32 0, align 4
@VC_STARTX = common dso_local global i32 0, align 4
@GBE_PIXEN_MAGIC_ON = common dso_local global i32 0, align 4
@VT_HPIXEN = common dso_local global i32 0, align 4
@HPIXEN_ON = common dso_local global i32 0, align 4
@HPIXEN_OFF = common dso_local global i32 0, align 4
@GBE_PIXEN_MAGIC_OFF = common dso_local global i32 0, align 4
@VT_VPIXEN = common dso_local global i32 0, align 4
@VPIXEN_ON = common dso_local global i32 0, align 4
@VPIXEN_OFF = common dso_local global i32 0, align 4
@VT_FLAGS = common dso_local global i32 0, align 4
@SYNC_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_timing_info*)* @gbe_set_timing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_set_timing_info(%struct.gbe_timing_info* %0) #0 {
  %2 = alloca %struct.gbe_timing_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gbe_timing_info* %0, %struct.gbe_timing_info** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @DOTCLK, align 4
  %6 = load i32, i32* @M, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %9 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i32 @SET_GBE_FIELD(i32 %5, i32 %6, i32 %7, i32 %11)
  %13 = load i32, i32* @DOTCLK, align 4
  %14 = load i32, i32* @N, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %17 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @SET_GBE_FIELD(i32 %13, i32 %14, i32 %15, i32 %19)
  %21 = load i32, i32* @DOTCLK, align 4
  %22 = load i32, i32* @P, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %25 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SET_GBE_FIELD(i32 %21, i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* @DOTCLK, align 4
  %29 = load i32, i32* @RUN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SET_GBE_FIELD(i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = call i32 @mdelay(i32 10)
  store i32 0, i32* %4, align 4
  %36 = load i32, i32* @VT_XYMAX, align 4
  %37 = load i32, i32* @MAXX, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %40 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SET_GBE_FIELD(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* @VT_XYMAX, align 4
  %44 = load i32, i32* @MAXY, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %47 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SET_GBE_FIELD(i32 %43, i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %4, align 4
  %53 = load i32, i32* @VT_VSYNC, align 4
  %54 = load i32, i32* @VSYNC_ON, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %57 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SET_GBE_FIELD(i32 %53, i32 %54, i32 %55, i32 %58)
  %60 = load i32, i32* @VT_VSYNC, align 4
  %61 = load i32, i32* @VSYNC_OFF, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %64 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SET_GBE_FIELD(i32 %60, i32 %61, i32 %62, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %4, align 4
  %70 = load i32, i32* @VT_HSYNC, align 4
  %71 = load i32, i32* @HSYNC_ON, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %74 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SET_GBE_FIELD(i32 %70, i32 %71, i32 %72, i32 %75)
  %77 = load i32, i32* @VT_HSYNC, align 4
  %78 = load i32, i32* @HSYNC_OFF, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %81 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @SET_GBE_FIELD(i32 %77, i32 %78, i32 %79, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %4, align 4
  %87 = load i32, i32* @VT_VBLANK, align 4
  %88 = load i32, i32* @VBLANK_ON, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %91 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SET_GBE_FIELD(i32 %87, i32 %88, i32 %89, i32 %92)
  %94 = load i32, i32* @VT_VBLANK, align 4
  %95 = load i32, i32* @VBLANK_OFF, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %98 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SET_GBE_FIELD(i32 %94, i32 %95, i32 %96, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %4, align 4
  %104 = load i32, i32* @VT_HBLANK, align 4
  %105 = load i32, i32* @HBLANK_ON, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %108 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 5
  %111 = call i32 @SET_GBE_FIELD(i32 %104, i32 %105, i32 %106, i32 %110)
  %112 = load i32, i32* @VT_HBLANK, align 4
  %113 = load i32, i32* @HBLANK_OFF, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %116 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %115, i32 0, i32 12
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 3
  %119 = call i32 @SET_GBE_FIELD(i32 %112, i32 %113, i32 %114, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %4, align 4
  %123 = load i32, i32* @VT_VCMAP, align 4
  %124 = load i32, i32* @VCMAP_ON, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %127 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @SET_GBE_FIELD(i32 %123, i32 %124, i32 %125, i32 %128)
  %130 = load i32, i32* @VT_VCMAP, align 4
  %131 = load i32, i32* @VCMAP_OFF, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %134 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SET_GBE_FIELD(i32 %130, i32 %131, i32 %132, i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %4, align 4
  %140 = load i32, i32* @VT_HCMAP, align 4
  %141 = load i32, i32* @HCMAP_ON, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %144 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SET_GBE_FIELD(i32 %140, i32 %141, i32 %142, i32 %145)
  %147 = load i32, i32* @VT_HCMAP, align 4
  %148 = load i32, i32* @HCMAP_OFF, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %151 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @SET_GBE_FIELD(i32 %147, i32 %148, i32 %149, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  store i32 0, i32* %4, align 4
  %157 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %158 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %161 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %159, %162
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %1
  %168 = load i32, i32* %3, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %1
  %171 = load i64, i64* @flat_panel_enabled, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %175 = call i32 @gbefb_setup_flatpanel(%struct.gbe_timing_info* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* @DID_START_XY, align 4
  %178 = load i32, i32* @DID_STARTY, align 4
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @SET_GBE_FIELD(i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %183 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %184, 20
  br i1 %185, label %186, label %195

186:                                              ; preds = %176
  %187 = load i32, i32* @DID_START_XY, align 4
  %188 = load i32, i32* @DID_STARTX, align 4
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %191 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, 20
  %194 = call i32 @SET_GBE_FIELD(i32 %187, i32 %188, i32 %189, i32 %193)
  br label %208

195:                                              ; preds = %176
  %196 = load i32, i32* @DID_START_XY, align 4
  %197 = load i32, i32* @DID_STARTX, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %200 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %203 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %202, i32 0, i32 12
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 20, %204
  %206 = sub nsw i32 %201, %205
  %207 = call i32 @SET_GBE_FIELD(i32 %196, i32 %197, i32 %198, i32 %206)
  br label %208

208:                                              ; preds = %195, %186
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 8
  store i32 %209, i32* %211, align 4
  store i32 0, i32* %4, align 4
  %212 = load i32, i32* @CRS_START_XY, align 4
  %213 = load i32, i32* @CRS_STARTY, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 1
  %217 = call i32 @SET_GBE_FIELD(i32 %212, i32 %213, i32 %214, i32 %216)
  %218 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %219 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %218, i32 0, i32 12
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @GBE_CRS_MAGIC, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %208
  %224 = load i32, i32* @CRS_START_XY, align 4
  %225 = load i32, i32* @CRS_STARTX, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %228 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %227, i32 0, i32 12
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @GBE_CRS_MAGIC, align 4
  %231 = sub nsw i32 %229, %230
  %232 = call i32 @SET_GBE_FIELD(i32 %224, i32 %225, i32 %226, i32 %231)
  br label %247

233:                                              ; preds = %208
  %234 = load i32, i32* @CRS_START_XY, align 4
  %235 = load i32, i32* @CRS_STARTX, align 4
  %236 = load i32, i32* %4, align 4
  %237 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %238 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @GBE_CRS_MAGIC, align 4
  %241 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %242 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %241, i32 0, i32 12
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %240, %243
  %245 = sub nsw i32 %239, %244
  %246 = call i32 @SET_GBE_FIELD(i32 %234, i32 %235, i32 %236, i32 %245)
  br label %247

247:                                              ; preds = %233, %223
  %248 = load i32, i32* %4, align 4
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 9
  store i32 %248, i32* %250, align 4
  store i32 0, i32* %4, align 4
  %251 = load i32, i32* @VC_START_XY, align 4
  %252 = load i32, i32* @VC_STARTY, align 4
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* %3, align 4
  %255 = call i32 @SET_GBE_FIELD(i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* @VC_START_XY, align 4
  %257 = load i32, i32* @VC_STARTX, align 4
  %258 = load i32, i32* %4, align 4
  %259 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %260 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %259, i32 0, i32 12
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 4
  %263 = call i32 @SET_GBE_FIELD(i32 %256, i32 %257, i32 %258, i32 %262)
  %264 = load i32, i32* %4, align 4
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 10
  store i32 %264, i32* %266, align 4
  store i32 0, i32* %4, align 4
  %267 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %268 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %267, i32 0, i32 12
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @GBE_PIXEN_MAGIC_ON, align 4
  %271 = sub nsw i32 %269, %270
  store i32 %271, i32* %3, align 4
  %272 = load i32, i32* %3, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %247
  %275 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %276 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %3, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %274, %247
  %281 = load i32, i32* @VT_HPIXEN, align 4
  %282 = load i32, i32* @HPIXEN_ON, align 4
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %3, align 4
  %285 = call i32 @SET_GBE_FIELD(i32 %281, i32 %282, i32 %283, i32 %284)
  %286 = load i32, i32* @VT_HPIXEN, align 4
  %287 = load i32, i32* @HPIXEN_OFF, align 4
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* %3, align 4
  %290 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %291 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %290, i32 0, i32 13
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %289, %292
  %294 = load i32, i32* @GBE_PIXEN_MAGIC_OFF, align 4
  %295 = sub nsw i32 %293, %294
  %296 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %297 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = srem i32 %295, %298
  %300 = call i32 @SET_GBE_FIELD(i32 %286, i32 %287, i32 %288, i32 %299)
  %301 = load i32, i32* %4, align 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 11
  store i32 %301, i32* %303, align 4
  store i32 0, i32* %4, align 4
  %304 = load i32, i32* @VT_VPIXEN, align 4
  %305 = load i32, i32* @VPIXEN_ON, align 4
  %306 = load i32, i32* %4, align 4
  %307 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %308 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %307, i32 0, i32 10
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @SET_GBE_FIELD(i32 %304, i32 %305, i32 %306, i32 %309)
  %311 = load i32, i32* @VT_VPIXEN, align 4
  %312 = load i32, i32* @VPIXEN_OFF, align 4
  %313 = load i32, i32* %4, align 4
  %314 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %315 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @SET_GBE_FIELD(i32 %311, i32 %312, i32 %313, i32 %316)
  %318 = load i32, i32* %4, align 4
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 12
  store i32 %318, i32* %320, align 4
  store i32 0, i32* %4, align 4
  %321 = load i32, i32* @VT_FLAGS, align 4
  %322 = load i32, i32* @SYNC_LOW, align 4
  %323 = load i32, i32* %4, align 4
  %324 = call i32 @SET_GBE_FIELD(i32 %321, i32 %322, i32 %323, i32 1)
  %325 = load i32, i32* %4, align 4
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 13
  store i32 %325, i32* %327, align 4
  ret void
}

declare dso_local i32 @SET_GBE_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gbefb_setup_flatpanel(%struct.gbe_timing_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
