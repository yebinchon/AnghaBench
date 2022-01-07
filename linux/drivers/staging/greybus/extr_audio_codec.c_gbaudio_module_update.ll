; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_module_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_module_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_codec_info = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { i64, i32, i32 }
%struct.gbaudio_module_info = type { i32 }

@NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s:Module update %s sequence\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@snd_soc_dapm_aif_in = common dso_local global i64 0, align 8
@snd_soc_dapm_aif_out = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"No action required for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Error while parsing dai_id for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gbaudio_module_update(%struct.gbaudio_codec_info* %0, %struct.snd_soc_dapm_widget* %1, %struct.gbaudio_module_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gbaudio_codec_info*, align 8
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  %8 = alloca %struct.gbaudio_module_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.gbaudio_codec_info* %0, %struct.gbaudio_codec_info** %6, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %7, align 8
  store %struct.gbaudio_module_info* %2, %struct.gbaudio_module_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @NAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @NAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %8, align 8
  %24 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %32)
  %34 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @snd_soc_dapm_aif_in, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %4
  %40 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @snd_soc_dapm_aif_out, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %47 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %117

53:                                               ; preds = %39, %4
  %54 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sscanf(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %19, i32* %10, i8* %22)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %62 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %117

70:                                               ; preds = %53
  %71 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %72 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @snd_soc_dapm_aif_in, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %84 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @gbaudio_module_enable_tx(%struct.gbaudio_codec_info* %83, %struct.gbaudio_module_info* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  br label %91

87:                                               ; preds = %79
  %88 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @gbaudio_module_disable_tx(%struct.gbaudio_module_info* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %82
  br label %112

92:                                               ; preds = %70
  %93 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @snd_soc_dapm_aif_out, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %103 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @gbaudio_module_enable_rx(%struct.gbaudio_codec_info* %102, %struct.gbaudio_module_info* %103, i32 %104)
  store i32 %105, i32* %11, align 4
  br label %110

106:                                              ; preds = %98
  %107 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @gbaudio_module_disable_rx(%struct.gbaudio_module_info* %107, i32 %108)
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %101
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %91
  %113 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %114 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %112, %60, %45
  %118 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @sscanf(i32, i8*, i8*, i32*, i8*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @gbaudio_module_enable_tx(%struct.gbaudio_codec_info*, %struct.gbaudio_module_info*, i32) #2

declare dso_local i32 @gbaudio_module_disable_tx(%struct.gbaudio_module_info*, i32) #2

declare dso_local i32 @gbaudio_module_enable_rx(%struct.gbaudio_codec_info*, %struct.gbaudio_module_info*, i32) #2

declare dso_local i32 @gbaudio_module_disable_rx(%struct.gbaudio_module_info*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
