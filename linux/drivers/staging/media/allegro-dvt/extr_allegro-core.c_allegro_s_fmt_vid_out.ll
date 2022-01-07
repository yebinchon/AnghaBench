; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_s_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_s_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @allegro_s_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_s_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.allegro_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.allegro_channel* @fh_to_channel(i8* %10)
  store %struct.allegro_channel* %11, %struct.allegro_channel** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = call i32 @allegro_try_fmt_vid_out(%struct.file* %12, i8* %13, %struct.v4l2_format* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %27 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %34 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %41 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %48 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %55 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %62 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %69 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %76 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %78 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %81 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @select_minimum_h264_level(i32 %79, i32 %82)
  %84 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %85 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %87 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %90 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @estimate_stream_size(i32 %88, i32 %91)
  %93 = load %struct.allegro_channel*, %struct.allegro_channel** %8, align 8
  %94 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %20, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.allegro_channel* @fh_to_channel(i8*) #1

declare dso_local i32 @allegro_try_fmt_vid_out(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @select_minimum_h264_level(i32, i32) #1

declare dso_local i32 @estimate_stream_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
