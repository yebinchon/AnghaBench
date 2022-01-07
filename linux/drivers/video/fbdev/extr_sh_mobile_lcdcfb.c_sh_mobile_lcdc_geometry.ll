; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.fb_videomode }
%struct.fb_videomode = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32 }

@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@LDMT1R_VPOL = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@LDMT1R_HPOL = common dso_local global i32 0, align 4
@LCDC_FLAGS_DWPOL = common dso_local global i32 0, align 4
@LDMT1R_DWPOL = common dso_local global i32 0, align 4
@LCDC_FLAGS_DIPOL = common dso_local global i32 0, align 4
@LDMT1R_DIPOL = common dso_local global i32 0, align 4
@LCDC_FLAGS_DAPOL = common dso_local global i32 0, align 4
@LDMT1R_DAPOL = common dso_local global i32 0, align 4
@LCDC_FLAGS_HSCNT = common dso_local global i32 0, align 4
@LDMT1R_HSCNT = common dso_local global i32 0, align 4
@LCDC_FLAGS_DWCNT = common dso_local global i32 0, align 4
@LDMT1R_DWCNT = common dso_local global i32 0, align 4
@LDMT1R = common dso_local global i32 0, align 4
@LDMT2R = common dso_local global i32 0, align 4
@LDMT3R = common dso_local global i32 0, align 4
@LDHCNR = common dso_local global i32 0, align 4
@LDHSYNR = common dso_local global i32 0, align 4
@LDVLNR = common dso_local global i32 0, align 4
@LDVSYNR = common dso_local global i32 0, align 4
@LDHAJR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_geometry(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %2, align 8
  %9 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %9, i32 0, i32 5
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.fb_var_screeninfo* %12, %struct.fb_var_screeninfo** %3, align 8
  %13 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.fb_videomode* %15, %struct.fb_videomode** %4, align 8
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @LDMT1R_VPOL, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @LDMT1R_HPOL, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 0, %38 ], [ %40, %39 ]
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LCDC_FLAGS_DWPOL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @LDMT1R_DWPOL, align 4
  br label %56

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %61 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %60, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LCDC_FLAGS_DIPOL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* @LDMT1R_DIPOL, align 4
  br label %71

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %76 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LCDC_FLAGS_DAPOL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @LDMT1R_DAPOL, align 4
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %91 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @LCDC_FLAGS_HSCNT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @LDMT1R_HSCNT, align 4
  br label %101

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %106 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LCDC_FLAGS_DWCNT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* @LDMT1R_DWCNT, align 4
  br label %116

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %121 = load i32, i32* @LDMT1R, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %120, i32 %121, i32 %122)
  %124 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %125 = load i32, i32* @LDMT2R, align 4
  %126 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %127 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %126, i32 0, i32 3
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %124, i32 %125, i32 %131)
  %133 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %134 = load i32, i32* @LDMT3R, align 4
  %135 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %136 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %133, i32 %134, i32 %140)
  %142 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %143 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %146 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %144, %147
  %149 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %150 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %148, %151
  %153 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %154 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %152, %155
  store i64 %156, i64* %5, align 8
  %157 = load i64, i64* %5, align 8
  %158 = udiv i64 %157, 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %8, align 4
  %160 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %161 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %164 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @min(i64 %162, i32 %165)
  %167 = sdiv i32 %166, 8
  %168 = shl i32 %167, 16
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %172 = load i32, i32* @LDHCNR, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %171, i32 %172, i32 %173)
  %175 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %176 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %179 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %177, %180
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = udiv i64 %182, 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %8, align 4
  %185 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %186 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = udiv i64 %187, 8
  %189 = shl i64 %188, 16
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = or i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %8, align 4
  %194 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %195 = load i32, i32* @LDHSYNR, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %194, i32 %195, i32 %196)
  %198 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %199 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %202 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %200, %203
  %205 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %206 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %204, %207
  %209 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %210 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %208, %211
  store i32 %212, i32* %8, align 4
  %213 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %214 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %218 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @min(i64 %216, i32 %219)
  %221 = shl i32 %220, 16
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  %224 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %225 = load i32, i32* @LDVLNR, align 4
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %224, i32 %225, i32 %226)
  %228 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %229 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %232 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  store i32 %234, i32* %8, align 4
  %235 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %236 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 16
  %239 = load i32, i32* %8, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %8, align 4
  %241 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %242 = load i32, i32* @LDVSYNR, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %241, i32 %242, i32 %243)
  %245 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %246 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %249 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %247, %250
  %252 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %253 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = add i64 %251, %254
  %256 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %257 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %255, %258
  store i64 %259, i64* %7, align 8
  %260 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %261 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = and i64 %262, 7
  %264 = shl i64 %263, 24
  %265 = load i64, i64* %7, align 8
  %266 = and i64 %265, 7
  %267 = shl i64 %266, 16
  %268 = or i64 %264, %267
  %269 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %270 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = and i64 %271, 7
  %273 = shl i64 %272, 8
  %274 = or i64 %268, %273
  %275 = load i64, i64* %6, align 8
  %276 = and i64 %275, 7
  %277 = or i64 %274, %276
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %8, align 4
  %279 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %280 = load i32, i32* @LDHAJR, align 4
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %279, i32 %280, i32 %281)
  %283 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %284 = load i32, i32* @LDHAJR, align 4
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan* %283, i32 %284, i32 %285)
  ret void
}

declare dso_local i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan*, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
