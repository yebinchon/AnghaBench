; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_uac_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_uac_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__ }
%struct.snd_uac_chip = type { %struct.TYPE_5__, %struct.TYPE_4__, i64, %struct.g_audio* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.g_audio = type { %struct.uac_params }
%struct.uac_params = type { i32, i32, i32, i32, i32, i32 }

@uac_pcm_hardware = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S24_3LE = common dso_local global i8* null, align 8
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i8* null, align 8
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i8* null, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @uac_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uac_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_uac_chip*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.g_audio*, align 8
  %6 = alloca %struct.uac_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call %struct.snd_uac_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_uac_chip* %14, %struct.snd_uac_chip** %3, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %4, align 8
  %18 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %19 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %18, i32 0, i32 3
  %20 = load %struct.g_audio*, %struct.g_audio** %19, align 8
  store %struct.g_audio* %20, %struct.g_audio** %5, align 8
  %21 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %22 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %21, i32 0, i32 0
  store %struct.uac_params* %22, %struct.uac_params** %6, align 8
  %23 = load %struct.uac_params*, %struct.uac_params** %6, align 8
  %24 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.uac_params*, %struct.uac_params** %6, align 8
  %27 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.uac_params*, %struct.uac_params** %6, align 8
  %30 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.uac_params*, %struct.uac_params** %6, align 8
  %33 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.uac_params*, %struct.uac_params** %6, align 8
  %36 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.uac_params*, %struct.uac_params** %6, align 8
  %39 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %42 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_6__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 bitcast (%struct.TYPE_6__* @uac_pcm_hardware to i8*), i64 40, i1 false)
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %1
  %52 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %53 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %71 [
    i32 3, label %61
    i32 4, label %66
  ]

61:                                               ; preds = %51
  %62 = load i8*, i8** @SNDRV_PCM_FMTBIT_S24_3LE, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  store i8* %62, i8** %65, align 8
  br label %76

66:                                               ; preds = %51
  %67 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32_LE, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  store i8* %67, i8** %70, align 8
  br label %76

71:                                               ; preds = %51
  %72 = load i8*, i8** @SNDRV_PCM_FMTBIT_S16_LE, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %66, %61
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @num_channels(i32 %77)
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i8* %78, i8** %81, align 8
  %82 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %83 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 2, %85
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %86, %90
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %139

95:                                               ; preds = %1
  %96 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %97 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* %8, align 4
  switch i32 %104, label %115 [
    i32 3, label %105
    i32 4, label %110
  ]

105:                                              ; preds = %95
  %106 = load i8*, i8** @SNDRV_PCM_FMTBIT_S24_3LE, align 8
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 6
  store i8* %106, i8** %109, align 8
  br label %120

110:                                              ; preds = %95
  %111 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32_LE, align 8
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  store i8* %111, i8** %114, align 8
  br label %120

115:                                              ; preds = %95
  %116 = load i8*, i8** @SNDRV_PCM_FMTBIT_S16_LE, align 8
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  store i8* %116, i8** %119, align 8
  br label %120

120:                                              ; preds = %115, %110, %105
  %121 = load i32, i32* %12, align 4
  %122 = call i8* @num_channels(i32 %121)
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  store i8* %122, i8** %125, align 8
  %126 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %127 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 2, %129
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %130, %134
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %120, %76
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 4
  %147 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %148 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %152 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 5
  store i8* %150, i8** %153, align 8
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %155 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %156 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %154, i32 %155)
  ret i32 0
}

declare dso_local %struct.snd_uac_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @num_channels(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
