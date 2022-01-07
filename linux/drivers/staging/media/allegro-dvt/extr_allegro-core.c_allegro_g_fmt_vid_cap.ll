; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @allegro_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.allegro_channel*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.allegro_channel* @fh_to_channel(i8* %8)
  store %struct.allegro_channel* %9, %struct.allegro_channel** %7, align 8
  %10 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 9
  store i32 %10, i32* %14, align 4
  %15 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %16 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 8
  store i32 %17, i32* %21, align 8
  %22 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %23 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  store i32 %24, i32* %28, align 4
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  store i32 %31, i32* %35, align 8
  %36 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %37 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  store i32 %38, i32* %42, align 4
  %43 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %44 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 %45, i32* %49, align 8
  %50 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %51 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 %52, i32* %56, align 4
  %57 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %58 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.allegro_channel*, %struct.allegro_channel** %7, align 8
  %69 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  ret i32 0
}

declare dso_local %struct.allegro_channel* @fh_to_channel(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
