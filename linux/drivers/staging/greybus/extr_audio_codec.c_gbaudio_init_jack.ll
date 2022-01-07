; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_init_jack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbaudio_init_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_codec = type { i32 }

@NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GB %d Headset Jack\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to create new jack\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"GB %d Button Jack\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to create button jack\0A\00", align 1
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@KEY_MEDIA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to set BTN_0\0A\00", align 1
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Failed to set BTN_1\0A\00", align 1
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to set BTN_2\0A\00", align 1
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.snd_soc_codec*)* @gbaudio_init_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_init_jack(%struct.gbaudio_module_info* %0, %struct.snd_soc_codec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbaudio_module_info*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %4, align 8
  store %struct.snd_soc_codec* %1, %struct.snd_soc_codec** %5, align 8
  %7 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %8 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %169

12:                                               ; preds = %2
  %13 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %14 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NAME_SIZE, align 4
  %17 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %18 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %23 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %26 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %29 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %28, i32 0, i32 6
  %30 = call i32 @snd_soc_jack_new(%struct.snd_soc_codec* %21, i32 %24, i32 %27, %struct.TYPE_2__* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %12
  %34 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %35 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %169

39:                                               ; preds = %12
  %40 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %41 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %169

45:                                               ; preds = %39
  %46 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %47 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NAME_SIZE, align 4
  %50 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %51 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snprintf(i32 %48, i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %55 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %56 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %59 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %62 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %61, i32 0, i32 4
  %63 = call i32 @snd_soc_jack_new(%struct.snd_soc_codec* %54, i32 %57, i32 %60, %struct.TYPE_2__* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %45
  %67 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %68 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %169

72:                                               ; preds = %45
  %73 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %74 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SND_JACK_BTN_0, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %81 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SND_JACK_BTN_0, align 4
  %85 = load i32, i32* @KEY_MEDIA, align 4
  %86 = call i32 @snd_jack_set_key(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %91 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %169

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %72
  %97 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %98 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SND_JACK_BTN_1, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %96
  %104 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %105 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SND_JACK_BTN_1, align 4
  %109 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %110 = call i32 @snd_jack_set_key(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %115 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %169

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %96
  %121 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %122 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SND_JACK_BTN_2, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %120
  %128 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %129 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SND_JACK_BTN_2, align 4
  %133 = load i32, i32* @KEY_VOLUMEUP, align 4
  %134 = call i32 @snd_jack_set_key(i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %127
  %138 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %139 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %169

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %120
  %145 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %146 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SND_JACK_BTN_3, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %144
  %152 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %153 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @SND_JACK_BTN_3, align 4
  %157 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %158 = call i32 @snd_jack_set_key(i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %163 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %3, align 4
  br label %169

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %144
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %161, %137, %113, %89, %66, %44, %33, %11
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @snd_soc_jack_new(%struct.snd_soc_codec*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
