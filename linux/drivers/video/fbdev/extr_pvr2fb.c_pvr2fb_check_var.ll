; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.pvr2fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TV_CLK = common dso_local global i64 0, align 8
@VGA_CLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid pixclock value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@video_output = common dso_local global i64 0, align 8
@VO_VGA = common dso_local global i64 0, align 8
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_SYNC_BROADCAST = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_ACTIVATE_MASK = common dso_local global i32 0, align 4
@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@PAL_VTOTAL = common dso_local global i32 0, align 4
@NTSC_VTOTAL = common dso_local global i32 0, align 4
@PAL_HTOTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid hsync total for PAL\0A\00", align 1
@NTSC_HTOTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid hsync total for NTSC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pvr2fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.pvr2fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.pvr2fb_par*
  store %struct.pvr2fb_par* %13, %struct.pvr2fb_par** %6, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TV_CLK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VGA_CLK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %392

32:                                               ; preds = %19, %2
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 320
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  store i32 320, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 240
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 2
  store i32 240, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %62
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp sle i32 %79, 16
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 5
  store i32 16, i32* %83, align 8
  br label %102

84:                                               ; preds = %76
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 24
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 5
  store i32 24, i32* %91, align 8
  br label %101

92:                                               ; preds = %84
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %95, 32
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 5
  store i32 32, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = call i32 @set_color_bitfields(%struct.fb_var_screeninfo* %103)
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %163

111:                                              ; preds = %102
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp sge i64 %119, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %116, %111
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 7
  store i64 0, i64* %129, align 8
  br label %162

130:                                              ; preds = %116
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = icmp sgt i64 %133, %141
  br i1 %142, label %156, label %143

143:                                              ; preds = %130
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = icmp sgt i64 %146, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %143, %130
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 8
  store i64 0, i64* %158, align 8
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 7
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %143
  br label %162

162:                                              ; preds = %161, %125
  br label %168

163:                                              ; preds = %102
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 8
  store i64 0, i64* %165, align 8
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 7
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %162
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %171, 480
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load i64, i64* @video_output, align 8
  %175 = load i64, i64* @VO_VGA, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %173, %168
  %184 = load i64, i64* @video_output, align 8
  %185 = load i64, i64* @VO_VGA, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %216

198:                                              ; preds = %183
  %199 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %202 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %198, %187
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 10
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* @FB_ACTIVATE_TEST, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %295

224:                                              ; preds = %216
  %225 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %226 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %229 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = add i32 %230, %233
  %235 = sub i32 %227, %234
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 11
  store i32 %235, i32* %237, align 8
  %238 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %239 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %242 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = sub i32 %240, %243
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 12
  store i32 %244, i32* %246, align 4
  %247 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %248 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %251 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %254 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sub i32 %252, %255
  %257 = add i32 %249, %256
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 13
  store i32 %257, i32* %259, align 8
  %260 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %261 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %264 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %262, %265
  %267 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %268 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %267, i32 0, i32 14
  store i32 %266, i32* %268, align 4
  %269 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %270 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %273 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %274, %277
  %279 = sub i32 %271, %278
  %280 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %281 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %280, i32 0, i32 15
  store i32 %279, i32* %281, align 8
  %282 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %283 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %286 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %289 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = sub i32 %287, %290
  %292 = add i32 %284, %291
  %293 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %294 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %293, i32 0, i32 16
  store i32 %292, i32* %294, align 4
  br label %295

295:                                              ; preds = %224, %216
  %296 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %297 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %296, i32 0, i32 12
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = add i32 %298, %301
  %303 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %304 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 8
  %306 = add i32 %302, %305
  %307 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %308 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %307, i32 0, i32 13
  %309 = load i32, i32* %308, align 8
  %310 = add i32 %306, %309
  store i32 %310, i32* %8, align 4
  %311 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %312 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %311, i32 0, i32 14
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %315 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %313, %316
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 15
  %320 = load i32, i32* %319, align 8
  %321 = add i32 %317, %320
  %322 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %323 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %322, i32 0, i32 16
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %321, %324
  store i32 %325, i32* %7, align 4
  %326 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %327 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %326, i32 0, i32 9
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %368

332:                                              ; preds = %295
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load i32, i32* %7, align 4
  %341 = udiv i32 %340, 2
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %339, %332
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @PAL_VTOTAL, align 4
  %345 = load i32, i32* @NTSC_VTOTAL, align 4
  %346 = add nsw i32 %344, %345
  %347 = sdiv i32 %346, 2
  %348 = icmp ugt i32 %343, %347
  br i1 %348, label %349, label %358

349:                                              ; preds = %342
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* @PAL_HTOTAL, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %349
  %354 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %355 = load i32, i32* @EINVAL, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %3, align 4
  br label %392

357:                                              ; preds = %349
  br label %367

358:                                              ; preds = %342
  %359 = load i32, i32* %8, align 4
  %360 = load i32, i32* @NTSC_HTOTAL, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %366

362:                                              ; preds = %358
  %363 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %364 = load i32, i32* @EINVAL, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %3, align 4
  br label %392

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366, %357
  br label %368

368:                                              ; preds = %367, %295
  %369 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %370 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %374 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = call i64 @get_line_length(i64 %372, i32 %375)
  store i64 %376, i64* %9, align 8
  %377 = load i64, i64* %9, align 8
  %378 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %379 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = mul i64 %377, %381
  %383 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %384 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ugt i64 %382, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %368
  %389 = load i32, i32* @ENOMEM, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %3, align 4
  br label %392

391:                                              ; preds = %368
  store i32 0, i32* %3, align 4
  br label %392

392:                                              ; preds = %391, %388, %362, %353, %25
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @set_color_bitfields(%struct.fb_var_screeninfo*) #1

declare dso_local i64 @get_line_length(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
