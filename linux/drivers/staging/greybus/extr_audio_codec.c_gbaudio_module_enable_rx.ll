; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_module_enable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_module_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_codec_info = type { i32 }
%struct.gbaudio_module_info = type { i32, i32 }
%struct.gbaudio_data_connection = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.gbaudio_stream_params = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"%d:DATA connection missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to fetch dai_stream pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GBAUDIO_CODEC_STARTUP = common dso_local global i32 0, align 4
@AUDIO_APBRIDGEA_DIRECTION_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"reg_cport failed:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Dynamic Register %d DAI\0A\00", align 1
@GBAUDIO_CODEC_HWPARAMS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"set_pcm failed:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Dynamic hw_params %d DAI\0A\00", align 1
@GBAUDIO_CODEC_PREPARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"set_rx_data_size failed:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"activate_rx failed:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Dynamic prepare %d DAI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_codec_info*, %struct.gbaudio_module_info*, i32)* @gbaudio_module_enable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_module_enable_rx(%struct.gbaudio_codec_info* %0, %struct.gbaudio_module_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbaudio_codec_info*, align 8
  %6 = alloca %struct.gbaudio_module_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.gbaudio_data_connection*, align 8
  %18 = alloca %struct.gbaudio_stream_params*, align 8
  store %struct.gbaudio_codec_info* %0, %struct.gbaudio_codec_info** %5, align 8
  store %struct.gbaudio_module_info* %1, %struct.gbaudio_module_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.gbaudio_data_connection* @find_data(%struct.gbaudio_module_info* %19, i32 %20)
  store %struct.gbaudio_data_connection* %21, %struct.gbaudio_data_connection** %17, align 8
  %22 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %23 = icmp ne %struct.gbaudio_data_connection* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %26 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %194

32:                                               ; preds = %3
  %33 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %34 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %42 = call %struct.gbaudio_stream_params* @find_dai_stream_params(%struct.gbaudio_codec_info* %39, i32 %40, i64 %41)
  store %struct.gbaudio_stream_params* %42, %struct.gbaudio_stream_params** %18, align 8
  %43 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %18, align 8
  %44 = icmp ne %struct.gbaudio_stream_params* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %47 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %194

52:                                               ; preds = %32
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @GBAUDIO_CODEC_STARTUP, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  store i64 0, i64* %11, align 8
  %57 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %58 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %63 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* @AUDIO_APBRIDGEA_DIRECTION_RX, align 4
  %68 = call i32 @gb_audio_apbridgea_register_cport(%struct.TYPE_2__* %64, i64 %65, i64 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  %72 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %73 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dev_err_ratelimited(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %194

78:                                               ; preds = %56
  %79 = load i32, i32* @GBAUDIO_CODEC_STARTUP, align 4
  %80 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %81 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %86 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %78, %52
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @GBAUDIO_CODEC_HWPARAMS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %18, align 8
  %96 = getelementptr inbounds %struct.gbaudio_stream_params, %struct.gbaudio_stream_params* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %15, align 4
  %98 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %18, align 8
  %99 = getelementptr inbounds %struct.gbaudio_stream_params, %struct.gbaudio_stream_params* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  %101 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %18, align 8
  %102 = getelementptr inbounds %struct.gbaudio_stream_params, %struct.gbaudio_stream_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %16, align 4
  %104 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %18, align 8
  %105 = getelementptr inbounds %struct.gbaudio_stream_params, %struct.gbaudio_stream_params* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %108 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  %112 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %113 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @gb_audio_gb_set_pcm(i32 %114, i64 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %94
  %124 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %125 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @dev_err_ratelimited(i32 %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %194

130:                                              ; preds = %94
  %131 = load i32, i32* @GBAUDIO_CODEC_HWPARAMS, align 4
  %132 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %133 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %138 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* %10, align 8
  %141 = call i32 @dev_dbg(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %130, %90
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @GBAUDIO_CODEC_PREPARE, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %193

146:                                              ; preds = %142
  %147 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %148 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %10, align 8
  %152 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %153 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @gb_audio_gb_set_rx_data_size(i32 %154, i64 %155, i32 192)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %146
  %160 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %161 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @dev_err_ratelimited(i32 %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %194

166:                                              ; preds = %146
  %167 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %168 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @gb_audio_gb_activate_rx(i32 %169, i64 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %176 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @dev_err_ratelimited(i32 %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %4, align 4
  br label %194

181:                                              ; preds = %166
  %182 = load i32, i32* @GBAUDIO_CODEC_PREPARE, align 4
  %183 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %17, align 8
  %184 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %6, align 8
  %189 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %10, align 8
  %192 = call i32 @dev_dbg(i32 %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %191)
  br label %193

193:                                              ; preds = %181, %142
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %193, %174, %159, %123, %71, %45, %24
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.gbaudio_data_connection* @find_data(%struct.gbaudio_module_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.gbaudio_stream_params* @find_dai_stream_params(%struct.gbaudio_codec_info*, i32, i64) #1

declare dso_local i32 @gb_audio_apbridgea_register_cport(%struct.TYPE_2__*, i64, i64, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @gb_audio_gb_set_pcm(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @gb_audio_gb_set_rx_data_size(i32, i64, i32) #1

declare dso_local i32 @gb_audio_gb_activate_rx(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
