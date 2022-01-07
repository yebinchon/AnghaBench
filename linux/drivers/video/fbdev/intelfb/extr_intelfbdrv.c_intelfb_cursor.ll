; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.fb_cursor = type { i32, i32, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.intelfb_info = type { i32, i64*, i32*, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@CURSOR_A_BASEADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"the cursor was killed - restore it !!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"size %d, %d   pos %d, %d\0A\00", align 1
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @intelfb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.intelfb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [64 x i32], align 16
  %19 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = call %struct.intelfb_info* @GET_DINFO(%struct.fb_info* %20)
  store %struct.intelfb_info* %21, %struct.intelfb_info** %6, align 8
  %22 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %23 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %364

29:                                               ; preds = %2
  %30 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %31 = call i32 @intelfbhw_cursor_hide(%struct.intelfb_info* %30)
  %32 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %33 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %38 = call i64 @IS_I9XX(%struct.intelfb_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %29
  %41 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %42 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %47 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 12
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i32 [ %44, %40 ], [ %50, %45 ]
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* @CURSOR_A_BASEADDR, align 4
  %55 = call i64 @INREG(i32 %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %149

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %61 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %65 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %69 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %73 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67, i64 %71, i64 %75)
  %77 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %78 = call i32 @intelfbhw_cursor_init(%struct.intelfb_info* %77)
  %79 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %80 = call i32 @intelfbhw_cursor_reset(%struct.intelfb_info* %79)
  %81 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %82 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %83 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %87 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @intelfbhw_cursor_setpos(%struct.intelfb_info* %81, i64 %85, i64 %89)
  %91 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %92 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 8
  br i1 %94, label %95, label %114

95:                                               ; preds = %58
  %96 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %97 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %100 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %8, align 8
  %105 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %106 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %109 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %9, align 8
  br label %123

114:                                              ; preds = %58
  %115 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %116 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %8, align 8
  %119 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %120 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %114, %95
  %124 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @intelfbhw_cursor_setcolor(%struct.intelfb_info* %124, i64 %125, i64 %126)
  %128 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %129 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %130 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %134 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %138 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @intelfbhw_cursor_load(%struct.intelfb_info* %128, i32 %132, i32 %136, i32* %139)
  %141 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %142 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %123
  %146 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %147 = call i32 @intelfbhw_cursor_show(%struct.intelfb_info* %146)
  br label %148

148:                                              ; preds = %145, %123
  store i32 0, i32* %3, align 4
  br label %364

149:                                              ; preds = %51
  %150 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %151 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @FB_CUR_SETPOS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %149
  %157 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %158 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %160, %164
  store i64 %165, i64* %10, align 8
  %166 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %167 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %169, %173
  store i64 %174, i64* %11, align 8
  %175 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @intelfbhw_cursor_setpos(%struct.intelfb_info* %175, i64 %176, i64 %177)
  br label %179

179:                                              ; preds = %156, %149
  %180 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %181 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %179
  %187 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %188 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %190, 64
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %194 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 64
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %186
  %199 = load i32, i32* @ENXIO, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %364

201:                                              ; preds = %192
  %202 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %203 = call i32 @intelfbhw_cursor_reset(%struct.intelfb_info* %202)
  br label %204

204:                                              ; preds = %201, %179
  %205 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %206 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %249

211:                                              ; preds = %204
  %212 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %213 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 8
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %218 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %221 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i64, i64* %219, i64 %223
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %12, align 8
  %226 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %227 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %226, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  %229 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %230 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i64, i64* %228, i64 %232
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %13, align 8
  br label %244

235:                                              ; preds = %211
  %236 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %237 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %12, align 8
  %240 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %241 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %13, align 8
  br label %244

244:                                              ; preds = %235, %216
  %245 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load i64, i64* %12, align 8
  %248 = call i32 @intelfbhw_cursor_setcolor(%struct.intelfb_info* %245, i64 %246, i64 %247)
  br label %249

249:                                              ; preds = %244, %204
  %250 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %251 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %254 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %255 = or i32 %253, %254
  %256 = and i32 %252, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %355

258:                                              ; preds = %249
  %259 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %260 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @ROUND_UP_TO(i32 %262, i32 8)
  %264 = sdiv i32 %263, 8
  %265 = sext i32 %264 to i64
  store i64 %265, i64* %14, align 8
  %266 = load i64, i64* %14, align 8
  %267 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %268 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = mul i64 %266, %271
  store i64 %272, i64* %15, align 8
  %273 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %274 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = inttoptr i64 %276 to i32*
  store i32* %277, i32** %16, align 8
  %278 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %279 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = inttoptr i64 %280 to i32*
  store i32* %281, i32** %17, align 8
  %282 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %283 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 1
  br i1 %286, label %287, label %290

287:                                              ; preds = %258
  %288 = load i32, i32* @ENXIO, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %3, align 4
  br label %364

290:                                              ; preds = %258
  %291 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %292 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  switch i32 %293, label %316 [
    i32 128, label %294
    i32 129, label %315
  ]

294:                                              ; preds = %290
  store i64 0, i64* %19, align 8
  br label %295

295:                                              ; preds = %311, %294
  %296 = load i64, i64* %19, align 8
  %297 = load i64, i64* %15, align 8
  %298 = icmp ult i64 %296, %297
  br i1 %298, label %299, label %314

299:                                              ; preds = %295
  %300 = load i32*, i32** %16, align 8
  %301 = load i64, i64* %19, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %17, align 8
  %305 = load i64, i64* %19, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = xor i32 %303, %307
  %309 = load i64, i64* %19, align 8
  %310 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %309
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %299
  %312 = load i64, i64* %19, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %19, align 8
  br label %295

314:                                              ; preds = %295
  br label %337

315:                                              ; preds = %290
  br label %316

316:                                              ; preds = %290, %315
  store i64 0, i64* %19, align 8
  br label %317

317:                                              ; preds = %333, %316
  %318 = load i64, i64* %19, align 8
  %319 = load i64, i64* %15, align 8
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %321, label %336

321:                                              ; preds = %317
  %322 = load i32*, i32** %16, align 8
  %323 = load i64, i64* %19, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %17, align 8
  %327 = load i64, i64* %19, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = and i32 %325, %329
  %331 = load i64, i64* %19, align 8
  %332 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %331
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %321
  %334 = load i64, i64* %19, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %19, align 8
  br label %317

336:                                              ; preds = %317
  br label %337

337:                                              ; preds = %336, %314
  %338 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %339 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %342 = load i64, i64* %15, align 8
  %343 = call i32 @memcpy(i32* %340, i32* %341, i64 %342)
  %344 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %345 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %346 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %350 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %354 = call i32 @intelfbhw_cursor_load(%struct.intelfb_info* %344, i32 %348, i32 %352, i32* %353)
  br label %355

355:                                              ; preds = %337, %249
  %356 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %357 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %362 = call i32 @intelfbhw_cursor_show(%struct.intelfb_info* %361)
  br label %363

363:                                              ; preds = %360, %355
  store i32 0, i32* %3, align 4
  br label %364

364:                                              ; preds = %363, %287, %198, %148, %26
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.intelfb_info* @GET_DINFO(%struct.fb_info*) #1

declare dso_local i32 @intelfbhw_cursor_hide(%struct.intelfb_info*) #1

declare dso_local i64 @IS_I9XX(%struct.intelfb_info*) #1

declare dso_local i64 @INREG(i32) #1

declare dso_local i32 @DBG_MSG(i8*, ...) #1

declare dso_local i32 @intelfbhw_cursor_init(%struct.intelfb_info*) #1

declare dso_local i32 @intelfbhw_cursor_reset(%struct.intelfb_info*) #1

declare dso_local i32 @intelfbhw_cursor_setpos(%struct.intelfb_info*, i64, i64) #1

declare dso_local i32 @intelfbhw_cursor_setcolor(%struct.intelfb_info*, i64, i64) #1

declare dso_local i32 @intelfbhw_cursor_load(%struct.intelfb_info*, i32, i32, i32*) #1

declare dso_local i32 @intelfbhw_cursor_show(%struct.intelfb_info*) #1

declare dso_local i32 @ROUND_UP_TO(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
