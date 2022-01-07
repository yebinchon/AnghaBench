; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_set_bitfields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_set_bitfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64 }

@CNTL_BGR = common dso_local global i32 0, align 4
@CLCD_CAP_BGR = common dso_local global i32 0, align 4
@CLCD_CAP_RGB = common dso_local global i32 0, align 4
@CLCD_CAP_444 = common dso_local global i32 0, align 4
@CNTL_LCDTFT = common dso_local global i32 0, align 4
@CLCD_CAP_888 = common dso_local global i32 0, align 4
@CLCD_CAP_5551 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLCD_CAP_565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clcd_fb*, %struct.fb_var_screeninfo*)* @clcdfb_set_bitfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_set_bitfields(%struct.clcd_fb* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.clcd_fb*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %10 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %17 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %24 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %29 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %27, %32
  store i32 %33, i32* %5, align 4
  br label %53

34:                                               ; preds = %15, %2
  %35 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %36 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CNTL_BGR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @CLCD_CAP_BGR, align 4
  br label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @CLCD_CAP_RGB, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @CLCD_CAP_444, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %22
  %54 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %55 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CNTL_LCDTFT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @CLCD_CAP_888, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %53
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 4
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %251 [
    i32 1, label %83
    i32 2, label %83
    i32 4, label %83
    i32 8, label %83
    i32 16, label %120
    i32 32, label %232
  ]

83:                                               ; preds = %67, %67, %67, %67
  %84 = load i32, i32* @CLCD_CAP_5551, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %254

92:                                               ; preds = %83
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  br label %254

120:                                              ; preds = %67
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @CLCD_CAP_444, align 4
  %123 = load i32, i32* @CLCD_CAP_5551, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CLCD_CAP_565, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %121, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %120
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %254

132:                                              ; preds = %120
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 4
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @CLCD_CAP_444, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @CLCD_CAP_444, align 4
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %138, %132
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 5
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @CLCD_CAP_5551, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @CLCD_CAP_5551, align 4
  %160 = load i32, i32* %5, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %5, align 4
  br label %211

162:                                              ; preds = %153, %147
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 6
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @CLCD_CAP_565, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @CLCD_CAP_565, align 4
  %175 = load i32, i32* %5, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %5, align 4
  br label %210

177:                                              ; preds = %168, %162
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @CLCD_CAP_565, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  store i32 6, i32* %185, align 8
  %186 = load i32, i32* @CLCD_CAP_565, align 4
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %5, align 4
  br label %209

189:                                              ; preds = %177
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @CLCD_CAP_5551, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store i32 5, i32* %197, align 8
  %198 = load i32, i32* @CLCD_CAP_5551, align 4
  %199 = load i32, i32* %5, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %5, align 4
  br label %208

201:                                              ; preds = %189
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i32 4, i32* %204, align 8
  %205 = load i32, i32* @CLCD_CAP_444, align 4
  %206 = load i32, i32* %5, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %201, %194
  br label %209

209:                                              ; preds = %208, %182
  br label %210

210:                                              ; preds = %209, %173
  br label %211

211:                                              ; preds = %210, %158
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp sge i32 %215, 5
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %219 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  store i32 5, i32* %220, align 8
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i32 5, i32* %223, align 8
  br label %231

224:                                              ; preds = %211
  %225 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 4, i32* %227, align 8
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  store i32 4, i32* %230, align 8
  br label %231

231:                                              ; preds = %224, %217
  br label %254

232:                                              ; preds = %67
  %233 = load i32, i32* @CLCD_CAP_888, align 4
  %234 = load i32, i32* %5, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %232
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %6, align 4
  br label %254

241:                                              ; preds = %232
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  store i32 8, i32* %244, align 8
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  store i32 8, i32* %247, align 8
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 8, i32* %250, align 8
  br label %254

251:                                              ; preds = %67
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %251, %241, %238, %231, %129, %92, %89
  %255 = load i32, i32* %6, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %364

257:                                              ; preds = %254
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp sge i32 %260, 16
  br i1 %261, label %262, label %364

262:                                              ; preds = %257
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* @CLCD_CAP_BGR, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %262
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %271, 0
  br label %273

273:                                              ; preds = %267, %262
  %274 = phi i1 [ false, %262 ], [ %272, %267 ]
  %275 = zext i1 %274 to i32
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* @CLCD_CAP_RGB, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %273
  %281 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %282 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %284, 0
  br label %286

286:                                              ; preds = %280, %273
  %287 = phi i1 [ false, %273 ], [ %285, %280 ]
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %7, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @CLCD_CAP_BGR, align 4
  %297 = and i32 %295, %296
  store i32 %297, i32* %7, align 4
  br label %298

298:                                              ; preds = %294, %291, %286
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %332

301:                                              ; preds = %298
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 1
  store i64 0, i64* %304, align 8
  %305 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %306 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %308, %313
  %315 = trunc i64 %314 to i32
  %316 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %317 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  store i32 %315, i32* %318, align 4
  %319 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %320 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %324 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %322, %326
  %328 = sext i32 %327 to i64
  %329 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %330 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  store i64 %328, i64* %331, align 8
  br label %363

332:                                              ; preds = %298
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  store i64 0, i64* %335, align 8
  %336 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %337 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %341 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %339, %344
  %346 = trunc i64 %345 to i32
  %347 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %348 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 1
  store i32 %346, i32* %349, align 4
  %350 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %351 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %355 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %353, %357
  %359 = sext i32 %358 to i64
  %360 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %361 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 1
  store i64 %359, i64* %362, align 8
  br label %363

363:                                              ; preds = %332, %301
  br label %364

364:                                              ; preds = %363, %257, %254
  %365 = load i32, i32* %6, align 4
  ret i32 %365
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
