; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_setup_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_setup_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_plane_info = type { i64, i32, i32, i32, i32, i32 }
%struct.omapfb_info = type { i64, %struct.omapfb2_mem_region*, %struct.omap_overlay**, %struct.omapfb2_device* }
%struct.omapfb2_mem_region = type { i64, i32 }
%struct.omap_overlay = type { i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*)*, %struct.TYPE_2__*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.omap_overlay_info = type { i32, i32, i32, i32 }
%struct.omapfb2_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"omapfb_setup_plane\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"setup_plane failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_plane_info*)* @omapfb_setup_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_setup_plane(%struct.fb_info* %0, %struct.omapfb_plane_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_plane_info*, align 8
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.omapfb2_device*, align 8
  %8 = alloca %struct.omap_overlay*, align 8
  %9 = alloca %struct.omap_overlay_info, align 4
  %10 = alloca %struct.omapfb2_mem_region*, align 8
  %11 = alloca %struct.omapfb2_mem_region*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.omap_overlay_info, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.omapfb_plane_info* %1, %struct.omapfb_plane_info** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %14)
  store %struct.omapfb_info* %15, %struct.omapfb_info** %6, align 8
  %16 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %17 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %16, i32 0, i32 3
  %18 = load %struct.omapfb2_device*, %struct.omapfb2_device** %17, align 8
  store %struct.omapfb2_device* %18, %struct.omapfb2_device** %7, align 8
  store i32 0, i32* %12, align 4
  %19 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %21 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %287

27:                                               ; preds = %2
  %28 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %29 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %28, i32 0, i32 2
  %30 = load %struct.omap_overlay**, %struct.omap_overlay*** %29, align 8
  %31 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %30, i64 0
  %32 = load %struct.omap_overlay*, %struct.omap_overlay** %31, align 8
  store %struct.omap_overlay* %32, %struct.omap_overlay** %8, align 8
  %33 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %34 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %33, i32 0, i32 1
  %35 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %34, align 8
  store %struct.omapfb2_mem_region* %35, %struct.omapfb2_mem_region** %10, align 8
  %36 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %37 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %38 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.omapfb2_mem_region* @get_mem_region(%struct.omapfb_info* %36, i32 %39)
  store %struct.omapfb2_mem_region* %40, %struct.omapfb2_mem_region** %11, align 8
  %41 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %42 = icmp ne %struct.omapfb2_mem_region* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %287

46:                                               ; preds = %27
  %47 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %48 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %51 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %56 = call i32 @omapfb_get_mem_region(%struct.omapfb2_mem_region* %55)
  %57 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %58 = call i32 @omapfb_get_mem_region(%struct.omapfb2_mem_region* %57)
  br label %76

59:                                               ; preds = %46
  %60 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %61 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %64 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %69 = call i32 @omapfb_get_mem_region(%struct.omapfb2_mem_region* %68)
  %70 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %71 = call i32 @omapfb_get_mem_region(%struct.omapfb2_mem_region* %70)
  br label %75

72:                                               ; preds = %59
  %73 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %74 = call i32 @omapfb_get_mem_region(%struct.omapfb2_mem_region* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %54
  %77 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %78 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %83 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %256

89:                                               ; preds = %81, %76
  %90 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %91 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %90, i32 0, i32 4
  %92 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %91, align 8
  %93 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %94 = call i32 %92(%struct.omap_overlay* %93, %struct.omap_overlay_info* %9)
  %95 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %96 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %97 = icmp ne %struct.omapfb2_mem_region* %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %100 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %101 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %100, i32 0, i32 1
  store %struct.omapfb2_mem_region* %99, %struct.omapfb2_mem_region** %101, align 8
  %102 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %103 = call i32 @set_fb_fix(%struct.fb_info* %102)
  br label %104

104:                                              ; preds = %98, %89
  %105 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %106 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %111 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %110, i32 0, i32 0
  %112 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %111, align 8
  %113 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %114 = call i32 %112(%struct.omap_overlay* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %240

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %121 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %126 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %127 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %128 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %131 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %134 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %137 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @omapfb_setup_overlay(%struct.fb_info* %125, %struct.omap_overlay* %126, i32 %129, i32 %132, i32 %135, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %124
  br label %240

143:                                              ; preds = %124
  br label %175

144:                                              ; preds = %119
  %145 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %146 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %145, i32 0, i32 4
  %147 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %146, align 8
  %148 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %149 = call i32 %147(%struct.omap_overlay* %148, %struct.omap_overlay_info* %13)
  %150 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %151 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %13, i32 0, i32 3
  store i32 %152, i32* %153, align 4
  %154 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %155 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %13, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %159 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %13, i32 0, i32 1
  store i32 %160, i32* %161, align 4
  %162 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %163 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %13, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %167 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %166, i32 0, i32 1
  %168 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %167, align 8
  %169 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %170 = call i32 %168(%struct.omap_overlay* %169, %struct.omap_overlay_info* %13)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %144
  br label %240

174:                                              ; preds = %144
  br label %175

175:                                              ; preds = %174, %143
  %176 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %177 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %176, i32 0, i32 3
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = icmp ne %struct.TYPE_2__* %178, null
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %182 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %181, i32 0, i32 3
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %184, align 8
  %186 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %187 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %186, i32 0, i32 3
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = call i32 %185(%struct.TYPE_2__* %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %240

193:                                              ; preds = %180
  br label %194

194:                                              ; preds = %193, %175
  %195 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %5, align 8
  %196 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %201 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %200, i32 0, i32 2
  %202 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %201, align 8
  %203 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %204 = call i32 %202(%struct.omap_overlay* %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %240

208:                                              ; preds = %199
  br label %209

209:                                              ; preds = %208, %194
  %210 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %211 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %214 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %212, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %209
  %218 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %219 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %218)
  %220 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %221 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %220)
  br label %239

222:                                              ; preds = %209
  %223 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %224 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %227 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp sgt i64 %225, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %222
  %231 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %232 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %231)
  %233 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %234 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %233)
  br label %238

235:                                              ; preds = %222
  %236 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %237 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %236)
  br label %238

238:                                              ; preds = %235, %230
  br label %239

239:                                              ; preds = %238, %217
  store i32 0, i32* %3, align 4
  br label %293

240:                                              ; preds = %207, %192, %173, %142, %117
  %241 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %242 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %243 = icmp ne %struct.omapfb2_mem_region* %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %246 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %247 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %246, i32 0, i32 1
  store %struct.omapfb2_mem_region* %245, %struct.omapfb2_mem_region** %247, align 8
  %248 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %249 = call i32 @set_fb_fix(%struct.fb_info* %248)
  br label %250

250:                                              ; preds = %244, %240
  %251 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %252 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %251, i32 0, i32 1
  %253 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %252, align 8
  %254 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %255 = call i32 %253(%struct.omap_overlay* %254, %struct.omap_overlay_info* %9)
  br label %256

256:                                              ; preds = %250, %86
  %257 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %258 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %261 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp sgt i64 %259, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %256
  %265 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %266 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %265)
  %267 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %268 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %267)
  br label %286

269:                                              ; preds = %256
  %270 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %271 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %274 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %272, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %269
  %278 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %11, align 8
  %279 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %278)
  %280 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %281 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %280)
  br label %285

282:                                              ; preds = %269
  %283 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %284 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %283)
  br label %285

285:                                              ; preds = %282, %277
  br label %286

286:                                              ; preds = %285, %264
  br label %287

287:                                              ; preds = %286, %43, %24
  %288 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %289 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @dev_err(i32 %290, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %292 = load i32, i32* %12, align 4
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %287, %239
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local %struct.omapfb2_mem_region* @get_mem_region(%struct.omapfb_info*, i32) #1

declare dso_local i32 @omapfb_get_mem_region(%struct.omapfb2_mem_region*) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*) #1

declare dso_local i32 @omapfb_setup_overlay(%struct.fb_info*, %struct.omap_overlay*, i32, i32, i32, i32) #1

declare dso_local i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
