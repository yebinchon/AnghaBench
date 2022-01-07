; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_get_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_get_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_audio_get_pcm_request = type { i32 }
%struct.gb_audio_get_pcm_response = type { i32, i32, i32, i32 }

@GB_AUDIO_TYPE_GET_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_gb_get_pcm(%struct.gb_connection* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.gb_audio_get_pcm_request, align 4
  %15 = alloca %struct.gb_audio_get_pcm_response, align 4
  %16 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.gb_audio_get_pcm_request, %struct.gb_audio_get_pcm_request* %14, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %21 = load i32, i32* @GB_AUDIO_TYPE_GET_PCM, align 4
  %22 = call i32 @gb_operation_sync(%struct.gb_connection* %20, i32 %21, %struct.gb_audio_get_pcm_request* %14, i32 4, %struct.gb_audio_get_pcm_response* %15, i32 16)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.gb_audio_get_pcm_response, %struct.gb_audio_get_pcm_response* %15, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.gb_audio_get_pcm_response, %struct.gb_audio_get_pcm_response* %15, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.gb_audio_get_pcm_response, %struct.gb_audio_get_pcm_response* %15, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %12, align 8
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.gb_audio_get_pcm_response, %struct.gb_audio_get_pcm_response* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %27, %25
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_audio_get_pcm_request*, i32, %struct.gb_audio_get_pcm_response*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
