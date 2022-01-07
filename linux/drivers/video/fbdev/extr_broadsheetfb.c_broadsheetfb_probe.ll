; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheetfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheetfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.broadsheet_board* }
%struct.broadsheet_board = type { i32 (...)*, i32 (%struct.fb_info*)*, i32 (%struct.broadsheetfb_par*)*, i32, i32 (%struct.broadsheetfb_par*)* }
%struct.fb_info = type { i8*, i32, %struct.TYPE_11__, i32*, %struct.broadsheetfb_par*, %struct.TYPE_13__, %struct.TYPE_12__, i32* }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.broadsheetfb_par = type { i32, %struct.broadsheet_board*, i32, i32, i32, i32, %struct.fb_info* }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@panel_table = common dso_local global %struct.TYPE_9__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@broadsheetfb_ops = common dso_local global i32 0, align 4
@broadsheetfb_var = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@broadsheetfb_fix = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@broadsheet_write_reg = common dso_local global i32 0, align 4
@broadsheet_read_reg = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_VIRTFB = common dso_local global i32 0, align 4
@broadsheetfb_defio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate colormap\0A\00", align 1
@dev_attr_loadstore_waveform = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Broadsheet frame buffer, using %dK of video memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @broadsheetfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheetfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.broadsheet_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.broadsheetfb_par*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.broadsheet_board*, %struct.broadsheet_board** %18, align 8
  store %struct.broadsheet_board* %19, %struct.broadsheet_board** %5, align 8
  %20 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %21 = icmp ne %struct.broadsheet_board* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %244

25:                                               ; preds = %1
  %26 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %27 = getelementptr inbounds %struct.broadsheet_board, %struct.broadsheet_board* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @try_module_get(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %244

34:                                               ; preds = %25
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call %struct.fb_info* @framebuffer_alloc(i32 40, %struct.TYPE_10__* %36)
  store %struct.fb_info* %37, %struct.fb_info** %4, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %39 = icmp ne %struct.fb_info* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %238

41:                                               ; preds = %34
  %42 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %43 = getelementptr inbounds %struct.broadsheet_board, %struct.broadsheet_board* %42, i32 0, i32 0
  %44 = load i32 (...)*, i32 (...)** %43, align 8
  %45 = call i32 (...) %44()
  switch i32 %45, label %49 [
    i32 37, label %46
    i32 97, label %47
    i32 6, label %48
  ]

46:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %50

47:                                               ; preds = %41
  store i32 2, i32* %13, align 4
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %41, %48
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %49, %47, %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @panel_table, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @panel_table, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = call i32 @roundup(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @vzalloc(i32 %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %50
  br label %235

73:                                               ; preds = %50
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 7
  store i32* @broadsheetfb_ops, i32** %78, align 8
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @broadsheetfb_var, i32 0, i32 0), align 4
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @broadsheetfb_var, i32 0, i32 1), align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @broadsheetfb_var, i32 0, i32 2), align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @broadsheetfb_var, i32 0, i32 3), align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 6
  %85 = bitcast %struct.TYPE_12__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 4 bitcast (%struct.TYPE_12__* @broadsheetfb_var to i8*), i64 16, i1 false)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @broadsheetfb_fix, i32 0, i32 0), align 4
  %87 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 5
  %89 = bitcast %struct.TYPE_13__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 4 bitcast (%struct.TYPE_13__* @broadsheetfb_fix to i8*), i64 8, i1 false)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 4
  %96 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %95, align 8
  store %struct.broadsheetfb_par* %96, %struct.broadsheetfb_par** %9, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %99 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %101 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %102 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %101, i32 0, i32 6
  store %struct.fb_info* %100, %struct.fb_info** %102, align 8
  %103 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %104 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %105 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %104, i32 0, i32 1
  store %struct.broadsheet_board* %103, %struct.broadsheet_board** %105, align 8
  %106 = load i32, i32* @broadsheet_write_reg, align 4
  %107 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %108 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @broadsheet_read_reg, align 4
  %110 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %111 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %113 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %112, i32 0, i32 3
  %114 = call i32 @init_waitqueue_head(i32* %113)
  %115 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %116 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %115, i32 0, i32 2
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %119 = load i32, i32* @FBINFO_VIRTFB, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 3
  store i32* @broadsheetfb_defio, i32** %124, align 8
  %125 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %126 = call i32 @fb_deferred_io_init(%struct.fb_info* %125)
  %127 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 2
  %129 = call i32 @fb_alloc_cmap(%struct.TYPE_11__* %128, i32 16, i32 0)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %73
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @dev_err(%struct.TYPE_10__* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %232

136:                                              ; preds = %73
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 16
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 %142, 1
  %144 = mul nsw i32 %143, 65535
  %145 = sdiv i32 %144, 32
  %146 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %145, i32* %152, align 4
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %137

156:                                              ; preds = %137
  %157 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @memcpy(i32 %160, i32* %164, i32 64)
  %166 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @memcpy(i32 %169, i32* %173, i32 64)
  %175 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %176 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %175, i32 0, i32 1
  %177 = load %struct.broadsheet_board*, %struct.broadsheet_board** %176, align 8
  %178 = getelementptr inbounds %struct.broadsheet_board, %struct.broadsheet_board* %177, i32 0, i32 1
  %179 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %178, align 8
  %180 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %181 = call i32 %179(%struct.fb_info* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %156
  br label %228

185:                                              ; preds = %156
  %186 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %187 = getelementptr inbounds %struct.broadsheet_board, %struct.broadsheet_board* %186, i32 0, i32 2
  %188 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %187, align 8
  %189 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %190 = call i32 %188(%struct.broadsheetfb_par* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %222

194:                                              ; preds = %185
  %195 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %196 = call i32 @broadsheet_identify(%struct.broadsheetfb_par* %195)
  %197 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %198 = call i32 @broadsheet_init(%struct.broadsheetfb_par* %197)
  %199 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %200 = call i32 @register_framebuffer(%struct.fb_info* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %222

204:                                              ; preds = %194
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %207 = call i32 @platform_set_drvdata(%struct.platform_device* %205, %struct.fb_info* %206)
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = call i32 @device_create_file(%struct.TYPE_10__* %209, i32* @dev_attr_loadstore_waveform)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %219

214:                                              ; preds = %204
  %215 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %216 = load i32, i32* %7, align 4
  %217 = ashr i32 %216, 10
  %218 = call i32 @fb_info(%struct.fb_info* %215, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  store i32 0, i32* %2, align 4
  br label %244

219:                                              ; preds = %213
  %220 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %221 = call i32 @unregister_framebuffer(%struct.fb_info* %220)
  br label %222

222:                                              ; preds = %219, %203, %193
  %223 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %224 = getelementptr inbounds %struct.broadsheet_board, %struct.broadsheet_board* %223, i32 0, i32 4
  %225 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %224, align 8
  %226 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %9, align 8
  %227 = call i32 %225(%struct.broadsheetfb_par* %226)
  br label %228

228:                                              ; preds = %222, %184
  %229 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %230 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %229, i32 0, i32 2
  %231 = call i32 @fb_dealloc_cmap(%struct.TYPE_11__* %230)
  br label %232

232:                                              ; preds = %228, %132
  %233 = load i8*, i8** %8, align 8
  %234 = call i32 @vfree(i8* %233)
  br label %235

235:                                              ; preds = %232, %72
  %236 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %237 = call i32 @framebuffer_release(%struct.fb_info* %236)
  br label %238

238:                                              ; preds = %235, %40
  %239 = load %struct.broadsheet_board*, %struct.broadsheet_board** %5, align 8
  %240 = getelementptr inbounds %struct.broadsheet_board, %struct.broadsheet_board* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @module_put(i32 %241)
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %238, %214, %31, %22
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i8* @vzalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fb_deferred_io_init(%struct.fb_info*) #1

declare dso_local i32 @fb_alloc_cmap(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @broadsheet_identify(%struct.broadsheetfb_par*) #1

declare dso_local i32 @broadsheet_init(%struct.broadsheetfb_par*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_11__*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
