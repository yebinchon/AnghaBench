; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_image = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.intelfb_info = type { i32, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @intelfb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intelfb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.intelfb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = call %struct.intelfb_info* @GET_DINFO(%struct.fb_info* %8)
  store %struct.intelfb_info* %9, %struct.intelfb_info** %5, align 8
  %10 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = call i32 @ACCEL(%struct.intelfb_info* %10, %struct.fb_info* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %16 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %21 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %14, %2
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %27 = call i32 @cfb_imageblit(%struct.fb_info* %25, %struct.fb_image* %26)
  br label %89

28:                                               ; preds = %19
  %29 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %35 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %43 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %46 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  br label %57

50:                                               ; preds = %28
  %51 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %52 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  %54 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %55 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %50, %33
  %58 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %62 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %65 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %68 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %71 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %74 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %77 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @intelfbhw_do_drawglyph(%struct.intelfb_info* %58, i64 %59, i64 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %57
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %88 = call i32 @cfb_imageblit(%struct.fb_info* %86, %struct.fb_image* %87)
  br label %89

89:                                               ; preds = %24, %85, %57
  ret void
}

declare dso_local %struct.intelfb_info* @GET_DINFO(%struct.fb_info*) #1

declare dso_local i32 @ACCEL(%struct.intelfb_info*, %struct.fb_info*) #1

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @intelfbhw_do_drawglyph(%struct.intelfb_info*, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
