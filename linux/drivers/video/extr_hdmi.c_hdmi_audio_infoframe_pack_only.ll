; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_pack_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_audio_infoframe_pack_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_audio_infoframe_pack_only(%struct.hdmi_audio_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_audio_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %15 = call i32 @hdmi_audio_infoframe_check_only(%struct.hdmi_audio_infoframe* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %126

20:                                               ; preds = %3
  %21 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %22 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %126

32:                                               ; preds = %20
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memset(i8* %33, i32 0, i64 %34)
  %36 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %37 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %42 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  br label %47

46:                                               ; preds = %32
  store i8 0, i8* %8, align 1
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %49 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %54 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %59 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 0, i32* %65, align 4
  %66 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %9, align 8
  %69 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %70 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 15
  %73 = shl i32 %72, 4
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 7
  %77 = or i32 %73, %76
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %81 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 7
  %84 = shl i32 %83, 2
  %85 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %86 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 3
  %89 = or i32 %84, %88
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %93 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 31
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %99 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %104 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 15
  %107 = shl i32 %106, 3
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %111 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %47
  %115 = call i32 @BIT(i32 7)
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %47
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @hdmi_infoframe_set_checksum(i8* %121, i64 %122)
  %124 = load i64, i64* %10, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %120, %29, %18
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @hdmi_audio_infoframe_check_only(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
