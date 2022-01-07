; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_g_audio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_g_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_audio = type { i32, i32, %struct.TYPE_3__*, %struct.uac_params, %struct.snd_uac_chip* }
%struct.TYPE_3__ = type { i32 }
%struct.uac_params = type { i32, i32, i32 }
%struct.snd_uac_chip = type { %struct.uac_rtd_params, %struct.uac_rtd_params, %struct.snd_pcm*, %struct.snd_card*, %struct.g_audio* }
%struct.uac_rtd_params = type { i32, %struct.snd_uac_chip*, %struct.snd_uac_chip*, %struct.snd_uac_chip* }
%struct.snd_pcm = type { %struct.snd_uac_chip*, i32 }
%struct.snd_card = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@uac_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %i\00", align 1
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@BUFF_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_audio_setup(%struct.g_audio* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_audio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_uac_chip*, align 8
  %9 = alloca %struct.snd_card*, align 8
  %10 = alloca %struct.snd_pcm*, align 8
  %11 = alloca %struct.uac_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.uac_rtd_params*, align 8
  %16 = alloca %struct.uac_rtd_params*, align 8
  store %struct.g_audio* %0, %struct.g_audio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %18 = icmp ne %struct.g_audio* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %255

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snd_uac_chip* @kzalloc(i32 88, i32 %23)
  store %struct.snd_uac_chip* %24, %struct.snd_uac_chip** %8, align 8
  %25 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %26 = icmp ne %struct.snd_uac_chip* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %255

30:                                               ; preds = %22
  %31 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %32 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %33 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %32, i32 0, i32 4
  store %struct.snd_uac_chip* %31, %struct.snd_uac_chip** %33, align 8
  %34 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %35 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %36 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %35, i32 0, i32 4
  store %struct.g_audio* %34, %struct.g_audio** %36, align 8
  %37 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %38 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %37, i32 0, i32 3
  store %struct.uac_params* %38, %struct.uac_params** %11, align 8
  %39 = load %struct.uac_params*, %struct.uac_params** %11, align 8
  %40 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.uac_params*, %struct.uac_params** %11, align 8
  %43 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %30
  %48 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %49 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %48, i32 0, i32 0
  store %struct.uac_rtd_params* %49, %struct.uac_rtd_params** %15, align 8
  %50 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %51 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %52 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %52, i32 0, i32 3
  store %struct.snd_uac_chip* %50, %struct.snd_uac_chip** %53, align 8
  %54 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %55 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %58 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.uac_params*, %struct.uac_params** %11, align 8
  %60 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kcalloc(i32 %61, i32 4, i32 %62)
  %64 = bitcast i8* %63 to %struct.snd_uac_chip*
  %65 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %66 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %65, i32 0, i32 2
  store %struct.snd_uac_chip* %64, %struct.snd_uac_chip** %66, align 8
  %67 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %68 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %67, i32 0, i32 2
  %69 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %68, align 8
  %70 = icmp ne %struct.snd_uac_chip* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %47
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %231

74:                                               ; preds = %47
  %75 = load %struct.uac_params*, %struct.uac_params** %11, align 8
  %76 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %79 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kcalloc(i32 %77, i32 %80, i32 %81)
  %83 = bitcast i8* %82 to %struct.snd_uac_chip*
  %84 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %85 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %84, i32 0, i32 1
  store %struct.snd_uac_chip* %83, %struct.snd_uac_chip** %85, align 8
  %86 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %87 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %86, i32 0, i32 1
  %88 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %87, align 8
  %89 = icmp ne %struct.snd_uac_chip* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %74
  %91 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %15, align 8
  %92 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %231

95:                                               ; preds = %74
  br label %96

96:                                               ; preds = %95, %30
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %148

99:                                               ; preds = %96
  %100 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %101 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %100, i32 0, i32 1
  store %struct.uac_rtd_params* %101, %struct.uac_rtd_params** %16, align 8
  %102 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %103 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %104 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %104, i32 0, i32 3
  store %struct.snd_uac_chip* %102, %struct.snd_uac_chip** %105, align 8
  %106 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %107 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %110 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.uac_params*, %struct.uac_params** %11, align 8
  %112 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kcalloc(i32 %113, i32 4, i32 %114)
  %116 = bitcast i8* %115 to %struct.snd_uac_chip*
  %117 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %118 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %117, i32 0, i32 2
  store %struct.snd_uac_chip* %116, %struct.snd_uac_chip** %118, align 8
  %119 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %120 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %119, i32 0, i32 2
  %121 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %120, align 8
  %122 = icmp ne %struct.snd_uac_chip* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %99
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %14, align 4
  br label %231

126:                                              ; preds = %99
  %127 = load %struct.uac_params*, %struct.uac_params** %11, align 8
  %128 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %131 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @kcalloc(i32 %129, i32 %132, i32 %133)
  %135 = bitcast i8* %134 to %struct.snd_uac_chip*
  %136 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %137 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %136, i32 0, i32 1
  store %struct.snd_uac_chip* %135, %struct.snd_uac_chip** %137, align 8
  %138 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %139 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %138, i32 0, i32 1
  %140 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %139, align 8
  %141 = icmp ne %struct.snd_uac_chip* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %126
  %143 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %16, align 8
  %144 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %14, align 4
  br label %231

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147, %96
  %149 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %150 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %149, i32 0, i32 2
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* @THIS_MODULE, align 4
  %154 = call i32 @snd_card_new(i32* %152, i32 -1, i32* null, i32 %153, i32 0, %struct.snd_card** %9)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %231

158:                                              ; preds = %148
  %159 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %160 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %161 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %160, i32 0, i32 3
  store %struct.snd_card* %159, %struct.snd_card** %161, align 8
  %162 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %163 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %162, i32 0, i32 3
  %164 = load %struct.snd_card*, %struct.snd_card** %163, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = call i32 @snd_pcm_new(%struct.snd_card* %164, i8* %165, i32 0, i32 %169, i32 %173, %struct.snd_pcm** %10)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %158
  br label %228

178:                                              ; preds = %158
  %179 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %180 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @strlcpy(i32 %181, i8* %182, i32 4)
  %184 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %185 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %186 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %185, i32 0, i32 0
  store %struct.snd_uac_chip* %184, %struct.snd_uac_chip** %186, align 8
  %187 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %188 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %189 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %188, i32 0, i32 2
  store %struct.snd_pcm* %187, %struct.snd_pcm** %189, align 8
  %190 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %191 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %192 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %190, i32 %191, i32* @uac_pcm_ops)
  %193 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %194 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %195 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %193, i32 %194, i32* @uac_pcm_ops)
  %196 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %197 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 @strlcpy(i32 %198, i8* %199, i32 4)
  %201 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %202 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @strlcpy(i32 %203, i8* %204, i32 4)
  %206 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %207 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i8*, i8** %7, align 8
  %210 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %211 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @sprintf(i32 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %209, i32 %214)
  %216 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %217 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %218 = load i32, i32* @GFP_KERNEL, align 4
  %219 = call i32 @snd_dma_continuous_data(i32 %218)
  %220 = load i32, i32* @BUFF_SIZE_MAX, align 4
  %221 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %216, i32 %217, i32 %219, i32 0, i32 %220)
  %222 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %223 = call i32 @snd_card_register(%struct.snd_card* %222)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %255

227:                                              ; preds = %178
  br label %228

228:                                              ; preds = %227, %177
  %229 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %230 = call i32 @snd_card_free(%struct.snd_card* %229)
  br label %231

231:                                              ; preds = %228, %157, %142, %123, %90, %71
  %232 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %233 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %233, i32 0, i32 2
  %235 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %234, align 8
  %236 = call i32 @kfree(%struct.snd_uac_chip* %235)
  %237 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %238 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %238, i32 0, i32 2
  %240 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %239, align 8
  %241 = call i32 @kfree(%struct.snd_uac_chip* %240)
  %242 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %243 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %243, i32 0, i32 1
  %245 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %244, align 8
  %246 = call i32 @kfree(%struct.snd_uac_chip* %245)
  %247 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %248 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %248, i32 0, i32 1
  %250 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %249, align 8
  %251 = call i32 @kfree(%struct.snd_uac_chip* %250)
  %252 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %8, align 8
  %253 = call i32 @kfree(%struct.snd_uac_chip* %252)
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %231, %226, %27, %19
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local %struct.snd_uac_chip* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snd_card_new(i32*, i32, i32*, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

declare dso_local i32 @kfree(%struct.snd_uac_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
