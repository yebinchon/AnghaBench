; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_encode_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_encode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.atafb_par = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.falcon_hw }
%struct.falcon_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@fext = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@VCO_CLOCK25 = common dso_local global i32 0, align 4
@f25 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@f32 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@VCO_HSYPOS = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@VCO_VSYPOS = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@VMO_INTER = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@VMO_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@hwscroll = common dso_local global i32 0, align 4
@VCO_SHORTOFFS = common dso_local global i32 0, align 4
@mon_type = common dso_local global i64 0, align 8
@F_MON_VGA = common dso_local global i64 0, align 8
@screen_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @falcon_encode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_encode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.atafb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.falcon_hw*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %4, align 8
  %12 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %13 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store %struct.falcon_hw* %14, %struct.falcon_hw** %11, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = call i32 @memset(%struct.fb_var_screeninfo* %15, i32 0, i32 176)
  %17 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %18 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fext, i32 0, i32 0), align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %26 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VCO_CLOCK25, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @f25, i32 0, i32 0), align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @f32, i32 0, i32 0), align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi i32 [ %23, %22 ], [ %36, %35 ]
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 2
  store i32 -1, i32* %44, align 8
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 24
  store i32 0, i32* %46, align 8
  %47 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %48 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VCO_HSYPOS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 24
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %37
  %60 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %61 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VCO_VSYPOS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 24
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %77 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @VMO_INTER, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %72
  %89 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %90 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VMO_DOUBLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %103 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %106 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %104, %107
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %101
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %101
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %129, %122
  %135 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %136 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 1024
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 5
  store i32 1, i32* %142, align 4
  br label %184

143:                                              ; preds = %134
  %144 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %145 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 256
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 5
  store i32 16, i32* %151, align 4
  br label %183

152:                                              ; preds = %143
  %153 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %154 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 16
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 5
  store i32 8, i32* %160, align 4
  br label %182

161:                                              ; preds = %152
  %162 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %163 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 5
  store i32 4, i32* %168, align 4
  br label %181

169:                                              ; preds = %161
  %170 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %171 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 256
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 5
  store i32 2, i32* %176, align 4
  br label %180

177:                                              ; preds = %169
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 5
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %174
  br label %181

181:                                              ; preds = %180, %166
  br label %182

182:                                              ; preds = %181, %158
  br label %183

183:                                              ; preds = %182, %149
  br label %184

184:                                              ; preds = %183, %140
  %185 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %186 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, 16
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = sdiv i32 %188, %191
  %193 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %194 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %199 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %200, 16
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = sdiv i32 %201, %204
  %206 = add nsw i32 %197, %205
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 4
  %209 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %210 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %209, i32 0, i32 17
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %184
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 16
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %213, %184
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 16
  br i1 %222, label %223, label %251

223:                                              ; preds = %218
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 20
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  store i32 11, i32* %226, align 8
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 20
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  store i32 5, i32* %229, align 4
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 20
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  store i64 0, i64* %232, align 8
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 21
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  store i32 5, i32* %235, align 8
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 21
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  store i32 6, i32* %238, align 4
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 21
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 2
  store i64 0, i64* %241, align 8
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 22
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 22
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  store i32 5, i32* %247, align 4
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 22
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  br label %295

251:                                              ; preds = %218
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 20
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  store i32 0, i32* %254, align 8
  %255 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %256 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %255, i32 0, i32 16
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 4, i32 6
  %261 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %262 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %261, i32 0, i32 20
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 20
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %267, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %251
  %273 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %274 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 20
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  br label %279

279:                                              ; preds = %272, %251
  %280 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %281 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %280, i32 0, i32 20
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 2
  store i64 0, i64* %282, align 8
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 23
  store i64 0, i64* %284, align 8
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 22
  %287 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %288 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %287, i32 0, i32 21
  %289 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %290 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %289, i32 0, i32 20
  %291 = bitcast %struct.TYPE_7__* %288 to i8*
  %292 = bitcast %struct.TYPE_7__* %290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %291, i8* align 8 %292, i64 16, i1 false)
  %293 = bitcast %struct.TYPE_7__* %286 to i8*
  %294 = bitcast %struct.TYPE_7__* %288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %293, i8* align 8 %294, i64 16, i1 false)
  br label %295

295:                                              ; preds = %279, %223
  %296 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %297 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %296, i32 0, i32 19
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 2
  store i64 0, i64* %298, align 8
  %299 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %299, i32 0, i32 19
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  store i64 0, i64* %301, align 8
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 19
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  store i64 0, i64* %304, align 8
  %305 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %306 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %309 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %307, %310
  %312 = sdiv i32 %311, 8
  store i32 %312, i32* %5, align 4
  %313 = load i32, i32* @screen_len, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %295
  %316 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %317 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %315
  %321 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %322 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %325 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %324, i32 0, i32 8
  store i32 %323, i32* %325, align 8
  br label %332

326:                                              ; preds = %315
  %327 = load i32, i32* @screen_len, align 4
  %328 = load i32, i32* %5, align 4
  %329 = sdiv i32 %327, %328
  %330 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %331 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %330, i32 0, i32 8
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %326, %320
  br label %353

333:                                              ; preds = %295
  %334 = load i32, i32* @hwscroll, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %338 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = mul nsw i32 2, %339
  %341 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %342 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %341, i32 0, i32 8
  store i32 %340, i32* %342, align 8
  br label %352

343:                                              ; preds = %333
  %344 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %345 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @hwscroll, align 4
  %348 = mul nsw i32 %347, 16
  %349 = add nsw i32 %346, %348
  %350 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %351 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 8
  br label %352

352:                                              ; preds = %343, %336
  br label %353

353:                                              ; preds = %352, %332
  %354 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %355 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %354, i32 0, i32 18
  store i64 0, i64* %355, align 8
  %356 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %357 = call i32 @hxx_prescale(%struct.falcon_hw* %356)
  store i32 %357, i32* %6, align 4
  %358 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %359 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = ashr i32 %360, 2
  %362 = and i32 %361, 3
  %363 = ashr i32 4, %362
  store i32 %363, i32* %7, align 4
  %364 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %365 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @VCO_SHORTOFFS, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i32 64, i32 128
  store i32 %371, i32* %10, align 4
  %372 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %373 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 256
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %353
  store i32 0, i32* %9, align 4
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* %7, align 4
  %380 = mul nsw i32 16, %379
  %381 = add nsw i32 %378, %380
  %382 = load i32, i32* %6, align 4
  %383 = add nsw i32 %381, %382
  store i32 %383, i32* %8, align 4
  br label %422

384:                                              ; preds = %353
  %385 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %386 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = sdiv i32 128, %387
  %389 = add nsw i32 %388, 2
  %390 = load i32, i32* %7, align 4
  %391 = mul nsw i32 %389, %390
  store i32 %391, i32* %9, align 4
  %392 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %393 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %392, i32 0, i32 16
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %409

396:                                              ; preds = %384
  %397 = load i32, i32* %10, align 4
  %398 = add nsw i32 64, %397
  %399 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %400 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 4
  %402 = sdiv i32 128, %401
  %403 = add nsw i32 %402, 2
  %404 = load i32, i32* %7, align 4
  %405 = mul nsw i32 %403, %404
  %406 = add nsw i32 %398, %405
  %407 = load i32, i32* %6, align 4
  %408 = add nsw i32 %406, %407
  store i32 %408, i32* %8, align 4
  br label %421

409:                                              ; preds = %384
  %410 = load i32, i32* %10, align 4
  %411 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %412 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %411, i32 0, i32 5
  %413 = load i32, i32* %412, align 4
  %414 = sdiv i32 128, %413
  %415 = add nsw i32 %414, 18
  %416 = load i32, i32* %7, align 4
  %417 = mul nsw i32 %415, %416
  %418 = add nsw i32 %410, %417
  %419 = load i32, i32* %6, align 4
  %420 = add nsw i32 %418, %419
  store i32 %420, i32* %8, align 4
  br label %421

421:                                              ; preds = %409, %396
  br label %422

422:                                              ; preds = %421, %377
  %423 = load i32, i32* %8, align 4
  %424 = load i32, i32* %6, align 4
  %425 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %426 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %425, i32 0, i32 9
  %427 = load i32, i32* %426, align 4
  %428 = and i32 %427, 511
  %429 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %430 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %429, i32 0, i32 9
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, 512
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %422
  %435 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %436 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %435, i32 0, i32 10
  %437 = load i32, i32* %436, align 8
  %438 = add nsw i32 2, %437
  br label %440

439:                                              ; preds = %422
  br label %440

440:                                              ; preds = %439, %434
  %441 = phi i32 [ %438, %434 ], [ 0, %439 ]
  %442 = sub nsw i32 %428, %441
  %443 = mul nsw i32 %424, %442
  %444 = add nsw i32 %423, %443
  %445 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %446 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %445, i32 0, i32 9
  store i32 %444, i32* %446, align 4
  %447 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %448 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %447, i32 0, i32 16
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %440
  %452 = load i64, i64* @mon_type, align 8
  %453 = load i64, i64* @F_MON_VGA, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %470

455:                                              ; preds = %451, %440
  %456 = load i32, i32* %6, align 4
  %457 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %458 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %457, i32 0, i32 10
  %459 = load i32, i32* %458, align 8
  %460 = add nsw i32 %459, 2
  %461 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %462 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %461, i32 0, i32 11
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %460, %463
  %465 = mul nsw i32 %456, %464
  %466 = load i32, i32* %9, align 4
  %467 = sub nsw i32 %465, %466
  %468 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %469 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %468, i32 0, i32 10
  store i32 %467, i32* %469, align 8
  br label %483

470:                                              ; preds = %451
  %471 = load i32, i32* %6, align 4
  %472 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %473 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %472, i32 0, i32 10
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 %474, 2
  %476 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %477 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %476, i32 0, i32 12
  %478 = load i32, i32* %477, align 8
  %479 = sub nsw i32 %475, %478
  %480 = mul nsw i32 %471, %479
  %481 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %482 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %481, i32 0, i32 10
  store i32 %480, i32* %482, align 8
  br label %483

483:                                              ; preds = %470, %455
  %484 = load i32, i32* %6, align 4
  %485 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %486 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 8
  %488 = add nsw i32 %487, 2
  %489 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %490 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %489, i32 0, i32 13
  %491 = load i32, i32* %490, align 4
  %492 = sub nsw i32 %488, %491
  %493 = mul nsw i32 %484, %492
  %494 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %495 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %494, i32 0, i32 11
  store i32 %493, i32* %495, align 4
  %496 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %497 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = sdiv i32 %498, 2
  %500 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %501 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %500, i32 0, i32 12
  store i32 %499, i32* %501, align 8
  %502 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %503 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %502, i32 0, i32 14
  %504 = load i32, i32* %503, align 8
  %505 = add nsw i32 %504, 1
  %506 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %507 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %506, i32 0, i32 3
  %508 = load i32, i32* %507, align 4
  %509 = sub nsw i32 %505, %508
  %510 = add nsw i32 %509, 1
  %511 = sdiv i32 %510, 2
  %512 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %513 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %512, i32 0, i32 13
  store i32 %511, i32* %513, align 4
  %514 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %515 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %514, i32 0, i32 14
  %516 = load i32, i32* %515, align 8
  %517 = add nsw i32 %516, 1
  %518 = load %struct.falcon_hw*, %struct.falcon_hw** %11, align 8
  %519 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %518, i32 0, i32 15
  %520 = load i32, i32* %519, align 4
  %521 = sub nsw i32 %517, %520
  %522 = add nsw i32 %521, 1
  %523 = sdiv i32 %522, 2
  %524 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %525 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %524, i32 0, i32 14
  store i32 %523, i32* %525, align 8
  %526 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %527 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %545

532:                                              ; preds = %483
  %533 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %534 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %533, i32 0, i32 12
  %535 = load i32, i32* %534, align 8
  %536 = mul nsw i32 %535, 2
  store i32 %536, i32* %534, align 8
  %537 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %538 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %537, i32 0, i32 13
  %539 = load i32, i32* %538, align 4
  %540 = mul nsw i32 %539, 2
  store i32 %540, i32* %538, align 4
  %541 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %542 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %541, i32 0, i32 14
  %543 = load i32, i32* %542, align 8
  %544 = mul nsw i32 %543, 2
  store i32 %544, i32* %542, align 8
  br label %575

545:                                              ; preds = %483
  %546 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %547 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %546, i32 0, i32 3
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %574

552:                                              ; preds = %545
  %553 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %554 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %553, i32 0, i32 12
  %555 = load i32, i32* %554, align 8
  %556 = add nsw i32 %555, 1
  %557 = sdiv i32 %556, 2
  %558 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %559 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %558, i32 0, i32 12
  store i32 %557, i32* %559, align 8
  %560 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %561 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %560, i32 0, i32 13
  %562 = load i32, i32* %561, align 4
  %563 = add nsw i32 %562, 1
  %564 = sdiv i32 %563, 2
  %565 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %566 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %565, i32 0, i32 13
  store i32 %564, i32* %566, align 4
  %567 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %568 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %567, i32 0, i32 14
  %569 = load i32, i32* %568, align 8
  %570 = add nsw i32 %569, 1
  %571 = sdiv i32 %570, 2
  %572 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %573 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %572, i32 0, i32 14
  store i32 %571, i32* %573, align 8
  br label %574

574:                                              ; preds = %552, %545
  br label %575

575:                                              ; preds = %574, %532
  %576 = load i32, i32* %7, align 4
  %577 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %578 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = mul nsw i32 %579, %576
  store i32 %580, i32* %578, align 8
  %581 = load i32, i32* %7, align 4
  %582 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %583 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %582, i32 0, i32 9
  %584 = load i32, i32* %583, align 4
  %585 = sdiv i32 %584, %581
  store i32 %585, i32* %583, align 4
  %586 = load i32, i32* %7, align 4
  %587 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %588 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %587, i32 0, i32 10
  %589 = load i32, i32* %588, align 8
  %590 = sdiv i32 %589, %586
  store i32 %590, i32* %588, align 8
  %591 = load i32, i32* %7, align 4
  %592 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %593 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %592, i32 0, i32 11
  %594 = load i32, i32* %593, align 4
  %595 = sdiv i32 %594, %591
  store i32 %595, i32* %593, align 4
  %596 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %597 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %596, i32 0, i32 11
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %600 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %599, i32 0, i32 10
  %601 = load i32, i32* %600, align 8
  %602 = sub nsw i32 %601, %598
  store i32 %602, i32* %600, align 8
  %603 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %604 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %603, i32 0, i32 14
  %605 = load i32, i32* %604, align 8
  %606 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %607 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %606, i32 0, i32 13
  %608 = load i32, i32* %607, align 4
  %609 = sub nsw i32 %608, %605
  store i32 %609, i32* %607, align 4
  %610 = load i32, i32* @screen_base, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %622

612:                                              ; preds = %575
  %613 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %614 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @screen_base, align 4
  %617 = sub nsw i32 %615, %616
  %618 = load i32, i32* %5, align 4
  %619 = sdiv i32 %617, %618
  %620 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %621 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %620, i32 0, i32 15
  store i32 %619, i32* %621, align 4
  br label %625

622:                                              ; preds = %575
  %623 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %624 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %623, i32 0, i32 15
  store i32 0, i32* %624, align 4
  br label %625

625:                                              ; preds = %622, %612
  %626 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %627 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %626, i32 0, i32 17
  store i64 0, i64* %627, align 8
  %628 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %629 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %628, i32 0, i32 16
  store i64 0, i64* %629, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hxx_prescale(%struct.falcon_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
