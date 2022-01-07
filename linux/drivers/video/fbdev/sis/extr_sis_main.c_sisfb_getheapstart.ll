; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_getheapstart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_getheapstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@SIS_300_VGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_video_info*)* @sisfb_getheapstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisfb_getheapstart(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  %6 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %7 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %8, 1024
  store i32 %9, i32* %3, align 4
  %10 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %11 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %14 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %18 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %22 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SIS_300_VGA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %28 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 16777216
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 12582912, i32* %5, align 4
  br label %40

32:                                               ; preds = %26
  %33 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %34 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 8388608
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 8388608, i32* %5, align 4
  br label %39

38:                                               ; preds = %32
  store i32 4194304, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %31
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %43 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %48 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %55

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 32768
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %65 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %59, %56
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
