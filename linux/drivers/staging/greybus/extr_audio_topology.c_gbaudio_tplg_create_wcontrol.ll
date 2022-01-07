; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_create_wcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_create_wcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.gb_audio_control = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s:%d DAPM control created, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.snd_kcontrol_new*, %struct.gb_audio_control*)* @gbaudio_tplg_create_wcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_tplg_create_wcontrol(%struct.gbaudio_module_info* %0, %struct.snd_kcontrol_new* %1, %struct.gb_audio_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbaudio_module_info*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.gb_audio_control*, align 8
  %8 = alloca i32, align 4
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %5, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %6, align 8
  store %struct.gb_audio_control* %2, %struct.gb_audio_control** %7, align 8
  %9 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %10 = getelementptr inbounds %struct.gb_audio_control, %struct.gb_audio_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %28 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %14 = getelementptr inbounds %struct.gb_audio_control, %struct.gb_audio_control* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %22 [
    i32 129, label %17
  ]

17:                                               ; preds = %12
  %18 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %19 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %20 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %21 = call i32 @gbaudio_tplg_create_enum_ctl(%struct.gbaudio_module_info* %18, %struct.snd_kcontrol_new* %19, %struct.gb_audio_control* %20)
  store i32 %21, i32* %8, align 4
  br label %27

22:                                               ; preds = %12
  %23 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %24 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %25 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %26 = call i32 @gbaudio_tplg_create_mixer_ctl(%struct.gbaudio_module_info* %23, %struct.snd_kcontrol_new* %24, %struct.gb_audio_control* %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22, %17
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %27
  %32 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %33 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %36 = getelementptr inbounds %struct.gb_audio_control, %struct.gb_audio_control* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %39 = getelementptr inbounds %struct.gb_audio_control, %struct.gb_audio_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %31, %28
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @gbaudio_tplg_create_enum_ctl(%struct.gbaudio_module_info*, %struct.snd_kcontrol_new*, %struct.gb_audio_control*) #1

declare dso_local i32 @gbaudio_tplg_create_mixer_ctl(%struct.gbaudio_module_info*, %struct.snd_kcontrol_new*, %struct.gb_audio_control*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
