; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_audio_disconnect_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_audio_disconnect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { %struct.sound_adapter* }
%struct.sound_adapter = type { i32 }
%struct.channel = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"sound_disconnect_channel(), invalid channel %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @audio_disconnect_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_disconnect_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.channel*, align 8
  %7 = alloca %struct.sound_adapter*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %9 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %8, i32 0, i32 0
  %10 = load %struct.sound_adapter*, %struct.sound_adapter** %9, align 8
  store %struct.sound_adapter* %10, %struct.sound_adapter** %7, align 8
  %11 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.channel* @get_channel(%struct.most_interface* %11, i32 %12)
  store %struct.channel* %13, %struct.channel** %6, align 8
  %14 = load %struct.channel*, %struct.channel** %6, align 8
  %15 = icmp ne %struct.channel* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.channel*, %struct.channel** %6, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.channel*, %struct.channel** %6, align 8
  %26 = call i32 @kfree(%struct.channel* %25)
  %27 = load %struct.sound_adapter*, %struct.sound_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.sound_adapter, %struct.sound_adapter* %27, i32 0, i32 0
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.sound_adapter*, %struct.sound_adapter** %7, align 8
  %33 = call i32 @release_adapter(%struct.sound_adapter* %32)
  br label %34

34:                                               ; preds = %31, %21
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.channel* @get_channel(%struct.most_interface*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.channel*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @release_adapter(%struct.sound_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
