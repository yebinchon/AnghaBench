; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { i32, %struct.TYPE_3__, %struct.tridentfb_par* }
%struct.TYPE_3__ = type { i32 }
%struct.tridentfb_par = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nativex = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @tridentfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tridentfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.tridentfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.tridentfb_par*, %struct.tridentfb_par** %11, align 8
  store %struct.tridentfb_par* %12, %struct.tridentfb_par** %6, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 230000, i32* %9, align 4
  %16 = call i32 @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 24
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  store i32 32, i32* %21, align 4
  store i32 32, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 8
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 16
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %323

34:                                               ; preds = %28, %25, %22
  %35 = load %struct.tridentfb_par*, %struct.tridentfb_par** %6, align 8
  %36 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 129
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %323

45:                                               ; preds = %39, %34
  %46 = load %struct.tridentfb_par*, %struct.tridentfb_par** %6, align 8
  %47 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* @nativex, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @nativex, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %323

62:                                               ; preds = %53, %50, %45
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 7
  %67 = and i32 %66, -8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %62
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %83
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 4095
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 2048
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %97
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %323

110:                                              ; preds = %102
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 65535
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %323

118:                                              ; preds = %110
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sdiv i32 %123, 8
  store i32 %124, i32* %8, align 4
  %125 = load %struct.tridentfb_par*, %struct.tridentfb_par** %6, align 8
  %126 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @is3Dchip(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %191, label %130

130:                                              ; preds = %118
  %131 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %132 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %191, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %8, align 4
  %139 = icmp sle i32 %138, 512
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = sdiv i32 4096, %141
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  br label %184

145:                                              ; preds = %137
  %146 = load i32, i32* %8, align 4
  %147 = icmp sle i32 %146, 1024
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = sdiv i32 8192, %149
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %183

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = icmp sle i32 %154, 2048
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = sdiv i32 16384, %157
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  br label %182

161:                                              ; preds = %153
  %162 = load i32, i32* %8, align 4
  %163 = icmp sle i32 %162, 4096
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = sdiv i32 32768, %165
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  br label %181

169:                                              ; preds = %161
  %170 = load i32, i32* %8, align 4
  %171 = icmp sle i32 %170, 8192
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = sdiv i32 65536, %173
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  br label %180

177:                                              ; preds = %169
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %323

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %164
  br label %182

182:                                              ; preds = %181, %156
  br label %183

183:                                              ; preds = %182, %148
  br label %184

184:                                              ; preds = %183, %140
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sdiv i32 %189, 8
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %184, %130, %118
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %194 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %197 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %195, %198
  %200 = mul nsw i32 %192, %199
  %201 = icmp sgt i32 %200, 4194304
  br i1 %201, label %202, label %211

202:                                              ; preds = %191
  %203 = load i32, i32* %8, align 4
  %204 = sdiv i32 4194304, %203
  %205 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %206 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %204, %207
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %202, %191
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %214 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  %217 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp sgt i32 %216, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %211
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %3, align 4
  br label %323

225:                                              ; preds = %211
  %226 = load i32, i32* %7, align 4
  switch i32 %226, label %284 [
    i32 8, label %227
    i32 16, label %246
    i32 32, label %265
  ]

227:                                              ; preds = %225
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  store i32 0, i32* %230, align 4
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  store i32 8, i32* %233, align 4
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 7
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 8
  %238 = bitcast %struct.TYPE_4__* %235 to i8*
  %239 = bitcast %struct.TYPE_4__* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %238, i8* align 4 %239, i64 8, i1 false)
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 6
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 8
  %244 = bitcast %struct.TYPE_4__* %241 to i8*
  %245 = bitcast %struct.TYPE_4__* %243 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 %245, i64 8, i1 false)
  br label %287

246:                                              ; preds = %225
  %247 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %248 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %247, i32 0, i32 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  store i32 11, i32* %249, align 4
  %250 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %251 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  store i32 5, i32* %252, align 4
  %253 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %254 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  store i32 0, i32* %255, align 4
  %256 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %257 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  store i32 5, i32* %258, align 4
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 7
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  store i32 6, i32* %261, align 4
  %262 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %263 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  store i32 5, i32* %264, align 4
  br label %287

265:                                              ; preds = %225
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  store i32 16, i32* %268, align 4
  %269 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %270 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  store i32 8, i32* %271, align 4
  %272 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %273 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %272, i32 0, i32 6
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  store i32 0, i32* %274, align 4
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  store i32 8, i32* %277, align 4
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  store i32 8, i32* %280, align 4
  %281 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %282 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %281, i32 0, i32 6
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  store i32 8, i32* %283, align 4
  br label %287

284:                                              ; preds = %225
  %285 = load i32, i32* @EINVAL, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %3, align 4
  br label %323

287:                                              ; preds = %265, %246, %227
  %288 = load %struct.tridentfb_par*, %struct.tridentfb_par** %6, align 8
  %289 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i64 @is_xp(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  store i32 350000, i32* %9, align 4
  br label %294

294:                                              ; preds = %293, %287
  %295 = load %struct.tridentfb_par*, %struct.tridentfb_par** %6, align 8
  %296 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  switch i32 %297, label %305 [
    i32 129, label %298
    i32 134, label %303
    i32 128, label %303
    i32 130, label %304
    i32 131, label %304
    i32 133, label %304
    i32 132, label %304
  ]

298:                                              ; preds = %294
  %299 = load i32, i32* %7, align 4
  %300 = icmp sge i32 %299, 16
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i32 45000, i32 90000
  store i32 %302, i32* %9, align 4
  br label %305

303:                                              ; preds = %294, %294
  store i32 135000, i32* %9, align 4
  br label %305

304:                                              ; preds = %294, %294, %294, %294
  store i32 170000, i32* %9, align 4
  br label %305

305:                                              ; preds = %294, %304, %303, %298
  %306 = load i32, i32* %7, align 4
  %307 = icmp eq i32 %306, 32
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32, i32* %9, align 4
  %310 = sdiv i32 %309, 2
  store i32 %310, i32* %9, align 4
  br label %311

311:                                              ; preds = %308, %305
  %312 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %313 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @PICOS2KHZ(i32 %314)
  %316 = load i32, i32* %9, align 4
  %317 = icmp sgt i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %311
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %3, align 4
  br label %323

321:                                              ; preds = %311
  %322 = call i32 @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %321, %318, %284, %222, %177, %115, %107, %59, %42, %31
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @is3Dchip(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_xp(i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
