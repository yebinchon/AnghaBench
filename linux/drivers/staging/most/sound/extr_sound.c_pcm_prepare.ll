; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.channel* }
%struct.snd_pcm_runtime = type { i32 }
%struct.channel = type { i64, i64, i32*, %struct.most_channel_config* }
%struct.most_channel_config = type { i64 }

@MOST_CH_TX = common dso_local global i64 0, align 8
@alsa_to_most_memcpy = common dso_local global i32* null, align 8
@alsa_to_most_copy16 = common dso_local global i32* null, align 8
@alsa_to_most_copy24 = common dso_local global i32* null, align 8
@alsa_to_most_copy32 = common dso_local global i32* null, align 8
@most_to_alsa_memcpy = common dso_local global i32* null, align 8
@most_to_alsa_copy16 = common dso_local global i32* null, align 8
@most_to_alsa_copy24 = common dso_local global i32* null, align 8
@most_to_alsa_copy32 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"unsupported format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.channel*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.most_channel_config*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.channel*, %struct.channel** %9, align 8
  store %struct.channel* %10, %struct.channel** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.channel*, %struct.channel** %4, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 3
  %16 = load %struct.most_channel_config*, %struct.most_channel_config** %15, align 8
  store %struct.most_channel_config* %16, %struct.most_channel_config** %6, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_pcm_format_physical_width(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.channel*, %struct.channel** %4, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.most_channel_config*, %struct.most_channel_config** %6, align 8
  %24 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MOST_CH_TX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %1
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @snd_pcm_format_big_endian(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %28
  %38 = load i32*, i32** @alsa_to_most_memcpy, align 8
  %39 = load %struct.channel*, %struct.channel** %4, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  br label %65

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** @alsa_to_most_copy16, align 8
  %46 = load %struct.channel*, %struct.channel** %4, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  br label %64

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 24
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** @alsa_to_most_copy24, align 8
  %53 = load %struct.channel*, %struct.channel** %4, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** @alsa_to_most_copy32, align 8
  %60 = load %struct.channel*, %struct.channel** %4, align 8
  %61 = getelementptr inbounds %struct.channel, %struct.channel* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %37
  br label %104

66:                                               ; preds = %1
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @snd_pcm_format_big_endian(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %66
  %76 = load i32*, i32** @most_to_alsa_memcpy, align 8
  %77 = load %struct.channel*, %struct.channel** %4, align 8
  %78 = getelementptr inbounds %struct.channel, %struct.channel* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  br label %103

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 16
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** @most_to_alsa_copy16, align 8
  %84 = load %struct.channel*, %struct.channel** %4, align 8
  %85 = getelementptr inbounds %struct.channel, %struct.channel* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  br label %102

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 24
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** @most_to_alsa_copy24, align 8
  %91 = load %struct.channel*, %struct.channel** %4, align 8
  %92 = getelementptr inbounds %struct.channel, %struct.channel* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  br label %101

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32*, i32** @most_to_alsa_copy32, align 8
  %98 = load %struct.channel*, %struct.channel** %4, align 8
  %99 = getelementptr inbounds %struct.channel, %struct.channel* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %65
  %105 = load %struct.channel*, %struct.channel** %4, align 8
  %106 = getelementptr inbounds %struct.channel, %struct.channel* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load %struct.channel*, %struct.channel** %4, align 8
  %115 = getelementptr inbounds %struct.channel, %struct.channel* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.channel*, %struct.channel** %4, align 8
  %117 = getelementptr inbounds %struct.channel, %struct.channel* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %109
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i64 @snd_pcm_format_big_endian(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
