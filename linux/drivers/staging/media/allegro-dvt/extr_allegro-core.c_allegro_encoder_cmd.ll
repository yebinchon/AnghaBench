; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_encoder_cmd = type { i32 }
%struct.allegro_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @allegro_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_encoder_cmd*, align 8
  %8 = alloca %struct.allegro_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.allegro_channel* @fh_to_channel(i8* %10)
  store %struct.allegro_channel* %11, %struct.allegro_channel** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %15 = call i32 @v4l2_m2m_ioctl_try_encoder_cmd(%struct.file* %12, i8* %13, %struct.v4l2_encoder_cmd* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %30 [
    i32 128, label %24
    i32 129, label %27
  ]

24:                                               ; preds = %20
  %25 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %26 = call i32 @allegro_channel_cmd_stop(%struct.allegro_channel* %25)
  store i32 %26, i32* %9, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %29 = call i32 @allegro_channel_cmd_start(%struct.allegro_channel* %28)
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.allegro_channel* @fh_to_channel(i8*) #1

declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(%struct.file*, i8*, %struct.v4l2_encoder_cmd*) #1

declare dso_local i32 @allegro_channel_cmd_stop(%struct.allegro_channel*) #1

declare dso_local i32 @allegro_channel_cmd_start(%struct.allegro_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
