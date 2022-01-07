; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_module_disable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_module_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, i32 }
%struct.gbaudio_data_connection = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"%d:DATA connection missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@GBAUDIO_CODEC_HWPARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"deactivate_rx failed:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Dynamic deactivate %d DAI\0A\00", align 1
@GBAUDIO_CODEC_SHUTDOWN = common dso_local global i32 0, align 4
@AUDIO_APBRIDGEA_DIRECTION_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unregister_cport failed:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Dynamic Unregister %d DAI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, i32)* @gbaudio_module_disable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_module_disable_rx(%struct.gbaudio_module_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbaudio_module_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gbaudio_data_connection*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.gbaudio_data_connection* @find_data(%struct.gbaudio_module_info* %12, i32 %13)
  store %struct.gbaudio_data_connection* %14, %struct.gbaudio_data_connection** %11, align 8
  %15 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %16 = icmp ne %struct.gbaudio_data_connection* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %19 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %2
  %26 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %27 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @GBAUDIO_CODEC_HWPARAMS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %25
  %36 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %37 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %42 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @gb_audio_gb_deactivate_rx(i32 %43, i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %50 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_err_ratelimited(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %35
  %56 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %57 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @GBAUDIO_CODEC_HWPARAMS, align 4
  %62 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %63 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %55, %25
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @GBAUDIO_CODEC_SHUTDOWN, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %67
  store i64 0, i64* %9, align 8
  %72 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %73 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %78 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* @AUDIO_APBRIDGEA_DIRECTION_RX, align 4
  %83 = call i32 @gb_audio_apbridgea_unregister_cport(%struct.TYPE_2__* %79, i64 %80, i64 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %71
  %87 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %88 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @dev_err_ratelimited(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %106

93:                                               ; preds = %71
  %94 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %95 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @GBAUDIO_CODEC_SHUTDOWN, align 4
  %100 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %11, align 8
  %101 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %67
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %86, %48, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.gbaudio_data_connection* @find_data(%struct.gbaudio_module_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gb_audio_gb_deactivate_rx(i32, i64) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @gb_audio_apbridgea_unregister_cport(%struct.TYPE_2__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
