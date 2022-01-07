; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.hdmi_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %union.hdmi_infoframe* %0, %union.hdmi_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %52 [
    i32 131, label %22
    i32 130, label %28
    i32 129, label %34
    i32 132, label %40
    i32 128, label %46
  ]

22:                                               ; preds = %18
  %23 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %5, align 8
  %24 = bitcast %union.hdmi_infoframe* %23 to i32*
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @hdmi_avi_infoframe_unpack(i32* %24, i8* %25, i64 %26)
  store i32 %27, i32* %8, align 4
  br label %55

28:                                               ; preds = %18
  %29 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %5, align 8
  %30 = bitcast %union.hdmi_infoframe* %29 to i32*
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @hdmi_drm_infoframe_unpack(i32* %30, i8* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  br label %55

34:                                               ; preds = %18
  %35 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %5, align 8
  %36 = bitcast %union.hdmi_infoframe* %35 to i32*
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @hdmi_spd_infoframe_unpack(i32* %36, i8* %37, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %55

40:                                               ; preds = %18
  %41 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %5, align 8
  %42 = bitcast %union.hdmi_infoframe* %41 to i32*
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @hdmi_audio_infoframe_unpack(i32* %42, i8* %43, i64 %44)
  store i32 %45, i32* %8, align 4
  br label %55

46:                                               ; preds = %18
  %47 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %5, align 8
  %48 = bitcast %union.hdmi_infoframe* %47 to i32*
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @hdmi_vendor_any_infoframe_unpack(i32* %48, i8* %49, i64 %50)
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %18
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46, %40, %34, %28, %22
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @hdmi_avi_infoframe_unpack(i32*, i8*, i64) #1

declare dso_local i32 @hdmi_drm_infoframe_unpack(i32*, i8*, i64) #1

declare dso_local i32 @hdmi_spd_infoframe_unpack(i32*, i8*, i64) #1

declare dso_local i32 @hdmi_audio_infoframe_unpack(i32*, i8*, i64) #1

declare dso_local i32 @hdmi_vendor_any_infoframe_unpack(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
