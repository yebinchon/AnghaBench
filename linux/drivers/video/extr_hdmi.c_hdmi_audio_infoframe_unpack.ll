; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AUDIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_AUDIO = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_audio_infoframe*, i8*, i64)* @hdmi_audio_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_infoframe_unpack(%struct.hdmi_audio_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_audio_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @AUDIO, align 4
  %14 = call i64 @HDMI_INFOFRAME_SIZE(i32 %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %113

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HDMI_INFOFRAME_TYPE_AUDIO, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HDMI_AUDIO_INFOFRAME_SIZE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25, %19
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @AUDIO, align 4
  %42 = call i64 @HDMI_INFOFRAME_SIZE(i32 %41)
  %43 = call i64 @hdmi_infoframe_checksum(i8* %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %113

48:                                               ; preds = %39
  %49 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %50 = call i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %113

55:                                               ; preds = %48
  %56 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %65 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  %71 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %72 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 3
  %77 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %78 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 2
  %83 = and i32 %82, 7
  %84 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %85 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 31
  %90 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %91 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %96 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 3
  %101 = and i32 %100, 15
  %102 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %103 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 128
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %112 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %55, %53, %45, %36, %16
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @HDMI_INFOFRAME_SIZE(i32) #1

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i64) #1

declare dso_local i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
