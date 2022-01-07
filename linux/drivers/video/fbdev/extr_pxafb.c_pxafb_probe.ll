; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxafb_info = type { i32, i32*, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_12__, i32, %struct.pxafb_info*, %struct.pxafb_info*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.pxafb_mach_info = type { i32, i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"pxafb_probe\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@g_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"got a %dx%dx%d LCD\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid resolution or bit depth\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to initialize framebuffer device\0A\00", align 1
@FB_ACCEL_PXA3XX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"no I/O memory resource defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to allocate memory for DMA\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to allocate video RAM: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"no IRQ defined\0A\00", align 1
@pxafb_handle_irq = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"failed to initialize smartpanel\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to get suitable mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Failed to set parameters\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Failed to register framebuffer device: %d\0A\00", align 1
@C_ENABLE = common dso_local global i32 0, align 4
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@pxafb_freq_transition = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxafb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxafb_info*, align 8
  %5 = alloca %struct.pxafb_mach_info*, align 8
  %6 = alloca %struct.pxafb_mach_info*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.pxafb_mach_info* @dev_get_platdata(i32* %17)
  store %struct.pxafb_mach_info* %18, %struct.pxafb_mach_info** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pxafb_mach_info* @devm_kmalloc(i32* %20, i32 32, i32 %21)
  store %struct.pxafb_mach_info* %22, %struct.pxafb_mach_info** %5, align 8
  %23 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %24 = icmp ne %struct.pxafb_mach_info* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %388

26:                                               ; preds = %1
  %27 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %6, align 8
  %28 = icmp ne %struct.pxafb_mach_info* %27, null
  br i1 %28, label %29, label %74

29:                                               ; preds = %26
  %30 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %31 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %6, align 8
  %32 = bitcast %struct.pxafb_mach_info* %30 to i8*
  %33 = bitcast %struct.pxafb_mach_info* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 32, i1 false)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %6, align 8
  %37 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.TYPE_11__* @devm_kmalloc_array(i32* %35, i32 %38, i32 24, i32 %39)
  %41 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %42 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %41, i32 0, i32 4
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %42, align 8
  %43 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %44 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %43, i32 0, i32 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  br label %388

48:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %52 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %57 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %56, i32 0, i32 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %6, align 8
  %63 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %62, i32 0, i32 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = bitcast %struct.TYPE_11__* %61 to i8*
  %69 = bitcast %struct.TYPE_11__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %49

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %26
  %75 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %6, align 8
  %76 = icmp ne %struct.pxafb_mach_info* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call %struct.pxafb_mach_info* @of_pxafb_of_mach_info(i32* %79)
  store %struct.pxafb_mach_info* %80, %struct.pxafb_mach_info** %5, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %83 = call i64 @IS_ERR_OR_NULL(%struct.pxafb_mach_info* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %388

86:                                               ; preds = %81
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* @g_options, align 4
  %90 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %91 = call i32 @pxafb_parse_options(i32* %88, i32 %89, %struct.pxafb_mach_info* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %388

95:                                               ; preds = %86
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %99 = call i32 @pxafb_check_options(i32* %97, %struct.pxafb_mach_info* %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %103 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %102, i32 0, i32 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %108 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %107, i32 0, i32 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %113 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %112, i32 0, i32 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %111, i64 %116)
  %118 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %119 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %118, i32 0, i32 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %95
  %125 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %126 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %125, i32 0, i32 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %133 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %132, i32 0, i32 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131, %124, %95
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %388

144:                                              ; preds = %131
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %148 = call %struct.pxafb_info* @pxafb_init_fbinfo(i32* %146, %struct.pxafb_mach_info* %147)
  store %struct.pxafb_info* %148, %struct.pxafb_info** %4, align 8
  %149 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %150 = call i64 @IS_ERR(%struct.pxafb_info* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %156 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %157 = call i32 @PTR_ERR(%struct.pxafb_info* %156)
  store i32 %157, i32* %10, align 4
  br label %388

158:                                              ; preds = %144
  %159 = call i64 (...) @cpu_is_pxa3xx()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %163 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @FB_ACCEL_PXA3XX, align 4
  %168 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %169 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %161, %158
  %173 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %174 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %177 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %176, i32 0, i32 11
  store i32 %175, i32* %177, align 4
  %178 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %179 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %182 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %181, i32 0, i32 10
  store i32 %180, i32* %182, align 8
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call %struct.pxafb_info* @devm_regulator_get_optional(i32* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %186 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %187 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %186, i32 0, i32 9
  store %struct.pxafb_info* %185, %struct.pxafb_info** %187, align 8
  %188 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %189 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %188, i32 0, i32 9
  %190 = load %struct.pxafb_info*, %struct.pxafb_info** %189, align 8
  %191 = call i64 @IS_ERR(%struct.pxafb_info* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %172
  %194 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %195 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %194, i32 0, i32 9
  %196 = load %struct.pxafb_info*, %struct.pxafb_info** %195, align 8
  %197 = call i32 @PTR_ERR(%struct.pxafb_info* %196)
  %198 = load i32, i32* @EPROBE_DEFER, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load i32, i32* @EPROBE_DEFER, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %390

204:                                              ; preds = %193
  %205 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %206 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %205, i32 0, i32 9
  store %struct.pxafb_info* null, %struct.pxafb_info** %206, align 8
  br label %207

207:                                              ; preds = %204, %172
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = load i32, i32* @IORESOURCE_MEM, align 4
  %210 = call %struct.resource* @platform_get_resource(%struct.platform_device* %208, i32 %209, i32 0)
  store %struct.resource* %210, %struct.resource** %7, align 8
  %211 = load %struct.resource*, %struct.resource** %7, align 8
  %212 = icmp eq %struct.resource* %211, null
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i32 (i32*, i8*, ...) @dev_err(i32* %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %217 = load i32, i32* @ENODEV, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %10, align 4
  br label %388

219:                                              ; preds = %207
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = load %struct.resource*, %struct.resource** %7, align 8
  %223 = call %struct.pxafb_info* @devm_ioremap_resource(i32* %221, %struct.resource* %222)
  %224 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %225 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %224, i32 0, i32 8
  store %struct.pxafb_info* %223, %struct.pxafb_info** %225, align 8
  %226 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %227 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %226, i32 0, i32 8
  %228 = load %struct.pxafb_info*, %struct.pxafb_info** %227, align 8
  %229 = call i64 @IS_ERR(%struct.pxafb_info* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %219
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 (i32*, i8*, ...) @dev_err(i32* %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %235 = load i32, i32* @EBUSY, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %10, align 4
  br label %388

237:                                              ; preds = %219
  %238 = call i32 @PAGE_ALIGN(i32 4)
  %239 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %240 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  %241 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %242 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %245 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %248 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %247, i32 0, i32 0
  %249 = load i32, i32* @GFP_KERNEL, align 4
  %250 = call i32* @dma_alloc_coherent(i32 %243, i32 %246, i32* %248, i32 %249)
  %251 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %252 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %251, i32 0, i32 1
  store i32* %250, i32** %252, align 8
  %253 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %254 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %263

257:                                              ; preds = %237
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = call i32 (i32*, i8*, ...) @dev_err(i32* %259, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %10, align 4
  br label %388

263:                                              ; preds = %237
  %264 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %265 = call i32 @pxafb_init_video_memory(%struct.pxafb_info* %264)
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = load i32, i32* %10, align 4
  %272 = call i32 (i32*, i8*, ...) @dev_err(i32* %270, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* @ENOMEM, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %10, align 4
  br label %375

275:                                              ; preds = %263
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = call i32 @platform_get_irq(%struct.platform_device* %276, i32 0)
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* %9, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 (i32*, i8*, ...) @dev_err(i32* %282, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %284 = load i32, i32* @ENODEV, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %10, align 4
  br label %367

286:                                              ; preds = %275
  %287 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %288 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %287, i32 0, i32 0
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @pxafb_handle_irq, align 4
  %291 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %292 = call i32 @devm_request_irq(i32* %288, i32 %289, i32 %290, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.pxafb_info* %291)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %286
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %296, i32 0, i32 0
  %298 = load i32, i32* %10, align 4
  %299 = call i32 (i32*, i8*, ...) @dev_err(i32* %297, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* @EBUSY, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %10, align 4
  br label %367

302:                                              ; preds = %286
  %303 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %304 = call i32 @pxafb_smart_init(%struct.pxafb_info* %303)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %309 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %308, i32 0, i32 0
  %310 = call i32 (i32*, i8*, ...) @dev_err(i32* %309, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %367

311:                                              ; preds = %302
  %312 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %313 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 1
  %315 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %316 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %315, i32 0, i32 5
  %317 = call i32 @pxafb_check_var(i32* %314, %struct.TYPE_9__* %316)
  store i32 %317, i32* %10, align 4
  %318 = load i32, i32* %10, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %311
  %321 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %322 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %321, i32 0, i32 0
  %323 = call i32 (i32*, i8*, ...) @dev_err(i32* %322, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %367

324:                                              ; preds = %311
  %325 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %326 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %325, i32 0, i32 5
  %327 = call i32 @pxafb_set_par(%struct.TYPE_9__* %326)
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %324
  %331 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %332 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %331, i32 0, i32 0
  %333 = call i32 (i32*, i8*, ...) @dev_err(i32* %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %367

334:                                              ; preds = %324
  %335 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %336 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %337 = call i32 @platform_set_drvdata(%struct.platform_device* %335, %struct.pxafb_info* %336)
  %338 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %339 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %338, i32 0, i32 5
  %340 = call i32 @register_framebuffer(%struct.TYPE_9__* %339)
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %10, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %334
  %344 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %345 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %344, i32 0, i32 0
  %346 = load i32, i32* %10, align 4
  %347 = call i32 (i32*, i8*, ...) @dev_err(i32* %345, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %346)
  br label %354

348:                                              ; preds = %334
  %349 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %350 = call i32 @pxafb_overlay_init(%struct.pxafb_info* %349)
  %351 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %352 = load i32, i32* @C_ENABLE, align 4
  %353 = call i32 @set_ctrlr_state(%struct.pxafb_info* %351, i32 %352)
  store i32 0, i32* %2, align 4
  br label %390

354:                                              ; preds = %343
  %355 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %356 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %354
  %362 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %363 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = call i32 @fb_dealloc_cmap(%struct.TYPE_10__* %364)
  br label %366

366:                                              ; preds = %361, %354
  br label %367

367:                                              ; preds = %366, %330, %320, %307, %295, %280
  %368 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %369 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %372 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @free_pages_exact(i32 %370, i32 %373)
  br label %375

375:                                              ; preds = %367, %268
  %376 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %377 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %376, i32 0, i32 0
  %378 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %379 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %382 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %385 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @dma_free_coherent(i32* %377, i32 %380, i32* %383, i32 %386)
  br label %388

388:                                              ; preds = %375, %257, %231, %213, %152, %138, %94, %85, %47, %25
  %389 = load i32, i32* %10, align 4
  store i32 %389, i32* %2, align 4
  br label %390

390:                                              ; preds = %388, %348, %201
  %391 = load i32, i32* %2, align 4
  ret i32 %391
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.pxafb_mach_info* @dev_get_platdata(i32*) #1

declare dso_local %struct.pxafb_mach_info* @devm_kmalloc(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_11__* @devm_kmalloc_array(i32*, i32, i32, i32) #1

declare dso_local %struct.pxafb_mach_info* @of_pxafb_of_mach_info(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pxafb_mach_info*) #1

declare dso_local i32 @pxafb_parse_options(i32*, i32, %struct.pxafb_mach_info*) #1

declare dso_local i32 @pxafb_check_options(i32*, %struct.pxafb_mach_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.pxafb_info* @pxafb_init_fbinfo(i32*, %struct.pxafb_mach_info*) #1

declare dso_local i64 @IS_ERR(%struct.pxafb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.pxafb_info*) #1

declare dso_local i64 @cpu_is_pxa3xx(...) #1

declare dso_local %struct.pxafb_info* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.pxafb_info* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @pxafb_init_video_memory(%struct.pxafb_info*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.pxafb_info*) #1

declare dso_local i32 @pxafb_smart_init(%struct.pxafb_info*) #1

declare dso_local i32 @pxafb_check_var(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @pxafb_set_par(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxafb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @pxafb_overlay_init(%struct.pxafb_info*) #1

declare dso_local i32 @set_ctrlr_state(%struct.pxafb_info*, i32) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_10__*) #1

declare dso_local i32 @free_pages_exact(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
