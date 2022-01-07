; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_codec_clean_data_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_codec_clean_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.gbaudio_data_connection = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@gbcodec = common dso_local global %struct.TYPE_5__* null, align 8
@AUDIO_APBRIDGEA_DIRECTION_RX = common dso_local global i32 0, align 4
@GBAUDIO_CODEC_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbaudio_data_connection*)* @gbaudio_codec_clean_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbaudio_codec_clean_data_rx(%struct.gbaudio_data_connection* %0) #0 {
  %2 = alloca %struct.gbaudio_data_connection*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gbaudio_data_connection* %0, %struct.gbaudio_data_connection** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gbcodec, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i64 @list_is_singular(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %2, align 8
  %12 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @gb_audio_apbridgea_stop_rx(%struct.TYPE_6__* %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %45

18:                                               ; preds = %10
  %19 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %2, align 8
  %20 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @gb_audio_apbridgea_shutdown_rx(%struct.TYPE_6__* %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %45

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %1
  store i64 0, i64* %3, align 8
  %28 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %2, align 8
  %29 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  %33 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %2, align 8
  %34 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @AUDIO_APBRIDGEA_DIRECTION_RX, align 4
  %39 = call i32 @gb_audio_apbridgea_unregister_cport(%struct.TYPE_6__* %35, i64 %36, i64 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @GBAUDIO_CODEC_SHUTDOWN, align 4
  %41 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %2, align 8
  %42 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %27, %25, %17
  ret void
}

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @gb_audio_apbridgea_stop_rx(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gb_audio_apbridgea_shutdown_rx(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gb_audio_apbridgea_unregister_cport(%struct.TYPE_6__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
