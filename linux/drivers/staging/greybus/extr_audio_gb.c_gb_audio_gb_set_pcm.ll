; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_set_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_set_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_audio_set_pcm_request = type { i8*, i8*, i8*, i8*, i32 }

@GB_AUDIO_TYPE_SET_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_gb_set_pcm(%struct.gb_connection* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.gb_audio_set_pcm_request, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.gb_audio_set_pcm_request, %struct.gb_audio_set_pcm_request* %13, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.gb_audio_set_pcm_request, %struct.gb_audio_set_pcm_request* %13, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.gb_audio_set_pcm_request, %struct.gb_audio_set_pcm_request* %13, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds %struct.gb_audio_set_pcm_request, %struct.gb_audio_set_pcm_request* %13, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds %struct.gb_audio_set_pcm_request, %struct.gb_audio_set_pcm_request* %13, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %28 = load i32, i32* @GB_AUDIO_TYPE_SET_PCM, align 4
  %29 = call i32 @gb_operation_sync(%struct.gb_connection* %27, i32 %28, %struct.gb_audio_set_pcm_request* %13, i32 40, i32* null, i32 0)
  ret i32 %29
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_audio_set_pcm_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
