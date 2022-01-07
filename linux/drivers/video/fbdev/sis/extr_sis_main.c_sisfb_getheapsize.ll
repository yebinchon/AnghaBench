; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_getheapsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_getheapsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_video_info*)* @sisfb_getheapsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisfb_getheapsize(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  %5 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %6 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %9 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  %12 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %13 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %17 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %1
  %21 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %22 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %20
  %26 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %27 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %32 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 1024
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %40 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 1024
  %43 = sub nsw i32 %38, %42
  %44 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %45 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %37, %30, %25
  %49 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %50 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %53 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %37
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %60 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 1024
  %63 = sub nsw i32 %58, %62
  store i32 %63, i32* %4, align 4
  %64 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %65 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 1024
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %57, %48
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %71 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %74 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  br label %86

75:                                               ; preds = %20, %1
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %78 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %4, align 4
  %81 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %82 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %85 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %75, %68
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
