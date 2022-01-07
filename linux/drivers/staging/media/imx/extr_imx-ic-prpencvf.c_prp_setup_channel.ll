; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32, i32, %struct.ipuv3_channel*, %struct.ipuv3_channel*, %struct.ipuv3_channel*, %struct.v4l2_mbus_framefmt*, %struct.imx_media_video_dev* }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.imx_media_video_dev = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.imx_media_pixfmt* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32, i64 }
%struct.ipuv3_channel = type { i32 }
%struct.ipu_image = type { %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__ }

@PRPENCVF_SRC_PAD = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*, %struct.ipuv3_channel*, i32, i8*, i8*, i32)* @prp_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_setup_channel(%struct.prp_priv* %0, %struct.ipuv3_channel* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.prp_priv*, align 8
  %9 = alloca %struct.ipuv3_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.imx_media_video_dev*, align 8
  %15 = alloca %struct.imx_media_pixfmt*, align 8
  %16 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ipu_image, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %8, align 8
  store %struct.ipuv3_channel* %1, %struct.ipuv3_channel** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %22 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %21, i32 0, i32 6
  %23 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %22, align 8
  store %struct.imx_media_video_dev* %23, %struct.imx_media_video_dev** %14, align 8
  %24 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %25 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %24, i32 0, i32 5
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %25, align 8
  %27 = load i64, i64* @PRPENCVF_SRC_PAD, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i64 %27
  store %struct.v4l2_mbus_framefmt* %28, %struct.v4l2_mbus_framefmt** %16, align 8
  %29 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %14, align 8
  %30 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %29, i32 0, i32 2
  %31 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %30, align 8
  store %struct.imx_media_pixfmt* %31, %struct.imx_media_pixfmt** %15, align 8
  %32 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %33 = call i32 @ipu_cpmem_zero(%struct.ipuv3_channel* %32)
  %34 = call i32 @memset(%struct.ipu_image* %18, i32 0, i32 56)
  %35 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %36 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %14, align 8
  %37 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_8__* %35 to i8*
  %41 = bitcast %struct.TYPE_8__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 3
  %43 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %14, align 8
  %44 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_7__* %42 to i8*
  %46 = bitcast %struct.TYPE_7__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 12, i1 false)
  %47 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @V4L2_FIELD_IS_INTERLACED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %6
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @V4L2_FIELD_IS_SEQUENTIAL(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %52, %6
  %59 = phi i1 [ false, %6 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i1 [ false, %58 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %73 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @swap(i32 %79, i32 %82)
  %84 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @swap(i32 %86, i32 %89)
  %91 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %15, align 8
  %92 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  br label %108

99:                                               ; preds = %76
  %100 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %15, align 8
  %104 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = ashr i32 %106, 3
  br label %108

108:                                              ; preds = %99, %95
  %109 = phi i32 [ %98, %95 ], [ %107, %99 ]
  %110 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %69
  %113 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %114 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %119 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %120 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %119, i32 0, i32 2
  %121 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %120, align 8
  %122 = icmp eq %struct.ipuv3_channel* %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %117, %112
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 2
  store i8* %127, i8** %128, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %132 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %133 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %132, i32 0, i32 2
  %134 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %133, align 8
  %135 = icmp eq %struct.ipuv3_channel* %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136, %126
  %140 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %141 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %142 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %141, i32 0, i32 3
  %143 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %142, align 8
  %144 = icmp eq %struct.ipuv3_channel* %140, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %152 [
    i32 129, label %149
    i32 128, label %149
    i32 130, label %149
  ]

149:                                              ; preds = %145, %145, %145
  %150 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %151 = call i32 @ipu_cpmem_skip_odd_chroma_rows(%struct.ipuv3_channel* %150)
  br label %152

152:                                              ; preds = %145, %149
  br label %153

153:                                              ; preds = %152, %139
  %154 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %155 = call i32 @ipu_cpmem_set_image(%struct.ipuv3_channel* %154, %struct.ipu_image* %18)
  store i32 %155, i32* %20, align 4
  %156 = load i32, i32* %20, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %20, align 4
  store i32 %159, i32* %7, align 4
  br label %246

160:                                              ; preds = %153
  %161 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %162 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %163 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %162, i32 0, i32 4
  %164 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %163, align 8
  %165 = icmp eq %struct.ipuv3_channel* %161, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %168 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %169 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %168, i32 0, i32 3
  %170 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %169, align 8
  %171 = icmp eq %struct.ipuv3_channel* %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166, %160
  store i32 8, i32* %17, align 4
  %173 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %174 = call i32 @ipu_cpmem_set_block_mode(%struct.ipuv3_channel* %173)
  br label %183

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 15
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 8, i32 16
  store i32 %182, i32* %17, align 4
  br label %183

183:                                              ; preds = %175, %172
  %184 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @ipu_cpmem_set_burstsize(%struct.ipuv3_channel* %184, i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @ipu_cpmem_set_rotation(%struct.ipuv3_channel* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %183
  %194 = load i32, i32* %19, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %193
  %197 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %198 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %199 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %198, i32 0, i32 2
  %200 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %199, align 8
  %201 = icmp eq %struct.ipuv3_channel* %197, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %204 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %205 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 0, %211
  br label %217

213:                                              ; preds = %202
  %214 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  br label %217

217:                                              ; preds = %213, %208
  %218 = phi i32 [ %212, %208 ], [ %216, %213 ]
  %219 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ipu_cpmem_interlaced_scan(%struct.ipuv3_channel* %203, i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %196, %193
  %224 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %225 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %228 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %18, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @ipu_ic_task_idma_init(i32 %226, %struct.ipuv3_channel* %227, i32 %230, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %20, align 4
  %237 = load i32, i32* %20, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %223
  %240 = load i32, i32* %20, align 4
  store i32 %240, i32* %7, align 4
  br label %246

241:                                              ; preds = %223
  %242 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %243 = call i32 @ipu_cpmem_set_axi_id(%struct.ipuv3_channel* %242, i32 1)
  %244 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %245 = call i32 @ipu_idmac_set_double_buffer(%struct.ipuv3_channel* %244, i32 1)
  store i32 0, i32* %7, align 4
  br label %246

246:                                              ; preds = %241, %239, %158
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local i32 @ipu_cpmem_zero(%struct.ipuv3_channel*) #1

declare dso_local i32 @memset(%struct.ipu_image*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @V4L2_FIELD_IS_INTERLACED(i64) #1

declare dso_local i64 @V4L2_FIELD_IS_SEQUENTIAL(i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @ipu_cpmem_skip_odd_chroma_rows(%struct.ipuv3_channel*) #1

declare dso_local i32 @ipu_cpmem_set_image(%struct.ipuv3_channel*, %struct.ipu_image*) #1

declare dso_local i32 @ipu_cpmem_set_block_mode(%struct.ipuv3_channel*) #1

declare dso_local i32 @ipu_cpmem_set_burstsize(%struct.ipuv3_channel*, i32) #1

declare dso_local i32 @ipu_cpmem_set_rotation(%struct.ipuv3_channel*, i32) #1

declare dso_local i32 @ipu_cpmem_interlaced_scan(%struct.ipuv3_channel*, i32, i32) #1

declare dso_local i32 @ipu_ic_task_idma_init(i32, %struct.ipuv3_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_axi_id(%struct.ipuv3_channel*, i32) #1

declare dso_local i32 @ipu_idmac_set_double_buffer(%struct.ipuv3_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
