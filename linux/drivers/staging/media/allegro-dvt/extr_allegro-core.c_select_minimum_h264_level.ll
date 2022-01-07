; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_select_minimum_h264_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_select_minimum_h264_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MACROBLOCK = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_0 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_1_0 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_1_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_2_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_2_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_3_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_3_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_5_0 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_5_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @select_minimum_h264_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_minimum_h264_level(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SIZE_MACROBLOCK, align 4
  %11 = call i32 @DIV_ROUND_UP(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SIZE_MACROBLOCK, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ule i32 %19, 99
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_1_0, align 4
  store i32 %22, i32* %8, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ule i32 %24, 396
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_1_1, align 4
  store i32 %27, i32* %8, align 4
  br label %72

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp ule i32 %29, 792
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_2_1, align 4
  store i32 %32, i32* %8, align 4
  br label %71

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp ule i32 %34, 1620
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_2_2, align 4
  store i32 %37, i32* %8, align 4
  br label %70

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ule i32 %39, 3600
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_1, align 4
  store i32 %42, i32* %8, align 4
  br label %69

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ule i32 %44, 5120
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_2, align 4
  store i32 %47, i32* %8, align 4
  br label %68

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ule i32 %49, 8192
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  store i32 %52, i32* %8, align 4
  br label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = icmp ule i32 %54, 8704
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_2, align 4
  store i32 %57, i32* %8, align 4
  br label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ule i32 %59, 22080
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_0, align 4
  store i32 %62, i32* %8, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %56
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %36
  br label %71

71:                                               ; preds = %70, %31
  br label %72

72:                                               ; preds = %71, %26
  br label %73

73:                                               ; preds = %72, %21
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
