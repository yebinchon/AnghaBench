; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.video_device = type { i32, i32*, i32*, i32, i32*, i32*, i32 (%struct.video_device*)*, i32 }
%struct.amvdec_core = type { i32, i32, %struct.device*, %struct.video_device*, i32, %struct.device*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.resource = type { i32 }
%struct.of_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dos\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't remap DOS memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"esparser\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't remap ESPARSER memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"amlogic,ao-sysctrl\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Couldn't regmap AO sysctrl\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dos_parser\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"vdec_1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"vdec_hevc\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@vdec_isr = common dso_local global i32 0, align 4
@vdec_threaded_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Couldn't register v4l2 device\0A\00", align 1
@vdec_dt_match = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"meson-video-decoder\00", align 1
@vdec_fops = common dso_local global i32 0, align 4
@vdec_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Failed registering video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vdec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.amvdec_core*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.amvdec_core* @devm_kzalloc(%struct.device* %13, i32 104, i32 %14)
  store %struct.amvdec_core* %15, %struct.amvdec_core** %6, align 8
  %16 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %17 = icmp ne %struct.amvdec_core* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %265

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %24 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %23, i32 0, i32 5
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.amvdec_core* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %30, %struct.resource** %7, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = call i8* @devm_ioremap_resource(%struct.device* %31, %struct.resource* %32)
  %34 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %35 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %34, i32 0, i32 13
  store i8* %33, i8** %35, align 8
  %36 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %37 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %36, i32 0, i32 13
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %21
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %45 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %44, i32 0, i32 13
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %265

48:                                               ; preds = %21
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %51, %struct.resource** %7, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.resource*, %struct.resource** %7, align 8
  %54 = call i8* @devm_ioremap_resource(%struct.device* %52, %struct.resource* %53)
  %55 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %56 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %55, i32 0, i32 12
  store i8* %54, i8** %56, align 8
  %57 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %58 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %57, i32 0, i32 12
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %48
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %66 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %65, i32 0, i32 12
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %265

69:                                               ; preds = %48
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @syscon_regmap_lookup_by_phandle(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %75 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %74, i32 0, i32 11
  store i8* %73, i8** %75, align 8
  %76 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %77 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %76, i32 0, i32 11
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %84 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %85 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %84, i32 0, i32 11
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %265

88:                                               ; preds = %69
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i8* @meson_canvas_get(%struct.device* %89)
  %91 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %92 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %91, i32 0, i32 10
  store i8* %90, i8** %92, align 8
  %93 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %94 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %100 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %99, i32 0, i32 10
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %265

103:                                              ; preds = %88
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i8* @devm_clk_get(%struct.device* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %107 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %109 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %108, i32 0, i32 9
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @EPROBE_DEFER, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %265

116:                                              ; preds = %103
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i8* @devm_clk_get(%struct.device* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %120 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %119, i32 0, i32 8
  store i8* %118, i8** %120, align 8
  %121 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %122 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @IS_ERR(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* @EPROBE_DEFER, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %265

129:                                              ; preds = %116
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i8* @devm_clk_get(%struct.device* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %133 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %135 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %134, i32 0, i32 7
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @IS_ERR(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* @EPROBE_DEFER, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %265

142:                                              ; preds = %129
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i8* @devm_clk_get(%struct.device* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %145 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %146 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  %147 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %148 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %147, i32 0, i32 6
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @IS_ERR(i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* @EPROBE_DEFER, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %265

155:                                              ; preds = %142
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = call i32 @platform_get_irq_byname(%struct.platform_device* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %2, align 4
  br label %265

162:                                              ; preds = %155
  %163 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %164 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %163, i32 0, i32 5
  %165 = load %struct.device*, %struct.device** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @vdec_isr, align 4
  %168 = load i32, i32* @vdec_threaded_isr, align 4
  %169 = load i32, i32* @IRQF_ONESHOT, align 4
  %170 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %171 = call i32 @devm_request_threaded_irq(%struct.device* %165, i32 %166, i32 %167, i32 %168, i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.amvdec_core* %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %2, align 4
  br label %265

176:                                              ; preds = %162
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %179 = call i32 @esparser_init(%struct.platform_device* %177, %struct.amvdec_core* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %2, align 4
  br label %265

184:                                              ; preds = %176
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %187 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %186, i32 0, i32 1
  %188 = call i32 @v4l2_device_register(%struct.device* %185, i32* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = call i32 @dev_err(%struct.device* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %265

196:                                              ; preds = %184
  %197 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %197, %struct.video_device** %5, align 8
  %198 = load %struct.video_device*, %struct.video_device** %5, align 8
  %199 = icmp ne %struct.video_device* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %261

203:                                              ; preds = %196
  %204 = load i32, i32* @vdec_dt_match, align 4
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = getelementptr inbounds %struct.device, %struct.device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.of_device_id* @of_match_node(i32 %204, i32 %207)
  store %struct.of_device_id* %208, %struct.of_device_id** %8, align 8
  %209 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %210 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %213 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.video_device*, %struct.video_device** %5, align 8
  %215 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %216 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %215, i32 0, i32 3
  store %struct.video_device* %214, %struct.video_device** %216, align 8
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %219 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %218, i32 0, i32 2
  store %struct.device* %217, %struct.device** %219, align 8
  %220 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %221 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %220, i32 0, i32 0
  %222 = call i32 @mutex_init(i32* %221)
  %223 = load %struct.video_device*, %struct.video_device** %5, align 8
  %224 = getelementptr inbounds %struct.video_device, %struct.video_device* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @strscpy(i32 %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %227 = load %struct.video_device*, %struct.video_device** %5, align 8
  %228 = getelementptr inbounds %struct.video_device, %struct.video_device* %227, i32 0, i32 6
  store i32 (%struct.video_device*)* @video_device_release, i32 (%struct.video_device*)** %228, align 8
  %229 = load %struct.video_device*, %struct.video_device** %5, align 8
  %230 = getelementptr inbounds %struct.video_device, %struct.video_device* %229, i32 0, i32 5
  store i32* @vdec_fops, i32** %230, align 8
  %231 = load %struct.video_device*, %struct.video_device** %5, align 8
  %232 = getelementptr inbounds %struct.video_device, %struct.video_device* %231, i32 0, i32 4
  store i32* @vdec_ioctl_ops, i32** %232, align 8
  %233 = load i32, i32* @VFL_DIR_M2M, align 4
  %234 = load %struct.video_device*, %struct.video_device** %5, align 8
  %235 = getelementptr inbounds %struct.video_device, %struct.video_device* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 8
  %236 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %237 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %236, i32 0, i32 1
  %238 = load %struct.video_device*, %struct.video_device** %5, align 8
  %239 = getelementptr inbounds %struct.video_device, %struct.video_device* %238, i32 0, i32 2
  store i32* %237, i32** %239, align 8
  %240 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %241 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %240, i32 0, i32 0
  %242 = load %struct.video_device*, %struct.video_device** %5, align 8
  %243 = getelementptr inbounds %struct.video_device, %struct.video_device* %242, i32 0, i32 1
  store i32* %241, i32** %243, align 8
  %244 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %245 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.video_device*, %struct.video_device** %5, align 8
  %248 = getelementptr inbounds %struct.video_device, %struct.video_device* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.video_device*, %struct.video_device** %5, align 8
  %250 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %251 = call i32 @video_set_drvdata(%struct.video_device* %249, %struct.amvdec_core* %250)
  %252 = load %struct.video_device*, %struct.video_device** %5, align 8
  %253 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %254 = call i32 @video_register_device(%struct.video_device* %252, i32 %253, i32 -1)
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %203
  %258 = load %struct.device*, %struct.device** %4, align 8
  %259 = call i32 @dev_err(%struct.device* %258, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %261

260:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %265

261:                                              ; preds = %257, %200
  %262 = load %struct.video_device*, %struct.video_device** %5, align 8
  %263 = call i32 @video_device_release(%struct.video_device* %262)
  %264 = load i32, i32* %10, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %261, %260, %191, %182, %174, %160, %152, %139, %126, %113, %98, %81, %62, %41, %18
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.amvdec_core* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.amvdec_core*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i8* @meson_canvas_get(%struct.device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.amvdec_core*) #1

declare dso_local i32 @esparser_init(%struct.platform_device*, %struct.amvdec_core*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, i32*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.amvdec_core*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
