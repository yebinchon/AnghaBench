; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_var_to_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_var_to_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@PIXFMT_PSEUDOCOLOR = common dso_local global i32 0, align 4
@PIXFMT_YUV422P = common dso_local global i32 0, align 4
@PIXFMT_YVU422P = common dso_local global i32 0, align 4
@PIXFMT_YUV420P = common dso_local global i32 0, align 4
@PIXFMT_YVU420P = common dso_local global i32 0, align 4
@PIXFMT_YUYV = common dso_local global i32 0, align 4
@PIXFMT_UYVY = common dso_local global i32 0, align 4
@PIXFMT_VYUY = common dso_local global i32 0, align 4
@PIXFMT_RGB565 = common dso_local global i32 0, align 4
@PIXFMT_BGR565 = common dso_local global i32 0, align 4
@PIXFMT_RGB888PACK = common dso_local global i32 0, align 4
@PIXFMT_BGR888PACK = common dso_local global i32 0, align 4
@PIXFMT_RGBA888 = common dso_local global i32 0, align 4
@PIXFMT_BGRA888 = common dso_local global i32 0, align 4
@PIXFMT_RGB888UNPACK = common dso_local global i32 0, align 4
@PIXFMT_BGR888UNPACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @var_to_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_to_pixfmt(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %5 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @PIXFMT_PSEUDOCOLOR, align 4
  store i32 %9, i32* %2, align 4
  br label %263

10:                                               ; preds = %1
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @PIXFMT_YUV422P, align 4
  store i32 %44, i32* %2, align 4
  br label %263

45:                                               ; preds = %33
  %46 = load i32, i32* @PIXFMT_YVU422P, align 4
  store i32 %46, i32* %2, align 4
  br label %263

47:                                               ; preds = %27, %21, %15, %10
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %52, label %84

52:                                               ; preds = %47
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %74, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @PIXFMT_YUV420P, align 4
  store i32 %81, i32* %2, align 4
  br label %263

82:                                               ; preds = %70
  %83 = load i32, i32* @PIXFMT_YVU420P, align 4
  store i32 %83, i32* %2, align 4
  br label %263

84:                                               ; preds = %64, %58, %52, %47
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %129

89:                                               ; preds = %84
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %95, label %129

95:                                               ; preds = %89
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 16
  br i1 %100, label %101, label %129

101:                                              ; preds = %95
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @PIXFMT_YUYV, align 4
  store i32 %114, i32* %2, align 4
  br label %263

115:                                              ; preds = %107
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* @PIXFMT_UYVY, align 4
  store i32 %126, i32* %2, align 4
  br label %263

127:                                              ; preds = %115
  %128 = load i32, i32* @PIXFMT_VYUY, align 4
  store i32 %128, i32* %2, align 4
  br label %263

129:                                              ; preds = %101, %95, %89, %84
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 16
  br i1 %133, label %134, label %173

134:                                              ; preds = %129
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 5
  br i1 %139, label %140, label %173

140:                                              ; preds = %134
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %144, 6
  br i1 %145, label %146, label %173

146:                                              ; preds = %140
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sle i32 %150, 5
  br i1 %151, label %152, label %173

152:                                              ; preds = %146
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %152
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %162, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @PIXFMT_RGB565, align 4
  store i32 %169, i32* %2, align 4
  br label %263

170:                                              ; preds = %158
  %171 = load i32, i32* @PIXFMT_BGR565, align 4
  store i32 %171, i32* %2, align 4
  br label %263

172:                                              ; preds = %152
  br label %173

173:                                              ; preds = %172, %146, %140, %134, %129
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sle i32 %176, 32
  br i1 %177, label %178, label %260

178:                                              ; preds = %173
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sle i32 %182, 8
  br i1 %183, label %184, label %260

184:                                              ; preds = %178
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sle i32 %188, 8
  br i1 %189, label %190, label %260

190:                                              ; preds = %184
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sle i32 %194, 8
  br i1 %195, label %196, label %260

196:                                              ; preds = %190
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 24
  br i1 %200, label %201, label %221

201:                                              ; preds = %196
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %201
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp sge i64 %211, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %207
  %218 = load i32, i32* @PIXFMT_RGB888PACK, align 4
  store i32 %218, i32* %2, align 4
  br label %263

219:                                              ; preds = %207
  %220 = load i32, i32* @PIXFMT_BGR888PACK, align 4
  store i32 %220, i32* %2, align 4
  br label %263

221:                                              ; preds = %201, %196
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 32
  br i1 %225, label %226, label %246

226:                                              ; preds = %221
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 24
  br i1 %231, label %232, label %246

232:                                              ; preds = %226
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp sge i64 %236, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %232
  %243 = load i32, i32* @PIXFMT_RGBA888, align 4
  store i32 %243, i32* %2, align 4
  br label %263

244:                                              ; preds = %232
  %245 = load i32, i32* @PIXFMT_BGRA888, align 4
  store i32 %245, i32* %2, align 4
  br label %263

246:                                              ; preds = %226, %221
  %247 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %248 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp sge i64 %250, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %246
  %257 = load i32, i32* @PIXFMT_RGB888UNPACK, align 4
  store i32 %257, i32* %2, align 4
  br label %263

258:                                              ; preds = %246
  %259 = load i32, i32* @PIXFMT_BGR888UNPACK, align 4
  store i32 %259, i32* %2, align 4
  br label %263

260:                                              ; preds = %190, %184, %178, %173
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %260, %258, %256, %244, %242, %219, %217, %170, %168, %127, %125, %113, %82, %80, %45, %43, %8
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
