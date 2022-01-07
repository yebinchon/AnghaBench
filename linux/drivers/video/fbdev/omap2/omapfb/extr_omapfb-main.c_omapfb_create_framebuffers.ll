; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_create_framebuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_create_framebuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, i32, %struct.fb_info**, %struct.omap_overlay**, i32, %struct.TYPE_5__* }
%struct.fb_info = type { i32 }
%struct.omap_overlay = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.omapfb_info = type { i32, i32, %struct.omap_overlay**, %struct.TYPE_5__*, i32, i32, %struct.omapfb2_device* }

@.str = private unnamed_addr constant [24 x i8] c"create %d framebuffers\0A\00", align 1
@CONFIG_FB_OMAP2_NUM_FBS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@def_vrfb = common dso_local global i64 0, align 8
@OMAP_DSS_ROT_VRFB = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_DMA = common dso_local global i32 0, align 4
@def_mirror = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fb_infos allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to allocate fbmem\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fbmems allocated\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to setup fb_info\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"fb_infos initialized\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"registering framebuffer %d failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"framebuffers registered\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to change mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to enable overlay\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"create_framebuffers done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*)* @omapfb_create_framebuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_create_framebuffers(%struct.omapfb2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.omapfb_info*, align 8
  %8 = alloca %struct.omapfb_info*, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.omapfb_info*, align 8
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca %struct.omapfb_info*, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.omapfb_info*, align 8
  %15 = alloca %struct.omapfb_info*, align 8
  %16 = alloca %struct.omap_overlay*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %3, align 8
  %17 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %18 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* @CONFIG_FB_OMAP2_NUM_FBS, align 4
  %20 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %88, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CONFIG_FB_OMAP2_NUM_FBS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %21
  %26 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %27 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.fb_info* @framebuffer_alloc(i32 40, i32 %28)
  store %struct.fb_info* %29, %struct.fb_info** %6, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %31 = icmp ne %struct.fb_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %325

35:                                               ; preds = %25
  %36 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %37 = call i32 @clear_fb_info(%struct.fb_info* %36)
  %38 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %39 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %40 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %39, i32 0, i32 2
  %41 = load %struct.fb_info**, %struct.fb_info*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %41, i64 %43
  store %struct.fb_info* %38, %struct.fb_info** %44, align 8
  %45 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %46 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %45)
  store %struct.omapfb_info* %46, %struct.omapfb_info** %7, align 8
  %47 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %48 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %49 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %48, i32 0, i32 6
  store %struct.omapfb2_device* %47, %struct.omapfb2_device** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %52 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %54 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %53, i32 0, i32 5
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %60 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %59, i32 0, i32 3
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %63 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %67 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = call i32 @init_rwsem(i32* %69)
  %71 = load i64, i64* @def_vrfb, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %35
  %74 = load i32, i32* @OMAP_DSS_ROT_VRFB, align 4
  br label %77

75:                                               ; preds = %35
  %76 = load i32, i32* @OMAP_DSS_ROT_DMA, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %80 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @def_mirror, align 4
  %82 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %83 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %85 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %21

91:                                               ; preds = %21
  %92 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %125, %91
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %96 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %99 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @min(i32 %97, i32 %100)
  %102 = icmp slt i32 %94, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %93
  %104 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %105 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %104, i32 0, i32 2
  %106 = load %struct.fb_info**, %struct.fb_info*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %106, i64 %108
  %110 = load %struct.fb_info*, %struct.fb_info** %109, align 8
  %111 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %110)
  store %struct.omapfb_info* %111, %struct.omapfb_info** %8, align 8
  %112 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %113 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %112, i32 0, i32 3
  %114 = load %struct.omap_overlay**, %struct.omap_overlay*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %114, i64 %116
  %118 = load %struct.omap_overlay*, %struct.omap_overlay** %117, align 8
  %119 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %120 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %119, i32 0, i32 2
  %121 = load %struct.omap_overlay**, %struct.omap_overlay*** %120, align 8
  %122 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %121, i64 0
  store %struct.omap_overlay* %118, %struct.omap_overlay** %122, align 8
  %123 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %124 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %103
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %93

128:                                              ; preds = %93
  %129 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %130 = call i32 @omapfb_allocate_all_fbs(%struct.omapfb2_device* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %135 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %325

139:                                              ; preds = %128
  %140 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %177, %139
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %144 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %141
  %148 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %149 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %148, i32 0, i32 2
  %150 = load %struct.fb_info**, %struct.fb_info*** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %150, i64 %152
  %154 = load %struct.fb_info*, %struct.fb_info** %153, align 8
  store %struct.fb_info* %154, %struct.fb_info** %9, align 8
  %155 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %156 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %155)
  store %struct.omapfb_info* %156, %struct.omapfb_info** %10, align 8
  %157 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %158 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = call i32 @omapfb_get_mem_region(%struct.TYPE_5__* %159)
  %161 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %162 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %163 = call i32 @omapfb_fb_init(%struct.omapfb2_device* %161, %struct.fb_info* %162)
  store i32 %163, i32* %4, align 4
  %164 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %165 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %164, i32 0, i32 3
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = call i32 @omapfb_put_mem_region(%struct.TYPE_5__* %166)
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %147
  %171 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %172 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @dev_err(i32 %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %2, align 4
  br label %325

176:                                              ; preds = %147
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %141

180:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %207, %180
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %184 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %181
  %188 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %189 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %188, i32 0, i32 2
  %190 = load %struct.fb_info**, %struct.fb_info*** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %190, i64 %192
  %194 = load %struct.fb_info*, %struct.fb_info** %193, align 8
  store %struct.fb_info* %194, %struct.fb_info** %11, align 8
  %195 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %196 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %195)
  store %struct.omapfb_info* %196, %struct.omapfb_info** %12, align 8
  %197 = load %struct.omapfb_info*, %struct.omapfb_info** %12, align 8
  %198 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %197, i32 0, i32 3
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %187
  br label %207

204:                                              ; preds = %187
  %205 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %206 = call i32 @omapfb_clear_fb(%struct.fb_info* %205)
  br label %207

207:                                              ; preds = %204, %203
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %181

210:                                              ; preds = %181
  %211 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %212

212:                                              ; preds = %237, %210
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %215 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %212
  %219 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %220 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %219, i32 0, i32 2
  %221 = load %struct.fb_info**, %struct.fb_info*** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %221, i64 %223
  %225 = load %struct.fb_info*, %struct.fb_info** %224, align 8
  %226 = call i32 @register_framebuffer(%struct.fb_info* %225)
  store i32 %226, i32* %4, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %218
  %230 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %231 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %5, align 4
  %234 = call i32 (i32, i8*, ...) @dev_err(i32 %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  br label %325

236:                                              ; preds = %218
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %212

240:                                              ; preds = %212
  %241 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %277, %240
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %245 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %280

248:                                              ; preds = %242
  %249 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %250 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %249, i32 0, i32 2
  %251 = load %struct.fb_info**, %struct.fb_info*** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %251, i64 %253
  %255 = load %struct.fb_info*, %struct.fb_info** %254, align 8
  store %struct.fb_info* %255, %struct.fb_info** %13, align 8
  %256 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %257 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %256)
  store %struct.omapfb_info* %257, %struct.omapfb_info** %14, align 8
  %258 = load %struct.omapfb_info*, %struct.omapfb_info** %14, align 8
  %259 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %258, i32 0, i32 3
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = call i32 @omapfb_get_mem_region(%struct.TYPE_5__* %260)
  %262 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %263 = call i32 @omapfb_apply_changes(%struct.fb_info* %262, i32 1)
  store i32 %263, i32* %4, align 4
  %264 = load %struct.omapfb_info*, %struct.omapfb_info** %14, align 8
  %265 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %264, i32 0, i32 3
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = call i32 @omapfb_put_mem_region(%struct.TYPE_5__* %266)
  %268 = load i32, i32* %4, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %248
  %271 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %272 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i32, i8*, ...) @dev_err(i32 %273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %275 = load i32, i32* %4, align 4
  store i32 %275, i32* %2, align 4
  br label %325

276:                                              ; preds = %248
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %5, align 4
  br label %242

280:                                              ; preds = %242
  %281 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %282 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %323

285:                                              ; preds = %280
  %286 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %287 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %286, i32 0, i32 2
  %288 = load %struct.fb_info**, %struct.fb_info*** %287, align 8
  %289 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %288, i64 0
  %290 = load %struct.fb_info*, %struct.fb_info** %289, align 8
  %291 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %290)
  store %struct.omapfb_info* %291, %struct.omapfb_info** %15, align 8
  %292 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %293 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %322

296:                                              ; preds = %285
  %297 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %298 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %297, i32 0, i32 2
  %299 = load %struct.omap_overlay**, %struct.omap_overlay*** %298, align 8
  %300 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %299, i64 0
  %301 = load %struct.omap_overlay*, %struct.omap_overlay** %300, align 8
  store %struct.omap_overlay* %301, %struct.omap_overlay** %16, align 8
  %302 = load %struct.omap_overlay*, %struct.omap_overlay** %16, align 8
  %303 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %302, i32 0, i32 0
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %305, align 8
  %307 = load %struct.omap_overlay*, %struct.omap_overlay** %16, align 8
  %308 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %307, i32 0, i32 0
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = call i32 %306(%struct.TYPE_4__* %309)
  %311 = load %struct.omap_overlay*, %struct.omap_overlay** %16, align 8
  %312 = call i32 @omapfb_overlay_enable(%struct.omap_overlay* %311, i32 1)
  store i32 %312, i32* %4, align 4
  %313 = load i32, i32* %4, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %296
  %316 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %317 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i32, i8*, ...) @dev_err(i32 %318, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %320 = load i32, i32* %4, align 4
  store i32 %320, i32* %2, align 4
  br label %325

321:                                              ; preds = %296
  br label %322

322:                                              ; preds = %321, %285
  br label %323

323:                                              ; preds = %322, %280
  %324 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %325

325:                                              ; preds = %323, %315, %270, %229, %170, %133, %32
  %326 = load i32, i32* %2, align 4
  ret i32 %326
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

declare dso_local i32 @clear_fb_info(%struct.fb_info*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @omapfb_allocate_all_fbs(%struct.omapfb2_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @omapfb_get_mem_region(%struct.TYPE_5__*) #1

declare dso_local i32 @omapfb_fb_init(%struct.omapfb2_device*, %struct.fb_info*) #1

declare dso_local i32 @omapfb_put_mem_region(%struct.TYPE_5__*) #1

declare dso_local i32 @omapfb_clear_fb(%struct.fb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @omapfb_overlay_enable(%struct.omap_overlay*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
