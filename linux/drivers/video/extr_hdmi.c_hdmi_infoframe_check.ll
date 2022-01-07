; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_infoframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Bad infoframe type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_infoframe_check(%union.hdmi_infoframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.hdmi_infoframe*, align 8
  store %union.hdmi_infoframe* %0, %union.hdmi_infoframe** %3, align 8
  %4 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %5 = bitcast %union.hdmi_infoframe* %4 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %24 [
    i32 130, label %8
    i32 129, label %12
    i32 131, label %16
    i32 128, label %20
  ]

8:                                                ; preds = %1
  %9 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %10 = bitcast %union.hdmi_infoframe* %9 to i32*
  %11 = call i32 @hdmi_avi_infoframe_check(i32* %10)
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %14 = bitcast %union.hdmi_infoframe* %13 to i32*
  %15 = call i32 @hdmi_spd_infoframe_check(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %18 = bitcast %union.hdmi_infoframe* %17 to i32*
  %19 = call i32 @hdmi_audio_infoframe_check(i32* %18)
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %22 = bitcast %union.hdmi_infoframe* %21 to i32*
  %23 = call i32 @hdmi_vendor_any_infoframe_check(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %26 = bitcast %union.hdmi_infoframe* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %20, %16, %12, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @hdmi_avi_infoframe_check(i32*) #1

declare dso_local i32 @hdmi_spd_infoframe_check(i32*) #1

declare dso_local i32 @hdmi_audio_infoframe_check(i32*) #1

declare dso_local i32 @hdmi_vendor_any_infoframe_check(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
