; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_reset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_video_info*)* @sisfb_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisfb_reset_mode(%struct.sis_video_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis_video_info*, align 8
  store %struct.sis_video_info* %0, %struct.sis_video_info** %3, align 8
  %4 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %5 = call i64 @sisfb_set_mode(%struct.sis_video_info* %4, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %10 = call i32 @sisfb_set_pitch(%struct.sis_video_info* %9)
  %11 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %12 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %13 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sisfb_set_base_CRT1(%struct.sis_video_info* %11, i32 %14)
  %16 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %17 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %18 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sisfb_set_base_CRT2(%struct.sis_video_info* %16, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %8, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @sisfb_set_mode(%struct.sis_video_info*, i32) #1

declare dso_local i32 @sisfb_set_pitch(%struct.sis_video_info*) #1

declare dso_local i32 @sisfb_set_base_CRT1(%struct.sis_video_info*, i32) #1

declare dso_local i32 @sisfb_set_base_CRT2(%struct.sis_video_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
